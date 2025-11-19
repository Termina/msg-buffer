
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!) (:version |0.0.1)
    :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |reel.calcit/ |respo-markdown.calcit/ |alerts.calcit/
  :entries $ {}
  :files $ {}
    |app.comp.container $ %{} :FileEntry
      :defs $ {}
        |*abort-control $ %{} :CodeEntry (:doc |)
          :code $ quote (defatom *abort-control nil)
          :examples $ []
        |*gen-ai-new $ %{} :CodeEntry (:doc |)
          :code $ quote (defatom *gen-ai-new nil)
          :examples $ []
        |*image-cache $ %{} :CodeEntry (:doc |)
          :code $ quote (defatom *image-cache nil)
          :examples $ []
        |*openai $ %{} :CodeEntry (:doc "|called openai sdk, but actually for openrouter")
          :code $ quote (defatom *openai nil)
          :examples $ []
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
          :examples $ []
        |call-flash-imagen-msg! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn call-flash-imagen-msg! (variant cursor state prompt-text d!) (hint-fn async)
              if (nil? @*gen-ai-new)
                reset! *gen-ai-new $ new GoogleGenAI
                  js-object $ :apiKey (get-gemini-key!)
              if-let
                target $ js/document.querySelector "\".show-image"
                .!setAttribute target "\"src" "\""
              if-let
                abort $ deref *abort-control
                do (js/console.warn "\"Aborting prev") (.!abort abort)
              clear-image-cache!
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
                      js-object (:model "\"gemini-2.5-flash-image") (:contents content)
                        :config $ js-object
                          :httpOptions $ js-object (:baseUrl "\"https://ja.chenyong.life")
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
                            reset! *image-cache url
                            do (swap! *text str "\"(image ready)")
                              d! $ :: :states cursor
                                -> state (assoc :answer @*text) (assoc :loading? false) (assoc :done? false)
                    d! $ :: :states cursor
                      -> state (assoc :answer @*text) (assoc :loading? false) (assoc :done? false)
                d! $ :: :states cursor
                  -> state (assoc :answer @*text) (assoc :loading? false) (assoc :done? true)
          :examples $ []
        |call-genai-msg! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn call-genai-msg! (variant cursor state prompt-text search? think? d! *text) (hint-fn async)
              if (nil? @*gen-ai-new)
                reset! *gen-ai-new $ new GoogleGenAI
                  js-object $ :apiKey (get-gemini-key!)
              if-let
                abort $ deref *abort-control
                do (js/console.warn "\"Aborting prev") (.!abort abort)
              js/setTimeout $ fn ()
                d! $ :: :states-merge cursor state
                  {} (:answer nil) (:loading? true)
              let
                  selected $ if (.includes? prompt-text "\"{{selected}}")
                    js-await $ get-selected
                  gen-ai $ let
                      ai @*gen-ai-new
                    ; js/console.log ai
                    , ai
                  model $ pick-model variant
                  content $ .!replace prompt-text "\"{{selected}}" (or selected "\"<未找到选中内容>")
                  json? $ or (.!includes prompt-text "\"{{json}}") (.!includes prompt-text "\"{{JSON}}")
                  pro? $ .!includes model "\"pro"
                  has-url? $ or (.!includes prompt-text "\"http://") (.!includes prompt-text "\"https://")
                  sdk-result $ js-await
                    .!generateContentStream (.-models gen-ai)
                      js-object (:model model)
                        :contents $ js-array
                          js-object (:role "\"user")
                            :parts $ js-array
                              js-object $ :text content
                        :config $ js/Object.assign
                          js-object
                            :thinkingConfig $ if think?
                              js-object
                                :thinkingBudget $ get-env "\"think-budget" (if pro? 3200 800)
                                :includeThoughts think?
                              js-object (:thinkingBudget 0) (:includeThoughts false)
                            :httpOptions $ js-object
                              :baseUrl $ get-env "\"gemini-host" "\"https://ja.chenyong.life"
                            :tools $ let
                                t $ ->
                                  js-array
                                    if search? $ js-object
                                      :googleSearch $ js-object
                                    if has-url? $ js-object
                                      :urlContext $ js-object
                                  .!filter $ fn (x & _a) x
                              if
                                = 0 $ .-length t
                                , js/undefined t
                            :abortSignal $ let
                                abort $ new js/AbortController
                              reset! *abort-control abort
                              .-signal abort
                          if json?
                            js-object $ "\"responseMimeType" "\"application/json"
                            , js/undefined
                js-await $ js-for-await sdk-result
                  fn (? chunk)
                    if (some? chunk)
                      do
                        swap! *text str $ let
                            t $ either (.-text chunk) js/chunk.candidates?.[0]?.content?.parts?.[0]?.text
                          if (nil? t) (js/console.warn "\"empty text in:" chunk)
                          or t (-> chunk .?-promptFeedback .?-blockReason) "\"__BLANK__"
                        d! $ :: :states-merge cursor state
                          {} (:answer @*text) (:loading? false) (:done? false)
                    d! $ :: :states-merge cursor state
                      {} (:answer @*text) (:loading? false) (:done? false)
                d! $ :: :states-merge cursor state
                  {} (:answer @*text) (:loading? false) (:done? true)
          :examples $ []
        |call-imagen-4-msg! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn call-imagen-4-msg! (variant cursor state prompt-text d!) (hint-fn async)
              if (nil? @*gen-ai-new)
                reset! *gen-ai-new $ new GoogleGenAI
                  js-object $ :apiKey (get-gemini-key!)
              if-let
                target $ js/document.querySelector "\".show-image"
                .!removeAttribute target "\"src"
              if-let
                abort $ deref *abort-control
                do (js/console.warn "\"Aborting prev") (.!abort abort)
              clear-image-cache!
              d! $ :: :states cursor
                -> state (assoc :answer nil) (assoc :loading? true)
              let
                  selected $ js-await (get-selected)
                  gen-ai $ let
                      ai @*gen-ai-new
                    , ai
                  response $ js-await
                    .!generateImages (.-models gen-ai)
                      js-object (:model "\"imagen-4.0-generate-001") (:prompt prompt-text)
                        :config $ js-object (:numberOfImages 1) (:includeRaiReason true)
                          :httpOptions $ js-object (:baseUrl "\"https://ja.chenyong.life")
                          :signal $ let
                              abort $ new js/AbortController
                            reset! *abort-control abort
                            .-signal abort
                  *text $ atom "\""
                if-let
                  image-data $ -> response .-generatedImages .-0 .-image .-imageBytes
                  let
                      image-blob $ base64ToBlob image-data
                      url $ js/URL.createObjectURL image-blob
                      target $ js/document.querySelector "\".show-image"
                    reset! *image-cache url
                    -> target $ .!setAttribute "\"src" url
                    do (swap! *text str "\"(image ready)")
                      d! $ :: :states cursor
                        -> state (assoc :answer @*text) (assoc :loading? false) (assoc :done? false)
                d! $ :: :states cursor
                  -> state (assoc :answer @*text) (assoc :loading? false) (assoc :done? true)
          :examples $ []
        |call-openrouter! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn call-openrouter! (cursor state prompt-text variant thinking? d! *text) (hint-fn async)
              if (nil? @*openai)
                reset! *openai $ new OpenAI
                  js-object (:baseURL "\"https://openrouter.ai/api/v1")
                    :apiKey $ get-openrouter-key!
                    :defaultHeaders $ js-object
                    :dangerouslyAllowBrowser true
              if-let
                abort $ deref *abort-control
                do (js/console.warn "\"Aborting prev") (.!abort abort)
              js/setTimeout $ fn ()
                d! $ :: :states-merge cursor state
                  {} (:answer nil) (:loading? true)
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
                js-await $ js-for-await sdk-result
                  fn (? chunk) (; js/console.log "\"[CHUNK]" chunk)
                    if (some? chunk)
                      do
                        swap! *text str $ -> chunk .-choices .-0 .-delta .-content (or "\"")
                        d! $ :: :states-merge cursor state
                          {} (:answer @*text) (:loading? false) (:done? false)
                    d! $ :: :states-merge cursor state
                      {} (:answer @*text) (:loading? false) (:done? false)
                d! $ :: :states-merge cursor state
                  {} (:answer @*text) (:loading? false) (:done? true)
          :examples $ []
        |clear-image-cache! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn clear-image-cache! () $ if-let (url @*image-cache)
              do (js/URL.revokeObjectURL url) (reset! *image-cache nil)
          :examples $ []
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
          :examples $ []
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
                      :items models-menu
                      :on-result $ fn (result d!)
                        d! cursor $ assoc state :model (nth result 1)
                div
                  {} $ :class-name (str-spaced css/preset css/global css/column css/fullscreen css/gap8 style-app-global)
                  div
                    {} $ :class-name (str-spaced css/expand style-message-area)
                    div
                      {} $ :class-name (str-spaced css/column style-message-list)
                      if
                        or (= :imagen-4 model) (= :flash-imagen model)
                        img $ {}
                          :class-name $ str-spaced style-image "\"show-image"
                      if (:loading? state)
                        div ({}) (memof1-call-by :abort-loading comp-abort "\"Loading...")
                        if
                          not $ blank? (:answer state)
                          div ({})
                            if
                              json-pattern? $ :answer state
                              pre $ {} (:class-name style-code-content)
                                :inner-text $ :answer state
                              memof1-call comp-md-block
                                -> (:answer state) (either "\"")
                                {} $ :class-name style-md-content
                            div
                              {} $ :class-name css/row-parted
                              div
                                {} $ :class-name (str-spaced css/row-middle css/gap8)
                                if (:done? state) nil $ div ({}) (memof1-call-by :abort-streaming comp-abort "\"Streaming...")
                              if (:done? state)
                                div
                                  {} $ :class-name (str-spaced css/row-middle)
                                  comp-copy $ :answer state
                      div ({})
                        a $ {}
                          :inner-text $ or (turn-str model) "\"-"
                          :class-name $ str-spaced style-a-toggler css/font-fancy
                          :style $ {}
                            :opacity $ if (= model :anthropic) 1 0.3
                          :on-click $ fn (e d!)
                            ; d! $ :: :change-model
                            .show model-plugin d!
                      =< nil 200
                  comp-message-box (>> states :message-box)
                    fn (text search? think? d!) (submit-message! cursor state text search? think? model d!)
                  model-plugin.render
                  if dev? $ comp-reel (>> states :reel) reel ({})
                  if dev? $ comp-inspect "\"Store" store nil
          :examples $ []
        |comp-message-box $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-message-box (states on-submit)
              let
                  cursor $ :cursor states
                  state $ either (:data states)
                    {} (:content "\"") (:search? false) (:think? false)
                [] (effect-focus)
                  div
                    {} $ :class-name (str-spaced css/center style-message-box-panel)
                    div
                      {} $ :class-name (str-spaced css/column style-message-box)
                      textarea $ {}
                        :value $ :content state
                        :placeholder "\"Prompt to try LLM..."
                        :id "\"message"
                        :class-name $ str-spaced css/textarea css/font-code! style-textbox
                        :on-input $ fn (e d!)
                          d! cursor $ assoc state :content (:value e)
                        :on-keydown $ fn (e d!)
                          if
                            and
                              = 13 $ :keycode e
                              or (:meta? e) (:ctrl? e)
                            on-submit (:content state) (:search? state) (:think? state) d!
                        :on-focus $ fn (e d!)
                          let
                              target $ .-target (:event e)
                              box $ .-parentElement (.-parentElement target)
                              class-list $ .-classList target
                              box-class $ .-classList box
                            if
                              not $ .!contains class-list "\"focus-within"
                              .!add class-list "\"focus-within"
                            if
                              not $ .!contains box-class "\"focus-within"
                              .!add box-class "\"focus-within"
                        :on-blur $ fn (e d!)
                          let
                              target $ .-target (:event e)
                              box $ .-parentElement (.-parentElement target)
                              class-list $ .-classList target
                              box-class $ .-classList box
                            if (.!contains class-list "\"focus-within") (.!remove class-list "\"focus-within")
                            if (.!contains box-class "\"focus-within") (.!remove box-class "\"focus-within")
                      =< nil 4
                      div
                        {} $ :class-name css/row-parted
                        if
                          not $ blank? (:content state)
                          comp-close $ {} (:class-name style-clear)
                            :on-click $ fn (e d!)
                              d! cursor $ assoc state :content "\""
                              -> (js/document.querySelector "\"#message") (.!focus)
                          span $ {} (:class-name style-clear)
                        div
                          {} $ :class-name (str-spaced css/row css/gap16)
                          div
                            {}
                              :class-name $ str-spaced css/row style-checkbox
                              :on-click $ fn (e d!)
                                d! cursor $ assoc state :think?
                                  not $ :think? state
                            input $ {}
                              :checked $ :think? state
                              :type "\"checkbox"
                            <> "\"Thinking" css/font-fancy
                          div
                            {}
                              :class-name $ str-spaced css/row style-checkbox
                              :on-click $ fn (e d!)
                                d! cursor $ assoc state :search?
                                  not $ :search? state
                            input $ {}
                              :checked $ :search? state
                              :type "\"checkbox"
                            <> "\"Search" css/font-fancy
                          button $ {}
                            :class-name $ str-spaced css/button style-submit
                            :inner-text "\"Submit"
                            :on-click $ fn (e d!)
                              ; println $ :content state
                              on-submit (:content state) (:search? state) (:think? state) d!
          :examples $ []
        |effect-focus $ %{} :CodeEntry (:doc |)
          :code $ quote
            defeffect effect-focus () (action el at?)
              when (= action :mount)
                js/setTimeout $ fn ()
                  .!select $ .!querySelector el "\"textarea"
          :examples $ []
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
          :examples $ []
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
          :examples $ []
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
          :examples $ []
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
          :examples $ []
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
          :examples $ []
        |json-pattern? $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn json-pattern? (text)
              or (.!startsWith text "\"{") (.!startsWith text "\"[")
          :examples $ []
        |models-menu $ %{} :CodeEntry (:doc |)
          :code $ quote
            def models-menu $ [] (:: :item :gemini-flash "|Gemini Flash 2.5") (:: :item :gemini-pro "|Gemini Pro 3.0") (:: :item :gemini-flash-lite "|Gemini Flash Lite 2.5") (:: :item :flash-imagen "\"Flash Imagen") (:: :item :imagen-4 "\"Imagen 4") (:: :item :gemma "|Gemma 3 27b") (:: :item :openrouter/anthropic/claude-sonnet-4.5 "\"Openrouter Claude Sonnet 4.5") (:: :item :openrouter/anthropic/claude-opus-4 "\"Openrouter Claude Opus 4") (:: :item :openrouter/google/gemini-2.5-pro-preview "\"Openrouter Google Gemini 2.5 pro preview") (:: :item :openrouter/google/gemini-2.5-flash-preview-05-20 "\"Openrouter Google Gemini 2.5 flash preview") (:: :item :openrouter/openai/gpt-5 "\"Openrouter GPT 5") (:: :item :openrouter/deepseek/deepseek-chat-v3.1 "\"Openrouter deepseek-chat-v3.1") (; :: :item :claude-4.5 "\"Claude 4.5")
          :examples $ []
        |pattern-spaced-code $ %{} :CodeEntry (:doc |)
          :code $ quote
            def pattern-spaced-code $ noted "\"temp fix of nested code block" (&raw-code "\"/\\n\\s+```/g")
          :examples $ []
        |pick-model $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn pick-model (variant)
              case-default variant "\"gemini-flash-latest" (:gemini-pro "\"gemini-3-pro-preview") (:gemini-flash-lite "\"gemini-flash-latest") (:gemma "\"gemma-3-27b-it")
          :examples $ []
        |style-a-toggler $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-a-toggler $ {}
              "\"&" $ {} (:cursor :pointer)
          :examples $ []
        |style-abort-close $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-abort-close $ {}
              "\"&" $ {} (:vertical-align :top) (:font-size 10)
          :examples $ []
        |style-app-global $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-app-global $ {}
                str "\"& ." style-code-block
                {} $ :max-width "\"90vw"
              "\"&" $ {} (:color "\"#999") (:transition-duration "\"300ms")
                :background-color $ hsl 0 0 98
              "\"&:hover" $ {} (:color "\"#777")
                :background-color $ hsl 0 0 100
          :examples $ []
        |style-checkbox $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-checkbox $ {}
              "\"&" $ {} (:cursor :pointer) (:user-select :none) (:font-size 13)
          :examples $ []
        |style-clear $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-clear $ {}
              "\"&" $ {} (:opacity 0.4) (:padding "\"4px 8px") (:display :inline-block) (:height "\"24px")
          :examples $ []
        |style-code-content $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-code-content $ {}
              "\"&" $ {} (:line-height "\"1.5") (:font-size 13)
          :examples $ []
        |style-image $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-image $ {}
              "\"&" $ {} (:max-width "\"100%") (:align-self :flex-start) (:border-radius "\"6px")
                :border $ str "\"1px solid " (hsl 0 0 90)
          :examples $ []
        |style-md-content $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-md-content $ {}
              "\"& .md-p" $ {} (:margin "\"16px 0") (:line-height "\"1.6")
          :examples $ []
        |style-message-area $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-message-area $ {}
              "\"&" $ {} (:flex 2) (:overflow :scroll)
          :examples $ []
        |style-message-box $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-message-box $ {}
              "\"&" $ {} (:width "\"100%") (:max-width 1200) (:right "\"50%") (:padding "\"8px") (:margin :auto) (:transition-duration "\"300ms") (; :transform "\"translate(50%,0)") (:transition-property "\"height")
              "\"&:focus-within" $ {} (:opacity 1) (; :transform "\"translate(50%,0)")
          :examples $ []
        |style-message-box-panel $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-message-box-panel $ {}
              "\"&" $ {} (:position :absolute) (:bottom 0) (:opacity 1) (:width "\"100%")
                :background-color $ hsl 0 0 100 0.7
                :border-top $ str "\"1px solid " (hsl 0 0 80 0.6)
              "\"&.focus-within" $ {}
                :background-color $ hsl 0 0 100 0.9
                :box-shadow $ str "\"0 0px 8px " (hsl 0 0 0 0.3)
          :examples $ []
        |style-message-list $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-message-list $ {}
              "\"&" $ {} (:flex 2) (:padding "\"40px 16px 20vh 16px") (:width "\"100%") (:max-width 1200) (:margin :auto) (:position :relative)
          :examples $ []
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
          :examples $ []
        |style-submit $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-submit $ {}
              "\"&" $ {}
          :examples $ []
        |style-textbox $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-textbox $ {}
              "\"&" $ {} (:border-radius 12) (:height "\"max(160px,20vh)") (:width "\"100%") (:transition-duration "\"320ms") (:border :none) (:background-color :transparent)
              "\"&.focus-within" $ {} (:height "\"max(240px,32vh)") (:border :none) (:box-shadow :none)
          :examples $ []
        |submit-message! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn submit-message! (cursor state prompt-text search? think? model d!) (hint-fn async)
              let
                  *text $ atom "\""
                  model $ :model state
                try
                  case-default model
                    js-await $ call-genai-msg! model cursor state prompt-text search? think? d! *text
                    :gemini-pro $ js-await (call-genai-msg! model cursor state prompt-text search? think? d! *text)
                    :flash-imagen $ js-await (call-flash-imagen-msg! model cursor state prompt-text d!)
                    :imagen-4 $ js-await (call-imagen-4-msg! model cursor state prompt-text d!)
                    :gemini-thinking $ js-await (call-genai-msg! model cursor state prompt-text search? think? d! *text)
                    :gemini-flash-thinking $ js-await (call-genai-msg! model cursor state prompt-text search? think? d! *text)
                    :gemini-flash-lite $ js-await (call-genai-msg! model cursor state prompt-text search? think? d! *text)
                    :gemini-flash $ js-await (call-genai-msg! model cursor state prompt-text search? think? d! *text)
                    :gemini-learnlm $ js-await (call-genai-msg! model cursor state prompt-text search? think? d! *text)
                    :claude-3.7 $ js-await (call-anthropic-msg! cursor state prompt-text "\"claude-3-7-sonnet-20250219" false d!)
                    :openrouter/anthropic/claude-sonnet-4 $ js-await (call-openrouter! cursor state prompt-text "\"anthropic/claude-sonnet-4" true d! *text)
                    :openrouter/anthropic/claude-opus-4 $ js-await (call-openrouter! cursor state prompt-text "\"anthropic/claude-opus-4" true d! *text)
                    :openrouter/anthropic/claude-3.7-sonnet:thinking $ js-await (call-openrouter! cursor state prompt-text "\"anthropic/claude-3.7-sonnet:thinking" true d! *text)
                    :openrouter/google/gemini-2.5-pro-preview $ js-await (call-openrouter! cursor state prompt-text "\"google/gemini-2.5-pro-preview" true d! *text)
                    :openrouter/google/gemini-2.5-flash-preview-05-20 $ js-await (call-openrouter! cursor state prompt-text "\"google/gemini-2.5-flash-preview-05-20" true d! *text)
                    :openrouter/openai/gpt-5 $ js-await (call-openrouter! cursor state prompt-text "\"openai/gpt-5" true d! *text)
                    :openrouter/deepseek/deepseek-chat-v3.1 $ js-await (call-openrouter! cursor state prompt-text "\"deepseek/deepseek-chat-v3.1" true d! *text)
                  fn (e)
                    d! cursor $ -> state
                      assoc :answer $ str @*text &newline &newline (str "\"Failed to load: " e)
                      assoc :loading? false
                      assoc :done? true
          :examples $ []
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
            memof.once :refer $ memof1-call memof1-call-by
            "\"@google/genai" :refer $ GoogleGenAI Modality
            "\"../lib/image" :refer $ base64ToBlob
            "\"openai" :default OpenAI
    |app.config $ %{} :FileEntry
      :defs $ {}
        |chrome-extension? $ %{} :CodeEntry (:doc |)
          :code $ quote
            def chrome-extension? $ and (some? js/window.chrome) (some? js/window.chrome.runtime) (some? js/window.chrome.runtime.id)
          :examples $ []
        |dev? $ %{} :CodeEntry (:doc |)
          :code $ quote
            def dev? $ = "\"dev" (get-env "\"mode" "\"release")
          :examples $ []
        |site $ %{} :CodeEntry (:doc |)
          :code $ quote
            def site $ {} (:storage-key "\"msg-buffer")
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote (ns app.config)
    |app.main $ %{} :FileEntry
      :defs $ {}
        |*reel $ %{} :CodeEntry (:doc |)
          :code $ quote
            defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
          :examples $ []
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn dispatch! (op)
              when
                and config/dev? $ not= op :states
                js/console.log "\"Dispatch:" op
              reset! *reel $ reel-updater updater @*reel op
          :examples $ []
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
                    submit-message! cursor state0 content false false model dispatch!
              js/chrome.runtime.connect $ js-object (:name |mySidepanel)
          :examples $ []
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
          :examples $ []
        |mount-target $ %{} :CodeEntry (:doc |)
          :code $ quote
            def mount-target $ js/document.querySelector |.app
          :examples $ []
        |persist-storage! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn persist-storage! ()
              println "\"Saved at" $ .!toISOString (new js/Date)
              js/localStorage.setItem (:storage-key config/site)
                format-cirru-edn $ :store @*reel
          :examples $ []
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn reload! () $ if (nil? build-errors)
              do (remove-watch *reel :changes) (clear-cache!)
                add-watch *reel :changes $ fn (reel prev) (render-app!)
                reset! *reel $ refresh-reel @*reel schema/store updater
                hud! "\"ok~" "\"Ok"
              hud! "\"error" build-errors
          :examples $ []
        |render-app! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn render-app! () $ render! mount-target (comp-container @*reel) dispatch!
          :examples $ []
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
          :examples $ []
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
                (:states-merge cursor s changes) (update-states-merge store cursor s changes)
                (:hydrate-storage data) data
                (:change-model)
                  if
                    = (:model store) :anthropic
                    assoc store :model :gemini
                    assoc store :model :anthropic
                _ $ do (eprintln "\"unknown op:" op) store
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.updater $ :require
            respo.cursor :refer $ update-states update-states-merge
