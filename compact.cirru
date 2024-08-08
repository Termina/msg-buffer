
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!) (:version |0.0.1)
    :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |reel.calcit/ |respo-markdown.calcit/
  :entries $ {}
  :files $ {}
    |app.comp.container $ %{} :FileEntry
      :defs $ {}
        |*abort-control $ %{} :CodeEntry (:doc |)
          :code $ quote (defatom *abort-control nil)
        |comp-container $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-container (reel)
              let
                  store $ :store reel
                  states $ :states store
                  cursor $ or (:cursor states) ([])
                  state $ or (:data states)
                    {} (:answer nil) (:loading? false) (:done? false)
                div
                  {} $ :class-name (str-spaced css/preset css/global css/column css/fullscreen css/gap8 style-app-global)
                  div
                    {} $ :class-name (str-spaced css/expand style-message-list)
                    if (:loading? state)
                      div ({}) (<> "\"loading..." css/font-fancy)
                      if
                        not $ blank? (:answer state)
                        div ({})
                          comp-md-block
                            -> (:answer state) (either "\"")
                              .!replace pattern-spaced-code $ str &newline "\"```"
                            {}
                          if (:done? state)
                            div
                              {} $ :class-name css/row-parted
                              span $ {}
                              div
                                {} $ :class-name (str-spaced css/row-middle)
                                comp-copy $ :answer state
                            div
                              {} $ :class-name style-more
                              <> "\"Streaming..." $ str-spaced css/font-fancy
                    =< nil 200
                  comp-message-box (>> states :message-box)
                    fn (text d!) (submit-message! cursor state text d!)
                  when dev? $ comp-reel (>> states :reel) reel ({})
        |comp-message-box $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-message-box (states on-submit)
              let
                  cursor $ :cursor states
                  state $ either (:data states)
                    {} $ :content "\""
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
        |get-gemini-key! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn get-gemini-key! () $ let
                key $ js/localStorage.getItem "\"gemini-key"
              if (blank? key)
                let
                    v $ js/prompt "\"Required gemini-key in localStorage"
                  js/localStorage.setItem "\"gemini-key" v
                  , v
                , key
        |pattern-spaced-code $ %{} :CodeEntry (:doc |)
          :code $ quote
            def pattern-spaced-code $ noted "\"temp fix of nested code block" (&raw-code "\"/\\n\\s+```/g")
        |pick-model $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn pick-model () $ get-env "\"model" "\"gemini-1.5-flash"
        |style-app-global $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-app-global $ {}
                str "\"& ." style-code-block
                {} $ :max-width "\"90vw"
        |style-clear $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-clear $ {}
              "\"&" $ {} (:position :absolute) (:left 20) (:bottom 20) (:opacity 0.4)
        |style-message-box $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-message-box $ {}
              "\"&" $ {} (:position :absolute) (:bottom 0) (:opacity 0.9) (:max-width 1200) (:width "\"100%") (:right "\"50%") (:padding "\"8px") (:margin :auto) (:transition-duration "\"300ms") (:transform "\"translate(50%,0)")
              "\"&:focus-within" $ {} (:opacity 1) (:transform "\"translate(50%,0)")
        |style-message-list $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-message-list $ {}
              "\"&" $ {} (:flex 2) (:padding "\"40px 16px 200px 16px") (:width "\"100%") (:max-width 1200) (:margin :auto) (:overflow :scroll)
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
            defn submit-message! (cursor state prompt-text d!) (hint-fn async)
              if-let
                abort $ deref *abort-control
                do (js/console.warn "\"Aborting prev") (.!abort abort)
              d! cursor $ -> state (assoc :answer nil) (assoc :loading? true)
              let
                  selected $ w-js-log
                    js-await $ get-selected
                  content $ .replace prompt-text "\"{{selected}}" (or selected "\"<未找到内容>")
                  result $ js-await
                    .!post axios
                      str "\"https://sf.chenyong.life/v1beta/models/" (pick-model) "\":streamGenerateContent"
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
                ; d! cursor $ -> state
                  assoc :answer $ w-log answer
                  assoc :loading? false
                apply-args () $ fn () (hint-fn async)
                  let
                      info $ js-await (.!read reader)
                      value $ .-value info
                      done? $ .-done info
                    if done?
                      d! cursor $ -> state (assoc :answer @*text) (assoc :loading? false) (assoc :done? true)
                      let
                          content $ -> (.!slice value 6) (js/JSON.parse) .-candidates .-0 .-content .-parts .-0 .-text
                        swap! *text str content
                        d! cursor $ -> state (assoc :answer @*text) (assoc :loading? false) (assoc :done? false)
                        recur
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.comp.container $ :require (respo-ui.css :as css)
            respo.css :refer $ defstyle
            respo.util.format :refer $ hsl
            respo.core :refer $ defcomp defeffect <> >> div button textarea span input
            respo.comp.space :refer $ =<
            reel.comp.reel :refer $ comp-reel
            app.config :refer $ dev?
            "\"axios" :default axios
            respo-md.comp.md :refer $ comp-md-block style-code-block
            respo-ui.comp :refer $ comp-copy comp-close
            "\"../extension/get-selected" :refer $ get-selected
    |app.config $ %{} :FileEntry
      :defs $ {}
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
              flipped js/setInterval 60000 persist-storage!
              let
                  raw $ js/localStorage.getItem (:storage-key config/site)
                when (some? raw)
                  dispatch! $ :: :hydrate-storage (parse-cirru-edn raw)
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
            app.comp.container :refer $ comp-container
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
                _ $ do (eprintln "\"unknown op:" op) store
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.updater $ :require
            respo.cursor :refer $ update-states
