
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!) (:version |0.0.1)
    :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |reel.calcit/ |respo-markdown.calcit/ |alerts.calcit/
  :entries $ {}
  :files $ {}
    |app.comp.container $ %{} :FileEntry
      :defs $ {}
        |*abort-control $ %{} :CodeEntry (:doc |)
          :code $ quote (defatom *abort-control nil)
        |*gen-ai $ %{} :CodeEntry (:doc |)
          :code $ quote (defatom *gen-ai nil)
        |*gen-ai-new $ %{} :CodeEntry (:doc |)
          :code $ quote (defatom *gen-ai-new nil)
        |*openai $ %{} :CodeEntry (:doc "|called openai sdk, but actually for openrouter")
          :code $ quote (defatom *openai nil)
        |call-anthropic-msg! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn call-anthropic-msg! (cursor state prompt-text model thinking? d!) (hint-fn async)
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
                        :model $ get-env "\"claude-model" (or model "\"claude-3-5-sonnet-latest")
                        :max_tokens 1024
                        :stream true
                        :thinking $ if thinking?
                          js-object (:type "\"enabled") (:budget_tokens 2000)
                          , js/undefined
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
        |call-gemini-msg! $ %{} :CodeEntry (:doc "|switching to Google's generative-ai-js sdk")
          :code $ quote
            defn call-gemini-msg! (variant cursor state prompt-text d!) (hint-fn async)
              if (nil? @*gen-ai)
                reset! *gen-ai $ new GoogleGenerativeAI (get-gemini-key!) 
              if-let
                abort $ deref *abort-control
                do (js/console.warn "\"Aborting prev") (.!abort abort)
              d! $ :: :states cursor
                -> state (assoc :answer nil) (assoc :loading? true)
              let
                  selected $ js-await (get-selected)
                  gen-ai $ let
                      ai @*gen-ai
                    js/console.log ai
                    , ai
                  model-instance $ .!getGenerativeModel gen-ai
                    js-object $ :model (pick-model variant)
                    js-object (:baseUrl "\"https://sf.chenyong.life")
                      :signal $ let
                          abort $ new js/AbortController
                        reset! *abort-control abort
                        .-signal abort
                  content $ .!replace prompt-text "\"{{selected}}" (or selected "\"<未找到选中内容>")
                  json? $ or (.!includes prompt-text "\"{{json}}") (.!includes prompt-text "\"{{JSON}}")
                  sdk-result $ js-await
                    .!generateContentStream model-instance $ js-object
                      :contents $ js-array
                        js-object (:role "\"user")
                          :parts $ js-array
                            js-object $ :text content
                      :generationConfig $ if json?
                        js-object $ "\"responseMimeType" "\"application/json"
                        , js/undefined
                  *text $ atom "\""
                js-await $ for-await-stream (.-stream sdk-result)
                  fn (? chunk)
                    if (some? chunk)
                      do
                        swap! *text str $ .!text chunk
                        d! $ :: :states cursor
                          -> state (assoc :answer @*text) (assoc :loading? false) (assoc :done? false)
                    d! $ :: :states cursor
                      -> state (assoc :answer @*text) (assoc :loading? false) (assoc :done? false)
                d! $ :: :states cursor
                  -> state (assoc :answer @*text) (assoc :loading? false) (assoc :done? true)
        |call-genai-msg! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn call-genai-msg! (variant cursor state prompt-text d!) (hint-fn async)
              if (nil? @*gen-ai-new)
                reset! *gen-ai-new $ new GoogleGenAI
                  js-object $ :apiKey (get-gemini-key!)
              if-let
                abort $ deref *abort-control
                do (js/console.warn "\"Aborting prev") (.!abort abort)
              d! $ :: :states cursor
                -> state (assoc :answer nil) (assoc :loading? true)
              let
                  selected $ js-await (get-selected)
                  gen-ai $ let
                      ai @*gen-ai-new
                    ; js/console.log ai
                    , ai
                  content $ .!replace prompt-text "\"{{selected}}" (or selected "\"<未找到选中内容>")
                  json? $ or (.!includes prompt-text "\"{{json}}") (.!includes prompt-text "\"{{JSON}}")
                  think? $ or (.!includes prompt-text "\"{{think}}") (.!includes prompt-text "\"{{THINK}}")
                  sdk-result $ js-await
                    .!generateContentStream (.-models gen-ai)
                      js-object
                        :model $ pick-model variant
                        :contents $ js-array
                          js-object (:role "\"user")
                            :parts $ js-array
                              js-object $ :text content
                        :config $ js/Object.assign
                          js-object
                            :thinkingConfig $ js-object
                              :thinkingBudget $ if think? 2000 0
                              :includeThoughts think?
                            :httpOptions $ js-object (:baseUrl "\"https://sf.chenyong.life")
                              :signal $ let
                                  abort $ new js/AbortController
                                reset! *abort-control abort
                                .-signal abort
                            :abortSignal $ let
                                abort $ new js/AbortController
                              reset! *abort-control abort
                              .-signal abort
                          if json?
                            js-object $ "\"responseMimeType" "\"application/json"
                            , js/undefined
                  *text $ atom "\""
                js-await $ for-await-stream sdk-result
                  fn (? chunk)
                    if (some? chunk)
                      do
                        swap! *text str $ .-text chunk
                        d! $ :: :states cursor
                          -> state (assoc :answer @*text) (assoc :loading? false) (assoc :done? false)
                    d! $ :: :states cursor
                      -> state (assoc :answer @*text) (assoc :loading? false) (assoc :done? false)
                d! $ :: :states cursor
                  -> state (assoc :answer @*text) (assoc :loading? false) (assoc :done? true)
        |call-imagin-msg! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn call-imagin-msg! (variant cursor state prompt-text d!) (hint-fn async)
              if (nil? @*gen-ai-new)
                reset! *gen-ai-new $ new GoogleGenAI
                  js-object $ :apiKey (get-gemini-key!)
              if-let
                target $ js/document.querySelector "\".show-image"
                .!setAttribute target "\"src" "\""
              if-let
                abort $ deref *abort-control
                do (js/console.warn "\"Aborting prev") (.!abort abort)
              d! $ :: :states cursor
                -> state (assoc :answer nil) (assoc :loading? true)
              let
                  selected $ js-await (get-selected)
                  gen-ai $ let
                      ai @*gen-ai-new
                    js/console.log ai
                    , ai
                  content $ .!replace prompt-text "\"{{selected}}" (or selected "\"<未找到选中内容>")
                  sdk-result $ js-await
                    .!generateContent (.-models gen-ai)
                      js-object (:model "\"gemini-2.0-flash-exp-image-generation") (:contents content)
                        :config $ js-object
                          :httpOptions $ js-object (:baseUrl "\"https://sf.chenyong.life")
                          :signal $ let
                              abort $ new js/AbortController
                            reset! *abort-control abort
                            .-signal abort
                          :responseModalities $ js-array (.-TEXT Modality) (.-IMAGE Modality)
                  *text $ atom "\""
                js-await $ -> sdk-result .-candidates .-0 .-content .-parts
                  .!forEach $ fn (? chunk _a _b)
                    if (some? chunk)
                      if-let
                        text $ .-text chunk
                        do (swap! *text str text)
                          d! $ :: :states cursor
                            -> state (assoc :answer @*text) (assoc :loading? false) (assoc :done? false)
                        if-let
                          image-data $ .-inlineData chunk
                          let
                              image-blob $ base64ToBlob (.-data image-data)
                              url $ js/URL.createObjectURL image-blob
                              target $ js/document.querySelector "\".show-image"
                            -> target $ .!setAttribute "\"src" url
                            ; js/URL.revokeObjectURL url
                            do (swap! *text str "\"(image ready)")
                              d! $ :: :states cursor
                                -> state (assoc :answer @*text) (assoc :loading? false) (assoc :done? false)
                    d! $ :: :states cursor
                      -> state (assoc :answer @*text) (assoc :loading? false) (assoc :done? false)
                d! $ :: :states cursor
                  -> state (assoc :answer @*text) (assoc :loading? false) (assoc :done? true)
        |call-openrouter! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn call-openrouter! (cursor state prompt-text variant thinking? d!) (hint-fn async)
              if (nil? @*openai)
                reset! *openai $ new OpenAI
                  js-object (:baseURL "\"https://openrouter.ai/api/v1")
                    :apiKey $ get-openrouter-key!
                    :defaultHeaders $ js-object
                    :dangerouslyAllowBrowser true
              if-let
                abort $ deref *abort-control
                do (js/console.warn "\"Aborting prev") (.!abort abort)
              d! $ :: :states cursor
                -> state (assoc :answer nil) (assoc :loading? true)
              let
                  selected $ js-await (get-selected)
                  openai $ let
                      ai @*openai
                    ; js/console.log ai
                    , ai
                  content $ .!replace prompt-text "\"{{selected}}" (or selected "\"<未找到选中内容>")
                  json? $ or (.!includes prompt-text "\"{{json}}") (.!includes prompt-text "\"{{JSON}}")
                  sdk-result $ js-await
                    -> openai .-chat .-completions $ .!create
                      js-object (:model variant)
                        :messages $ js-array
                          js-object (:role "\"user") (:content content)
                        ; :generationConfig $ if json?
                          js-object $ "\"responseMimeType" "\"application/json"
                          , js/undefined
                        :stream true
                        :headers $ js-object (:HTTP-Referer js/location.host)
                      js-object $ :signal
                        let
                            abort $ new js/AbortController
                          reset! *abort-control abort
                          .-signal abort
                  *text $ atom "\""
                js-await $ js-for-await sdk-result
                  fn (? chunk) (; js/console.log "\"[CHUNK]" chunk)
                    if (some? chunk)
                      do
                        swap! *text str $ -> chunk .-choices .-0 .-delta .-content (or "\"")
                        d! $ :: :states cursor
                          -> state (assoc :answer @*text) (assoc :loading? false) (assoc :done? false)
                    d! $ :: :states cursor
                      -> state (assoc :answer @*text) (assoc :loading? false) (assoc :done? false)
                d! $ :: :states cursor
                  -> state (assoc :answer @*text) (assoc :loading? false) (assoc :done? true)
        |comp-abort $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn comp-abort (t)
              span
                {}
                  :class-name $ str-spaced css/font-fancy css/row-middle style-more
                  :style $ {} (:cursor :pointer)
                  :on-click $ fn (e d!)
                    if-let
                      abort $ deref *abort-control
                      do (js/console.warn "\"Aborting prev") (.!abort abort)
                <> t
                =< 8 nil
                <> "\"✕" style-abort-close
        |comp-container $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-container (reel)
              let
                  store $ :store reel
                  states $ :states store
                  cursor $ or (:cursor states) ([])
                  state $ or (:data states)
                    {} (:answer nil) (:loading? false) (:done? false)
                  model $ either (:model state) :gemini
                  model-plugin $ use-modal-menu (>> states :model)
                    {} (; :title "|Select model")
                      :style $ {} (:width 300)
                      :backdrop-style $ {}
                      ; :card-class style-card
                      ; :backdrop-class style-backdrop
                      ; :confirm-class style-confirm
                      :items $ [] (:: :item :gemini-flash "|Gemini Flash") (:: :item :gemini-flash-lite "|Gemini Flash Lite") (:: :item :gemini-pro "|Gemini Pro") (:: :item :gemini-pro-1.5 "|Gemini Pro 1.5") (:: :item :imagin-3 "\"Imagin 3") (:: :item :gemini-flash-thinking "|Gemini Flash thinking") (:: :item :gemini-thinking "|Gemini thinking") (:: :item :gemini-learnlm "|Gemini LearnLM") (:: :item :gemma "|Gemma 3 27b") (:: :item :openrouter/anthropic/claude-3.7-sonnet "\"Openrouter Claude 3.7 Sonnet") (:: :item :openrouter/anthropic/claude-3.7-sonnet:thinking "\"Openrouter Claude 3.7 Sonnet Thinking") (:: :item :openrouter/openai/gpt-4o "\"Openrouter GPT 4o") (:: :item :openrouter/deepseek/deepseek-chat-v3-0324:free "\"Openrouter deepseek/deepseek-chat-v3-0324:free") (:: :item :claude "\"Claude 3.5") (:: :item :claude-3.7 "\"Claude 3.7") (:: :item :claude-3.7-thinking "\"Claude 3.7 Thinking") (:: :item :deepinfra "\"Deepinfra")
                      :on-result $ fn (result d!)
                        d! cursor $ assoc state :model (nth result 1)
                div
                  {} $ :class-name (str-spaced css/preset css/global css/column css/fullscreen css/gap8 style-app-global)
                  div
                    {} $ :class-name (str-spaced css/expand style-message-area)
                    div
                      {} $ :class-name (str-spaced style-message-list)
                      if (= :imagin-3 model)
                        img $ {}
                          :class-name $ str-spaced style-image "\"show-image"
                      if (:loading? state)
                        div ({})
                          memof1-call-by :abort-loading comp-abort $ str (turn-str model) "\" loading..."
                        if
                          not $ blank? (:answer state)
                          div ({})
                            if
                              json-pattern? $ :answer state
                              pre $ {} (:class-name style-code-content)
                                :inner-text $ :answer state
                              memof1-call comp-md-block
                                -> (:answer state) (either "\"")
                                  .!replace pattern-spaced-code $ str &newline "\"```"
                                {} $ :class-name style-md-content
                            div
                              {} $ :class-name css/row-parted
                              div
                                {} $ :class-name (str-spaced css/row-middle css/gap8)
                                if (:done? state)
                                  a $ {}
                                    :inner-text $ turn-str model
                                    :class-name $ str-spaced style-a-toggler css/font-fancy
                                    :style $ {}
                                      :opacity $ if (= model :anthropic) 1 0.3
                                    :on-click $ fn (e d!)
                                      ; d! $ :: :change-model
                                      .show model-plugin d!
                                  div ({})
                                    memof1-call-by :abort-streaming comp-abort $ str (turn-str model) "\" streaming..."
                              if (:done? state)
                                div
                                  {} $ :class-name (str-spaced css/row-middle)
                                  comp-copy $ :answer state
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
                            or (:meta? e) (:ctrl? e)
                          on-submit (:content state) d!
                      :on-focus $ fn (e d!)
                        let
                            target $ .-target (:event e)
                            class-list $ .-classList target
                          if
                            not $ .!contains class-list "\"focus-within"
                            .!add class-list "\"focus-within"
                      :on-blur $ fn (e d!)
                        let
                            target $ .-target (:event e)
                            class-list $ .-classList target
                          if (.!contains class-list "\"focus-within") (.!remove class-list "\"focus-within")
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
                js/setTimeout $ fn ()
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
        |for-await-stream $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn for-await-stream (stream f) (hint-fn async) (&raw-code "\"for await (let item of stream) {\n  f(item)\n}\n\nreturn undefined")
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
        |get-openrouter-key! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn get-openrouter-key! () $ let
                key $ js/localStorage.getItem "\"openrouter-key"
              if (blank? key)
                let
                    v $ js/prompt "\"Required openrouter-key in localStorage"
                  if (blank? v)
                    raise $ new js/Error "\"key is empty"
                  js/localStorage.setItem "\"openrouter-key" v
                  , v
                , key
        |json-pattern? $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn json-pattern? (text)
              or (.!startsWith text "\"{") (.!startsWith text "\"[")
        |pattern-spaced-code $ %{} :CodeEntry (:doc |)
          :code $ quote
            def pattern-spaced-code $ noted "\"temp fix of nested code block" (&raw-code "\"/\\n\\s+```/g")
        |pick-model $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn pick-model (variant)
              case-default variant "\"gemini-2.5-flash-preview-04-17" (:gemini-thinking "\"gemini-2.0-flash-thinking-exp-1219") (:gemini-pro "\"gemini-2.5-pro-exp-03-25") (:gemini-pro-1.5 "\"gemini-1.5-pro") (:gemini-flash-lite "\"gemini-2.0-flash-lite-preview-02-05") (:gemini-learnlm "\"learnlm-1.5-pro-experimental") (:gemini-flash-thinking "\"gemini-2.0-flash-thinking-exp-01-21") (:gemma "\"gemma-3-27b-it")
        |style-a-toggler $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-a-toggler $ {}
              "\"&" $ {} (:cursor :pointer)
        |style-abort-close $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-abort-close $ {}
              "\"&" $ {} (:vertical-align :top) (:font-size 10)
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
        |style-code-content $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-code-content $ {}
              "\"&" $ {} (:line-height "\"1.5") (:font-size 13)
        |style-image $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-image $ {}
              "\"&" $ {} (:max-width "\"100%") (:border-radius "\"6px")
                :border $ str "\"1px solid " (hsl 0 0 90)
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
              "\"&" $ {} (:position :absolute) (:bottom 0) (:opacity 0.9) (:max-width 1200) (:width "\"100%") (:right "\"50%") (:padding "\"8px") (:margin :auto) (:transition-duration "\"300ms") (:transform "\"translate(50%,0)") (:transform-properties "\"height")
              "\"&:focus-within" $ {} (:opacity 1) (:transform "\"translate(50%,0)")
        |style-message-list $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-message-list $ {}
              "\"&" $ {} (:flex 2) (:padding "\"40px 16px 20vh 16px") (:width "\"100%") (:max-width 1200) (:margin :auto) (:position :relative)
        |style-more $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-more $ {}
              "\"&" $ {} (:text-align :center) (:min-width 80)
                :background-color $ hsl 0 0 94
                :border-radius 16
                :padding "\"4px 12px"
                :margin "\"8px 0"
                :white-space :nowrap
                :display :inline-flex
              "\"&:hover" $ {}
                :box-shadow $ str "\"1px 1px 4px " (hsl 0 0 0 0.2)
        |style-submit $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-submit $ {}
              "\"&" $ {} (:position :absolute) (:bottom 20) (:right 20)
        |style-textbox $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-textbox $ {}
              "\"&" $ {} (:border-radius 12) (:height "\"max(160px,20vh)") (:width "\"100%") (:transition-duration "\"320ms")
              "\"&.focus-within" $ {} (:height "\"max(240px,32vh)")
        |submit-message! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn submit-message! (cursor state prompt-text model d!) (hint-fn async)
              let
                  *text $ atom "\""
                  model $ :model state
                try
                  case-default model
                    js-await $ call-genai-msg! model cursor state prompt-text d!
                    :gemini-pro $ js-await (call-genai-msg! model cursor state prompt-text d!)
                    :gemini-1.5-pro $ js-await (call-genai-msg! model cursor state prompt-text d!)
                    :imagin-3 $ js-await (call-imagin-msg! model cursor state prompt-text d!)
                    :gemini-thinking $ js-await (call-genai-msg! model cursor state prompt-text d!)
                    :gemini-flash-thinking $ js-await (call-genai-msg! model cursor state prompt-text d!)
                    :gemini-flash-lite $ js-await (call-genai-msg! model cursor state prompt-text d!)
                    :gemini-flash $ js-await (call-genai-msg! model cursor state prompt-text d!)
                    :gemini-learnlm $ js-await (call-genai-msg! model cursor state prompt-text d!)
                    :claude $ js-await (call-anthropic-msg! cursor state prompt-text "\"claude-3-5-sonnet-20241022" false d!)
                    :claude-3.7 $ js-await (call-anthropic-msg! cursor state prompt-text "\"claude-3-7-sonnet-20250219" false d!)
                    :claude-3.7-thinking $ js-await (call-anthropic-msg! cursor state prompt-text "\"claude-3-7-sonnet-20250219" true d!)
                    :deepinfra $ js-await (call-deepinfra-msg! cursor state prompt-text d! *text)
                    :openrouter/anthropic/claude-3.7-sonnet $ js-await (call-openrouter! cursor state prompt-text "\"anthropic/claude-3.7-sonnet" true d!)
                    :openrouter/anthropic/claude-3.7-sonnet:thinking $ js-await (call-openrouter! cursor state prompt-text "\"anthropic/claude-3.7-sonnet:thinking" true d!)
                    :openrouter/openai/gpt-4o $ js-await (call-openrouter! cursor state prompt-text "\"openai/gpt-4o" true d!)
                    :openrouter/deepseek/deepseek-chat-v3-0324:free $ js-await (call-openrouter! cursor state prompt-text "\"deepseek/deepseek-chat-v3-0324:free" true d!)
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
            respo.core :refer $ defcomp defeffect <> >> div button textarea span input a pre img
            respo.comp.space :refer $ =<
            respo.comp.inspect :refer $ comp-inspect
            reel.comp.reel :refer $ comp-reel
            app.config :refer $ dev? chrome-extension?
            "\"axios" :default axios
            respo-md.comp.md :refer $ comp-md-block style-code-block
            respo-ui.comp :refer $ comp-copy comp-close
            respo-alerts.core :refer $ use-modal-menu
            "\"../extension/get-selected" :refer $ get-selected
            ; "\"@google/generative-ai" :refer $ GoogleGenerativeAI
            memof.once :refer $ memof1-call memof1-call-by
            "\"@google/genai" :refer $ GoogleGenAI Modality
            "\"../lib/image" :refer $ base64ToBlob
            "\"openai" :default OpenAI
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
