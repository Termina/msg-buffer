
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!) (:version |0.0.1)
    :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |reel.calcit/ |respo-markdown.calcit/ |alerts.calcit/
  :entries $ {}
  :files $ {}
    |app.comp.container $ %{} :FileEntry
      :defs $ {}
        |*abort-control $ %{} :CodeEntry (:doc |)
          :code $ quote (defatom *abort-control nil)
        |call-anthropic-msg! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn call-anthropic-msg! (cursor state prompt-text d!) (hint-fn async)
              if-let
                abort $ deref *abort-control
                do (js/console.warn "\"Aborting prev") (.!abort abort)
              d! $ :: :states cursor
                -> state (assoc :answer nil) (assoc :loading? true)
              d! $ :: :change-model
              let
                  selected $ js-await (get-selected)
                  content $ .replace prompt-text "\"{{selected}}" (or selected "\"<未找到内容>")
                  result $ js-await
                    .!post axios (str "\"https://sa.chenyong.life/v1/messages")
                      js-object
                        :model $ get-env "\"claude-model" "\"claude-3-5-sonnet-20240620"
                        :max_tokens 1024
                        :stream true
                        :messages $ js-array
                          js-object (:role "\"user") (:content content)
                      js-object
                        :params $ js-object
                        :headers $ js-object (; :Accept "\"text/event-stream") (; :Content-Type "\"application/json")
                          "\"x-api-key" $ get-anthropic-key!
                          "\"anthropic-version" "\"2023-06-01"
                          "\"anthropic-dangerous-direct-browser-access" true
                        :responseType "\"stream"
                        :adapter "\"fetch"
                        :signal $ let
                            abort $ new js/AbortController
                          reset! *abort-control abort
                          .-signal abort
                  stream $ .-data result
                  reader $ ->
                    .!pipeThrough stream $ new js/TextDecoderStream
                    .!getReader
                  *text $ atom (str "\"Claude AI:" &newline &newline)
                  ; reading $ js-await (.!read reader)
                  ; answer $ -> result .-data .-candidates .-0 .-content .-parts .-0 .-text
                ; d! $ :: :states cursor
                  -> state
                    assoc :answer $ w-log answer
                    assoc :loading? false
                apply-args () $ fn () (hint-fn async)
                  let
                      info $ js-await (.!read reader)
                      value $ wo-js-log (.-value info)
                      done? $ .-done info
                    ; js/console.log "\"VALUE" info
                    if (wo-log done?) (:: :unit)
                      do (; println "\"processing")
                        let
                            events $ -> value .split-lines
                              filter $ fn (s) (.starts-with? s "\"data: ")
                              map $ fn (s)
                                -> (.strip-prefix s "\"data: ") js/JSON.parse to-calcit-data
                          apply-args (events)
                            fn (xs)
                              list-match xs
                                () $ ;nil println "\"no thing to handle in this Loop"
                                (x0 xss)
                                  let
                                      stop? $ = (get x0 "\"type") "\"message_stop"
                                    wo-js-log x0
                                    if stop?
                                      d! $ :: :states cursor
                                        -> state (assoc :answer @*text) (assoc :loading? false) (assoc :done? true)
                                      let
                                          content $ get-in x0 ([] "\"delta" "\"text")
                                        if (nil? content)
                                          do
                                            ;nil d! $ :: :states cursor
                                              -> state
                                                assoc :answer $ str @*text &newline "\"[STOPPED: " (.-finishReason candidate0) "\"]"
                                                assoc :loading? false
                                                assoc :done? true
                                            println "\"content is nil"
                                            recur xss
                                          let () (swap! *text str content)
                                            d! $ :: :states cursor
                                              -> state (assoc :answer @*text) (assoc :loading? false) (assoc :done? false)
                                            recur xss
                        recur
        |call-deepinfra-msg! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn call-deepinfra-msg! (cursor state prompt-text d! *text) (hint-fn async)
              if-let
                abort $ deref *abort-control
                do (js/console.warn "\"Aborting prev") (.!abort abort)
              d! $ :: :states cursor
                -> state (assoc :answer nil) (assoc :loading? true)
              let
                  selected $ js-await (get-selected)
                  content $ .replace prompt-text "\"{{selected}}" (or selected "\"<未找到内容>")
                  result $ js-await
                    .!post axios "\"https://api.deepinfra.com/v1/openai/chat/completions"
                      js-object (:model "\"nvidia/Llama-3.1-Nemotron-70B-Instruct") (:stream true)
                        :messages $ js-array
                          js-object (:role "\"user") (:content content)
                      js-object
                        :params $ js-object
                        :headers $ js-object (:Content-Type "\"application/json")
                          :Authorization $ str-spaced "\"Bearer" (get-deepinfra-key!)
                        :responseType "\"stream"
                        :adapter "\"fetch"
                        :signal $ let
                            abort $ new js/AbortController
                          reset! *abort-control abort
                          .-signal abort
                  stream $ .-data result
                  reader $ ->
                    .!pipeThrough stream $ new js/TextDecoderStream
                    .!getReader
                  ; reading $ js-await (.!read reader)
                  ; answer $ -> result .-data .-candidates .-0 .-content .-parts .-0 .-text
                reset! *text $ str "\"Nemotron:" &newline &newline
                ; d! $ :: :states cursor
                  -> state
                    assoc :answer $ w-log answer
                    assoc :loading? false
                apply-args () $ fn () (hint-fn async)
                  let
                      info $ js-await (.!read reader)
                      value $ .-value info
                      done? $ .-done info
                    if done?
                      d! $ :: :states cursor
                        -> state (assoc :answer @*text) (assoc :loading? false) (assoc :done? true)
                      if (.starts-with? value "\": ping") (recur)
                        if
                          or
                            .ends-with? (trim value) "\"[DONE]"
                            nil? content
                          d! $ :: :states cursor
                            -> state (assoc :answer @*text) (assoc :loading? false) (assoc :done? true)
                          let
                              lines $ -> (.split-lines value)
                                filter $ fn (x)
                                  not $ empty? x
                            &doseq (line lines)
                              let
                                  candidate0 $ -> (.!slice line 6) (first-line) (js/JSON.parse) .-choices .-0
                                  content $ or (-> candidate0 .-delta .-content) "\""
                                swap! *text str content
                                d! $ :: :states cursor
                                  -> state (assoc :answer @*text) (assoc :loading? false) (assoc :done? false)
                            recur
        |call-gemini-msg! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn call-gemini-msg! (variant cursor state prompt-text d!) (hint-fn async)
              if-let
                abort $ deref *abort-control
                do (js/console.warn "\"Aborting prev") (.!abort abort)
              d! $ :: :states cursor
                -> state (assoc :answer nil) (assoc :loading? true)
              let
                  selected $ js-await (get-selected)
                  content $ .replace prompt-text "\"{{selected}}" (or selected "\"<未找到内容>")
                  result $ js-await
                    .!post axios
                      str "\"https://sf.chenyong.life/v1beta/models/" (pick-model variant) "\":streamGenerateContent"
                      js-object $ :contents
                        js-array $ js-object
                          :parts $ js-array
                            js-object $ :text content
                      js-object
                        :params $ js-object
                          :key $ get-gemini-key!
                          :alt "\"sse"
                        :headers $ js-object (:Accept "\"text/event-stream") (; :Content-Type "\"application/json")
                        :responseType "\"stream"
                        :adapter "\"fetch"
                        :signal $ let
                            abort $ new js/AbortController
                          reset! *abort-control abort
                          .-signal abort
                  stream $ .-data result
                  reader $ ->
                    .!pipeThrough stream $ new js/TextDecoderStream
                    .!getReader
                  *text $ atom "\""
                  ; reading $ js-await (.!read reader)
                  ; answer $ -> result .-data .-candidates .-0 .-content .-parts .-0 .-text
                ; d! $ :: :states cursor
                  -> state
                    assoc :answer $ w-log answer
                    assoc :loading? false
                apply-args () $ fn () (hint-fn async)
                  let
                      info $ js-await (.!read reader)
                      value $ .-value info
                      done? $ .-done info
                    if done?
                      d! $ :: :states cursor
                        -> state (assoc :answer @*text) (assoc :loading? false) (assoc :done? true)
                      let
                          candidate0 $ -> (.!slice value 6) (.!trim) (first-line) (js/JSON.parse) .-candidates .-0
                          content $ .-content candidate0
                        if (nil? content)
                          d! $ :: :states cursor
                            -> state
                              assoc :answer $ str @*text &newline "\"[STOPPED: " (.-finishReason candidate0) "\"]"
                              assoc :loading? false
                              assoc :done? true
                          let
                              content $ -> candidate0 .-content .-parts .-0 .-text
                            swap! *text str content
                            d! $ :: :states cursor
                              -> state (assoc :answer @*text) (assoc :loading? false) (assoc :done? false)
                            recur
        |comp-container $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-container (reel)
              let
                  store $ :store reel
                  states $ :states store
                  cursor $ or (:cursor states) ([])
                  state $ or (:data states)
                    {} (:answer nil) (:loading? false) (:done? false)
                  model $ either (:model store) :gemini
                  model-plugin $ use-modal-menu (>> states :model)
                    {} (; :title "|Select model")
                      :style $ {} (:width 300)
                      :backdrop-style $ {}
                      ; :card-class style-card
                      ; :backdrop-class style-backdrop
                      ; :confirm-class style-confirm
                      :items $ [] (:: :item :gemini "|Gemini Flash") (:: :item :gemini-pro "|Gemini Pro") (:: :item :claude "\"Claude") (:: :item :deepinfra "\"Deepinfra")
                      :on-result $ fn (result d!)
                        d! cursor $ assoc state :model (nth result 1)
                div
                  {} $ :class-name (str-spaced css/preset css/global css/column css/fullscreen css/gap8 style-app-global)
                  div
                    {} $ :class-name (str-spaced css/expand style-message-area)
                    div
                      {} $ :class-name (str-spaced style-message-list)
                      if (:loading? state)
                        div ({}) (<> "\"loading..." css/font-fancy)
                        if
                          not $ blank? (:answer state)
                          div ({})
                            comp-md-block
                              -> (:answer state) (either "\"")
                                .!replace pattern-spaced-code $ str &newline "\"```"
                              {} $ :class-name style-md-content
                            if (:done? state)
                              div
                                {} $ :class-name css/row-parted
                                span $ {}
                                div
                                  {} $ :class-name (str-spaced css/row-middle css/gap8)
                                  a $ {}
                                    :inner-text $ turn-str
                                      or (:model state) "\"Gemini Flash"
                                    :class-name $ str-spaced style-a-toggler css/font-fancy
                                    :style $ {}
                                      :opacity $ if (= model :anthropic) 1 0.3
                                    :on-click $ fn (e d!)
                                      ; d! $ :: :change-model
                                      .show model-plugin d!
                                  div
                                    {} $ :class-name (str-spaced css/row-middle)
                                    comp-copy $ :answer state
                              div
                                {} $ :class-name style-more
                                <> "\"Streaming..." $ str-spaced css/font-fancy
                      =< nil 200
                  comp-message-box (>> states :message-box)
                    fn (text d!) (submit-message! cursor state text model d!)
                  .render model-plugin
                  if dev? $ comp-reel (>> states :reel) reel ({})
                  if dev? $ comp-inspect "\"Store" store nil
        |comp-message-box $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-message-box (states on-submit)
              let
                  cursor $ :cursor states
                  state $ either (:data states)
                    {} $ :content "\""
                [] (effect-focus)
                  div
                    {} $ :class-name (str-spaced css/center style-message-box)
                    textarea $ {}
                      :value $ :content state
                      :placeholder "\"Content"
                      :id "\"message"
                      :class-name $ str-spaced css/textarea css/font-code! style-textbox
                      :on-input $ fn (e d!)
                        d! cursor $ assoc state :content (:value e)
                      :on-keydown $ fn (e d!)
                        if
                          and
                            = 13 $ :keycode e
                            :meta? e
                          on-submit (:content state) d!
                    button $ {}
                      :class-name $ str-spaced css/button style-submit
                      :inner-text "\"Generate"
                      :on-click $ fn (e d!)
                        ; println $ :content state
                        on-submit (:content state) d!
                    if
                      not $ blank? (:content state)
                      comp-close $ {} (:class-name style-clear)
                        :on-click $ fn (e d!)
                          d! cursor $ assoc state :content "\""
                          -> (js/document.querySelector "\"#message") (.!focus)
        |effect-focus $ %{} :CodeEntry (:doc |)
          :code $ quote
            defeffect effect-focus () (action el at?)
              when (= action :mount)
                .!select $ .!querySelector el "\"textarea"
        |first-line $ %{} :CodeEntry (:doc "|last message from error contains a line starts with \"data: \" and an extra error message. In order that JSON is parsed correctly, only first line is used now.")
          :code $ quote
            defn first-line (tt)
              let
                  lines $ -> tt (.!split &newline)
                    .!filter $ fn (line idx _a)
                      not $ blank? line
                if
                  > (.-length lines) 1
                  js/console.warn "\"Droping some unexpected lines:" $ .!slice lines 1
                .-0 lines
        |get-anthropic-key! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn get-anthropic-key! () $ let
                key $ js/localStorage.getItem "\"claude-key"
              if (blank? key)
                let
                    v $ js/prompt "\"Required claude-key in localStorage"
                  if (blank? v)
                    raise $ new js/Error "\"key is empty"
                  js/localStorage.setItem "\"claude-key" v
                  , v
                , key
        |get-deepinfra-key! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn get-deepinfra-key! () $ let
                key $ js/localStorage.getItem "\"deepinfra-key"
              if (blank? key)
                let
                    v $ js/prompt "\"Required deepinfra-key in localStorage"
                  if (blank? v)
                    raise $ new js/Error "\"key is empty"
                  js/localStorage.setItem "\"deepinfra-key" v
                  , v
                , key
        |get-gemini-key! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn get-gemini-key! () $ let
                key $ js/localStorage.getItem "\"gemini-key"
              if (blank? key)
                let
                    v $ js/prompt "\"Required gemini-key in localStorage"
                  if (blank? v)
                    raise $ new js/Error "\"key is empty"
                  js/localStorage.setItem "\"gemini-key" v
                  , v
                , key
        |pattern-spaced-code $ %{} :CodeEntry (:doc |)
          :code $ quote
            def pattern-spaced-code $ noted "\"temp fix of nested code block" (&raw-code "\"/\\n\\s+```/g")
        |pick-model $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn pick-model (variant)
              if (= variant :pro) "\"gemini-1.5-pro" "\"gemini-2.0-flash-exp"
        |style-a-toggler $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-a-toggler $ {}
              "\"&" $ {} (:cursor :pointer)
        |style-app-global $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-app-global $ {}
                str "\"& ." style-code-block
                {} $ :max-width "\"90vw"
              "\"&" $ {} (:color "\"#999") (:transition-duration "\"300ms")
                :background-color $ hsl 0 0 98
              "\"&:hover" $ {} (:color "\"#777")
                :background-color $ hsl 0 0 100
        |style-clear $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-clear $ {}
              "\"&" $ {} (:position :absolute) (:left 12) (:bottom 12) (:opacity 0.4) (:padding "\"4px 8px") (:display :inline-block) (:height "\"24px")
        |style-md-content $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-md-content $ {}
              "\"& .md-p" $ {} (:margin "\"16px 0") (:line-height "\"1.6")
        |style-message-area $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-message-area $ {}
              "\"&" $ {} (:flex 2) (:overflow :scroll)
        |style-message-box $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-message-box $ {}
              "\"&" $ {} (:position :absolute) (:bottom 0) (:opacity 0.9) (:max-width 1200) (:width "\"100%") (:right "\"50%") (:padding "\"8px") (:margin :auto) (:transition-duration "\"300ms") (:transform "\"translate(50%,0)")
              "\"&:focus-within" $ {} (:opacity 1) (:transform "\"translate(50%,0)")
        |style-message-list $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-message-list $ {}
              "\"&" $ {} (:flex 2) (:padding "\"40px 16px 200px 16px") (:width "\"100%") (:max-width 1200) (:margin :auto) (:position :relative)
        |style-more $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-more $ {}
              "\"&" $ {} (:text-align :center) (:width 80)
                :background-color $ hsl 0 0 94
                :border-radius 12
                :padding "\"4px 8px"
                :margin "\"8px 0"
        |style-submit $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-submit $ {}
              "\"&" $ {} (:position :absolute) (:bottom 20) (:right 20)
        |style-textbox $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-textbox $ {}
              "\"&" $ {} (:border-radius 12) (:height "\"160px") (:width "\"100%") (:transition-duration "\"320ms")
              "\"&:focus-within" $ {} (:height "\"260px")
        |submit-message! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn submit-message! (cursor state prompt-text model d!) (hint-fn async)
              let
                  *text $ atom "\""
                try
                  case-default (:model state)
                    js-await $ call-gemini-msg! :flash cursor state prompt-text d!
                    :gemini-pro $ js-await (call-gemini-msg! :pro cursor state prompt-text d!)
                    :claude $ js-await (call-anthropic-msg! cursor state prompt-text d!)
                    :deepinfra $ js-await (call-deepinfra-msg! cursor state prompt-text d! *text)
                  fn (e)
                    d! cursor $ -> state
                      assoc :answer $ str @*text &newline &newline (str "\"Failed to load: " e)
                      assoc :loading? false
                      assoc :done? true
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.comp.container $ :require (respo-ui.css :as css)
            respo.css :refer $ defstyle
            respo.util.format :refer $ hsl
            respo.core :refer $ defcomp defeffect <> >> div button textarea span input a
            respo.comp.space :refer $ =<
            respo.comp.inspect :refer $ comp-inspect
            reel.comp.reel :refer $ comp-reel
            app.config :refer $ dev? chrome-extension?
            "\"axios" :default axios
            respo-md.comp.md :refer $ comp-md-block style-code-block
            respo-ui.comp :refer $ comp-copy comp-close
            respo-alerts.core :refer $ use-modal-menu
            "\"../extension/get-selected" :refer $ get-selected
    |app.config $ %{} :FileEntry
      :defs $ {}
        |chrome-extension? $ %{} :CodeEntry (:doc |)
          :code $ quote
            def chrome-extension? $ and (some? js/window.chrome) (some? js/window.chrome.runtime) (some? js/window.chrome.runtime.id)
        |dev? $ %{} :CodeEntry (:doc |)
          :code $ quote
            def dev? $ = "\"dev" (get-env "\"mode" "\"release")
        |site $ %{} :CodeEntry (:doc |)
          :code $ quote
            def site $ {} (:storage-key "\"msg-buffer")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote (ns app.config)
    |app.main $ %{} :FileEntry
      :defs $ {}
        |*reel $ %{} :CodeEntry (:doc |)
          :code $ quote
            defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn dispatch! (op)
              when
                and config/dev? $ not= op :states
                js/console.log "\"Dispatch:" op
              reset! *reel $ reel-updater updater @*reel op
        |listen-extension! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn listen-extension! ()
              js/chrome.runtime.onMessage.addListener $ fn (message sender respond!)
                if
                  = "\"menu-trigger" $ .-action message
                  let
                      content $ str "\"你扮演一个专业的工程师, 对以下内容做一下讲解, 用中文, 注意要简略, 内容注意分块.\n\n"  &newline &newline (.-content message)
                      store $ :store @*reel
                      cursor $ []
                      state0 $ get-in store ([] :states :data)
                      model $ either (:model store) :gemini
                    submit-message! cursor state0 content model dispatch!
              js/chrome.runtime.connect $ js-object (:name |mySidepanel)
        |main! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn main! ()
              println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
              if config/dev? $ load-console-formatter!
              render-app!
              add-watch *reel :changes $ fn (reel prev) (render-app!)
              listen-devtools! |k dispatch!
              js/window.addEventListener |beforeunload $ fn (event) (persist-storage!)
              js/window.addEventListener |visibilitychange $ fn (event)
                if (= "\"hidden" js/document.visibilityState) (persist-storage!)
              ; flipped js/setInterval 60000 persist-storage!
              let
                  raw $ js/localStorage.getItem (:storage-key config/site)
                when (some? raw)
                  dispatch! $ :: :hydrate-storage (parse-cirru-edn raw)
              if config/chrome-extension? $ listen-extension!
              println "|App started."
        |mount-target $ %{} :CodeEntry (:doc |)
          :code $ quote
            def mount-target $ js/document.querySelector |.app
        |persist-storage! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn persist-storage! ()
              println "\"Saved at" $ .!toISOString (new js/Date)
              js/localStorage.setItem (:storage-key config/site)
                format-cirru-edn $ :store @*reel
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn reload! () $ if (nil? build-errors)
              do (remove-watch *reel :changes) (clear-cache!)
                add-watch *reel :changes $ fn (reel prev) (render-app!)
                reset! *reel $ refresh-reel @*reel schema/store updater
                hud! "\"ok~" "\"Ok"
              hud! "\"error" build-errors
        |render-app! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn render-app! () $ render! mount-target (comp-container @*reel) dispatch!
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.main $ :require
            respo.core :refer $ render! clear-cache!
            app.comp.container :refer $ comp-container submit-message!
            app.updater :refer $ updater
            app.schema :as schema
            reel.util :refer $ listen-devtools!
            reel.core :refer $ reel-updater refresh-reel
            reel.schema :as reel-schema
            app.config :as config
            "\"./calcit.build-errors" :default build-errors
            "\"bottom-tip" :default hud!
    |app.schema $ %{} :FileEntry
      :defs $ {}
        |store $ %{} :CodeEntry (:doc |)
          :code $ quote
            def store $ {}
              :states $ {}
                :cursor $ []
              :model nil
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote (ns app.schema)
    |app.updater $ %{} :FileEntry
      :defs $ {}
        |updater $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn updater (store op op-id op-time)
              tag-match op
                  :states cursor s
                  update-states store cursor s
                (:hydrate-storage data) data
                (:change-model)
                  if
                    = (:model store) :anthropic
                    assoc store :model :gemini
                    assoc store :model :anthropic
                _ $ do (eprintln "\"unknown op:" op) store
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.updater $ :require
            respo.cursor :refer $ update-states
