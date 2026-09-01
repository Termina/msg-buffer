
{} (:about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --full` first. Manual edits must follow format and schema conventions, then run `calcit edit format`.") (:package |app)
  :entries $ {}
    :default $ {} (:description |) (:init-fn 'app.main/main!) (:mode :js) (:reload-fn 'app.main/reload!)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |respo-ui.calcit/ |reel.calcit/ |respo-markdown.calcit/ |alerts.calcit/ |respo-feather.calcit/
      :type-slots $ {}
  :files $ {}
    'app.comp.container $ %{} 'FileEntry
      :defs $ {}
        '*abort-control $ %{} 'CodeEntry (:doc |)
          :code $ quote (defatom *abort-control false)
          :examples $ []
          :schema $ :: 'Ref
        '*archived-sessions $ %{} 'CodeEntry (:doc |)
          :code $ quote (defatom *archived-sessions false)
          :examples $ []
          :schema $ :: 'Ref
        '*gen-ai-new $ %{} 'CodeEntry (:doc |)
          :code $ quote (defatom *gen-ai-new false)
          :examples $ []
          :schema $ :: 'Ref
        '*image-cache $ %{} 'CodeEntry (:doc |)
          :code $ quote (defatom *image-cache false)
          :examples $ []
          :schema $ :: 'Ref
        '*openai $ %{} 'CodeEntry (:doc "|called openai sdk, but actually for openrouter")
          :code $ quote (defatom *openai false)
          :examples $ []
          :schema $ :: 'Ref
        '*viewing-archive-session $ %{} 'CodeEntry (:doc |)
          :code $ quote (defatom *viewing-archive-session false)
          :examples $ []
          :schema $ :: 'Ref
        'StreamChunk $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstruct StreamChunk (:text 'String) (:thinking? 'Bool)
          :examples $ []
          :schema $ :: 'StructDef
        'append-user-message $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn append-user-message (messages content)
              conj messages $ %{} ChatMessage (:role :user) (:content content) (:thinking |)
          :examples $ []
          :schema $ :: 'Fn
            {}
              :args $ [] (:: 'List 'app.schema/ChatMessage) 'String
              :return $ :: 'List 'app.schema/ChatMessage
        'call-anthropic-msg! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn call-anthropic-msg! (cursor state prompt-text model thinking? d!)
              hint-fn $ {} (:async true)
              let
                  abort $ deref *abort-control
                when (js-present-dynamic? abort)
                  let
                      abort-controller $ unsafe-coerce abort 'Dynamic
                    do (js/console.warn |Aborting-prev) (.!abort abort-controller)
              d! $ :: :change-model
              let
                  selected $ let
                      selected0 $ js-await (get-selected)
                    if (js-present? selected0) (unsafe-coerce selected0 'String) "|<未找到内容>"
                  content $ .replace prompt-text |{{selected}} selected
                  messages0 $ append-user-message (:messages state) content
                  messages1 $ upsert-assistant-message messages0 | |
                  result $ js-await
                    .!post axios (str |https://sa.chenyong.life/v1/messages)
                      js-object
                        :model $ option:unwrap-or (get-env |claude-model) (or model |claude-3-5-sonnet-latest)
                        :max_tokens 1024
                        :stream true
                        :thinking $ if thinking?
                          js-object (:type |enabled) (:budget_tokens 2000)
                          , js/undefined
                        :messages $ messages->anthropic messages0
                      js-object
                        :params $ js-object
                        :headers $ js-object (; :Accept |text/event-stream) (; :Content-Type |application/json)
                          |x-api-key $ get-anthropic-key!
                          |anthropic-version |2023-06-01
                          |anthropic-dangerous-direct-browser-access true
                        :responseType |stream
                        :adapter |fetch
                        :signal $ let
                            abort $ new js/AbortController
                          reset! *abort-control abort
                          .-signal abort
                  stream $ unsafe-coerce (.-data result) 'Dynamic
                  reader $ unsafe-coerce
                    .!getReader $ unsafe-coerce
                      .!pipeThrough stream $ new js/TextDecoderStream
                      , 'Dynamic
                    , 'Dynamic
                  *text $ atom (str "|Claude AI:" &newline &newline)
                js/setTimeout $ fn ()
                  d! $ :: :states-merge cursor state
                    {} (:answer |) (:thinking |) (:loading? true) (:done? false) (:messages messages1)
                apply-args () $ fn ()
                  hint-fn $ {} (:async true)
                  let
                      info $ js-await (.!read reader)
                      value $ wo-js-log (.-value info)
                      done? $ .-done info
                    if (wo-log done?) (:: :unit)
                      do
                        let
                            events $ -> value .split-lines
                              filter $ fn (s) (.starts-with? s "|data: ")
                              map $ fn (s)
                                -> (.strip-prefix s "|data: ") js/JSON.parse to-calcit-data
                          apply-args (events)
                            fn (xs)
                              list-match xs
                                () $ do (println "|no thing to handle in this Loop") &unit
                                (x0 xss)
                                  let
                                      stop? $ =
                                        option:unwrap-or (get x0 |type) |
                                        , |message_stop
                                    wo-js-log x0
                                    if stop?
                                      d! $ :: :states-merge cursor state
                                        {} (:answer @*text) (:loading? false) (:done? true)
                                          :messages $ upsert-assistant-message messages1 @*text |
                                      let
                                          content-opt $ get-in x0 ([] |delta |text)
                                        if (option:none? content-opt)
                                          do (println |content-is-nil) (recur xss)
                                          let
                                              content $ stream-text (option:unwrap-or content-opt |)
                                            do (swap! *text str content)
                                              d! (:: :states-merge cursor state)
                                                {} (:answer @*text) (:loading? false) (:done? false)
                                                  :messages $ upsert-assistant-message messages1 @*text |
                                              recur xss
                        recur
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ [] 'List 'app.schema/ChatState 'String 'String 'Bool 'Dynamic
              :features $ #{} :js-ffi
        'call-flash-imagen-msg! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn call-flash-imagen-msg! (variant cursor state prompt-text d!)
              hint-fn $ {} (:async true)
              if (= false @*gen-ai-new)
                let
                    mod $ js-await (js/import |@google/genai)
                    GoogleGenAI $ .-GoogleGenAI mod
                  reset! *gen-ai-new $ new GoogleGenAI
                    js-object $ :apiKey (get-gemini-key!)
              let
                  target0 $ js/document.querySelector |.show-image
                when (js-present-dynamic? target0)
                  let
                      target $ unsafe-coerce target0 'Dynamic
                    .!setAttribute target |src |
              let
                  abort $ deref *abort-control
                when (js-present-dynamic? abort)
                  let
                      abort-controller $ unsafe-coerce abort 'Dynamic
                    do (js/console.warn |Aborting-prev) (.!abort abort-controller)
              clear-image-cache!
              d! $ :: :states cursor
                -> state (assoc :answer |) (assoc :loading? true)
              let
                  selected $ let
                      selected0 $ js-await (get-selected)
                    if (js-present? selected0) (unsafe-coerce selected0 'String) "|<未找到选中内容>"
                  gen-ai @*gen-ai-new
                  content $ .!replace prompt-text |{{selected}} selected
                  abort-signal $ let
                      abort $ new js/AbortController
                    reset! *abort-control abort
                    .-signal abort
                  sdk-result $ js-await
                    .!generateContent
                      unsafe-coerce
                        .-models $ unsafe-coerce gen-ai 'Dynamic
                        , 'Dynamic
                      js-object (:model |gemini-2.5-flash-image) (:contents content)
                        :config $ js-object (:abortSignal abort-signal)
                          :httpOptions $ js-object (:baseUrl |https://ja.chenyong.life)
                          :responseModalities $ js-array |TEXT |IMAGE
                  parts $ unsafe-coerce
                    unsafe-coerce
                      .-parts $ unsafe-coerce
                        .-content $ unsafe-coerce
                          .-0 $ unsafe-coerce
                            .-candidates $ unsafe-coerce sdk-result 'Dynamic
                            , 'Dynamic
                          , 'Dynamic
                        , 'Dynamic
                      , 'Dynamic
                    , 'Dynamic
                  *text $ atom |
                js-await $ .!forEach parts
                  fn (chunk _a _b)
                    if (js-present-dynamic? chunk)
                      let
                          chunk-data $ unsafe-coerce chunk 'Dynamic
                          text0 $ .-text chunk-data
                        if (js-present-dynamic? text0)
                          let
                              text $ unsafe-coerce text0 'String
                            do (swap! *text str text)
                              d! (:: :states cursor)
                                -> state (assoc :answer @*text) (assoc :loading? false) (assoc :done? false)
                          let
                              image-data0 $ .-inlineData chunk-data
                            when (js-present-dynamic? image-data0)
                              let
                                  image-data $ unsafe-coerce image-data0 'Dynamic
                                  data $ unsafe-coerce (.-data image-data) 'String
                                  image-blob $ base64ToBlob data
                                  url $ js/URL.createObjectURL image-blob
                                  target $ unsafe-coerce (js/document.querySelector |.show-image) 'Dynamic
                                .!setAttribute target |src url
                                reset! *image-cache url
                                do (swap! *text str | "|(image ready)")
                                  d! (:: :states cursor)
                                    -> state (assoc :answer @*text) (assoc :loading? false) (assoc :done? false)
                      d! (:: :states cursor)
                        -> state (assoc :answer @*text) (assoc :loading? false) (assoc :done? false)
                    d! $ :: :states cursor
                      -> state (assoc :answer @*text) (assoc :loading? false) (assoc :done? false)
                d! $ :: :states cursor
                  -> state (assoc :answer @*text) (assoc :loading? false) (assoc :done? true)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ [] 'Tag 'List 'app.schema/ChatState 'String 'Dynamic
              :features $ #{} :js-ffi
        'call-genai-msg! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn call-genai-msg! (variant cursor state prompt-text search? think? d! *text *thinking-text)
              hint-fn $ {} (:async true)
              if (= false @*gen-ai-new)
                let
                    mod $ js-await (js/import |@google/genai)
                    GoogleGenAI $ .-GoogleGenAI mod
                  reset! *gen-ai-new $ new GoogleGenAI
                    js-object $ :apiKey (get-gemini-key!)
              let
                  abort $ deref *abort-control
                when (js-present-dynamic? abort)
                  let
                      abort-controller $ unsafe-coerce abort 'Dynamic
                    do (js/console.warn |Aborting-prev) (.!abort abort-controller)
              let
                  selected $ let
                      selected0 $ if (.includes? prompt-text |{{selected}})
                        js-await $ get-selected
                        , js/undefined
                    if (js-present? selected0) (unsafe-coerce selected0 'String) "|<未找到选中内容>"
                  gen-ai @*gen-ai-new
                  model $ pick-model variant
                  content $ .!replace prompt-text |{{selected}} selected
                  json? $ or (includes? prompt-text |{{json}}) (includes? prompt-text |{{JSON}})
                  pro? $ includes? model |pro
                  has-url? $ or (includes? prompt-text |http://) (includes? prompt-text |https://)
                  messages0 $ or (:messages state) ([])
                  messages1 $ upsert-assistant-message messages0 | |
                  abort-signal $ let
                      abort $ new js/AbortController
                    reset! *abort-control abort
                    .-signal abort
                  tools $ ->
                    js-array
                      if search?
                        js-object $ :googleSearch (js-object)
                        , js/undefined
                      if has-url?
                        js-object $ :urlContext (js-object)
                        , js/undefined
                    .!filter $ fn (x _idx _arr) x
                  sdk-result $ js-await
                    .!generateContentStream
                      unsafe-coerce
                        .-models $ unsafe-coerce gen-ai 'Dynamic
                        , 'Dynamic
                      js-object (:model model)
                        :contents $ messages->gemini messages0
                        :config $ js-object
                          :thinkingConfig $ if think?
                            js-object (:thinkingLevel |high) (:includeThoughts true)
                            js-object
                              :thinkingLevel $ if (= model |gemini-3.7-flash) |low |minimal
                              :includeThoughts false
                          :tools $ if
                            >
                              unsafe-coerce
                                .-length $ unsafe-coerce tools 'Dynamic
                                , 'Number
                              , 0
                            , tools js/undefined
                          :abortSignal abort-signal
                          :httpOptions $ js-object (:baseUrl |https://ja.chenyong.life)
                          :responseMimeType $ if json? |application/json js/undefined
                do
                  js/setTimeout $ fn ()
                    d! $ :: :states-merge cursor state
                      {} (:answer |) (:thinking |) (:loading? true) (:done? false) (:messages messages1)
                  js-await $ js-for-await sdk-result
                    fn (chunk)
                      if (js-present-dynamic? chunk)
                        let
                            stream-chunk $ unsafe-coerce (decode-genai-chunk chunk) 'app.comp.container/StreamChunk
                            is-thinking? $ :thinking? stream-chunk
                            text $ :text stream-chunk
                          if is-thinking? (swap! *thinking-text str text) (swap! *text str text)
                          d! $ :: :states-merge cursor state
                            {} (:answer @*text) (:thinking @*thinking-text) (:loading? false) (:done? false)
                              :messages $ upsert-assistant-message messages1 @*text @*thinking-text
                        d! $ :: :states-merge cursor state
                          {} (:answer @*text) (:thinking @*thinking-text) (:loading? false) (:done? false)
                            :messages $ upsert-assistant-message messages1 @*text @*thinking-text
                  d! $ :: :states-merge cursor state
                    {} (:answer @*text) (:thinking @*thinking-text) (:loading? false) (:done? true)
                      :messages $ upsert-assistant-message messages1 @*text @*thinking-text
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ [] 'Tag 'List 'app.schema/ChatState 'String 'Bool 'Bool 'Dynamic 'Ref 'Ref
              :features $ #{} :js-ffi
        'call-imagen-4-msg! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn call-imagen-4-msg! (variant cursor state prompt-text d!)
              hint-fn $ {} (:async true)
              if (= false @*gen-ai-new)
                let
                    mod $ js-await (js/import |@google/genai)
                    GoogleGenAI $ .-GoogleGenAI mod
                  reset! *gen-ai-new $ new GoogleGenAI
                    js-object $ :apiKey (get-gemini-key!)
              let
                  target0 $ js/document.querySelector |.show-image
                when (js-present-dynamic? target0)
                  let
                      target $ unsafe-coerce target0 'Dynamic
                    .!removeAttribute target |src
              let
                  abort $ deref *abort-control
                when (js-present-dynamic? abort)
                  let
                      abort-controller $ unsafe-coerce abort 'Dynamic
                    do (js/console.warn |Aborting-prev) (.!abort abort-controller)
              clear-image-cache!
              d! $ :: :states cursor
                -> state (assoc :answer |) (assoc :loading? true)
              let
                  gen-ai @*gen-ai-new
                  abort-signal $ let
                      abort $ new js/AbortController
                    reset! *abort-control abort
                    .-signal abort
                  response $ js-await
                    .!generateImages
                      unsafe-coerce
                        .-models $ unsafe-coerce gen-ai 'Dynamic
                        , 'Dynamic
                      js-object (:model |imagen-4.0-generate-001) (:prompt prompt-text)
                        :config $ js-object (:numberOfImages 1) (:includeRaiReason true)
                          :httpOptions $ js-object (:baseUrl |https://ja.chenyong.life)
                          :signal abort-signal
                  *text $ atom |
                let
                    response-data $ unsafe-coerce response 'Dynamic
                    generated-images $ unsafe-coerce (.-generatedImages response-data) 'Dynamic
                    generated-image $ unsafe-coerce (.-0 generated-images) 'Dynamic
                    image $ unsafe-coerce (.-image generated-image) 'Dynamic
                    image-data0 $ .-imageBytes image
                  when (js-present-dynamic? image-data0)
                    let
                        image-data $ unsafe-coerce image-data0 'String
                        image-blob $ base64ToBlob image-data
                        url $ js/URL.createObjectURL image-blob
                        target $ unsafe-coerce (js/document.querySelector |.show-image) 'Dynamic
                      reset! *image-cache url
                      .!setAttribute target |src url
                      do (swap! *text str | "|(image ready)")
                        d! (:: :states cursor)
                          -> state (assoc :answer @*text) (assoc :loading? false) (assoc :done? false)
                d! $ :: :states cursor
                  -> state (assoc :answer @*text) (assoc :loading? false) (assoc :done? true)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ [] 'Tag 'List 'app.schema/ChatState 'String 'Dynamic
              :features $ #{} :js-ffi
        'call-openrouter! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn call-openrouter! (cursor state prompt-text variant thinking? d! *text)
              hint-fn $ {} (:async true)
              if (= false @*openai)
                let
                    mod $ js-await (js/import |openai)
                    OpenAI $ .-default mod
                    deepseek? $ includes? variant |deepseek
                    base-url $ if deepseek? |https://api.deepseek.com |https://openrouter.ai/api/v1
                    key-fn $ if deepseek? get-deepseek-key! get-openrouter-key!
                  reset! *openai $ new OpenAI
                    js-object (:baseURL base-url)
                      :apiKey $ key-fn
                      :defaultHeaders $ js-object
                      :dangerouslyAllowBrowser true
              let
                  abort $ deref *abort-control
                when (js-present-dynamic? abort)
                  let
                      abort-controller $ unsafe-coerce abort 'Dynamic
                    do (js/console.warn |Aborting-prev) (.!abort abort-controller)
              let
                  selected $ let
                      selected0 $ js-await (get-selected)
                    if (js-present? selected0) (unsafe-coerce selected0 'String) "|<未找到选中内容>"
                  openai $ let
                      ai @*openai
                    , ai
                  content $ .!replace prompt-text |{{selected}} selected
                  json? $ or (includes? prompt-text |{{json}}) (includes? prompt-text |{{JSON}})
                  messages0 $ or (:messages state) ([])
                  messages1 $ upsert-assistant-message messages0 | |
                  sdk-result $ js-await
                    .!create
                      unsafe-coerce
                        .-completions $ unsafe-coerce
                          .-chat $ unsafe-coerce openai 'Dynamic
                          , 'Dynamic
                        , 'Dynamic
                      js-object (:model variant)
                        :messages $ messages->openai messages0
                        :stream true
                        :headers $ js-object (:HTTP-Referer js/location.host)
                      js-object $ :signal
                        let
                            abort $ new js/AbortController
                          reset! *abort-control abort
                          .-signal abort
                do
                  js/setTimeout $ fn ()
                    d! $ :: :states-merge cursor state
                      {} (:answer |) (:thinking |) (:loading? true) (:done? false) (:messages messages1)
                  let
                      *thinking-text $ atom |
                      *char-buf $ atom 0
                    js-await $ js-for-await sdk-result
                      fn (chunk)
                        if (js-present-dynamic? chunk)
                          let
                              chunk-data $ unsafe-coerce chunk 'Dynamic
                              choices $ unsafe-coerce (.-choices chunk-data) 'Dynamic
                              choice0 $ unsafe-coerce (.-0 choices) 'Dynamic
                              choice $ unsafe-coerce (.-delta choice0) 'Dynamic
                              reason0 $ .-reasoning_content choice
                              reason $ if (js-present-dynamic? reason0) (stream-text reason0) |
                              text0 $ .-content choice
                              text $ if (js-present-dynamic? text0) (stream-text text0) |
                            if
                              not $ blank? reason
                              swap! *thinking-text str reason
                            if
                              not $ blank? text
                              swap! *text str text
                            swap! *char-buf + $ count text
                            when
                              or (> @*char-buf 80) (includes? text &newline)
                              do (reset! *char-buf 0)
                                d! $ :: :states-merge cursor state
                                  {} (:answer @*text) (:thinking @*thinking-text) (:loading? false) (:done? false)
                                    :messages $ upsert-assistant-message messages1 @*text @*thinking-text
                        d! $ :: :states-merge cursor state
                          {} (:answer @*text) (:thinking @*thinking-text) (:loading? false) (:done? false)
                            :messages $ upsert-assistant-message messages1 @*text @*thinking-text
                    d! $ :: :states-merge cursor state
                      {} (:answer @*text) (:thinking @*thinking-text) (:loading? false) (:done? true)
                        :messages $ upsert-assistant-message messages1 @*text @*thinking-text
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ [] 'List 'app.schema/ChatState 'String 'String 'Bool 'Dynamic 'Ref
              :features $ #{} :js-ffi
        'clear-image-cache! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn clear-image-cache! () $ let
                url @*image-cache
              when (not= false url)
                do
                  js/URL.revokeObjectURL $ unsafe-coerce url 'String
                  reset! *image-cache false
          :examples $ []
          :schema $ :: 'Dynamic
        'comp-abort $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn comp-abort (t)
              span
                {} (:role |button)
                  :aria-label $ str |abort- t
                  :class-name $ str-spaced css/font-fancy css/row-middle style-more
                  :style $ {} (:cursor :pointer)
                  :on-click $ fn (e d!)
                    let
                        abort $ deref *abort-control
                      when (js-present-dynamic? abort)
                        let
                            abort-controller $ unsafe-coerce abort 'Dynamic
                          do (js/console.warn |Aborting-prev) (.!abort abort-controller)
                    , &unit
                <> t
                =< 8 nil
                <> "|✕" style-abort-close
          :examples $ []
          :schema $ :: 'Dynamic
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-container (reel)
              let
                  raw-store $ option:unwrap-or (get reel :store) store
                  app-store $ if (struct? raw-store) (unsafe-coerce raw-store 'app.schema/Store) (decode-map-as raw-store 'app.schema/Store)
                  sessions $ :sessions app-store
                  archived-count $ :archived-count app-store
                  current-session-id $ :current-session-id app-store
                  states $ :states app-store
                  cursor $ option:unwrap-or (get states :cursor) ([])
                  state $ let
                      raw-chat-state $ option:unwrap-or (get states :data)
                        {} (:answer |) (:loading? false) (:done? true)
                          :messages $ []
                          :model :gemini
                          :thinking |
                    unsafe-coerce (normalize-chat-state raw-chat-state) 'app.schema/ChatState
                  done? $ :done? state
                  messages $ :messages state
                  model $ if
                    tag? $ :model state
                    :model state
                    , :gemini
                  is-viewing-history? $ and (some? current-session-id)
                    option:fold
                      first $ filter sessions
                        fn (s)
                          hint-fn $ {}
                            :args $ [] 'app.schema/ChatSession
                          = (:id s) current-session-id
                      fn () false
                      fn (session)
                        hint-fn $ {}
                          :args $ [] 'app.schema/ChatSession
                        :is-history? session
                  last-assistant $ option:fold (last messages)
                    fn () $ :answer state
                    fn (last-msg)
                      hint-fn $ {}
                        :args $ [] 'app.schema/ChatMessage
                      if
                        = :assistant $ :role last-msg
                        :content last-msg
                        :answer state
                  model-plugin $ use-modal-menu (>> states :model)
                    {} (; :title "|Select model")
                      :style $ {} (:width 300)
                      :backdrop-style $ {}
                      ; :card-class style-card
                      ; :backdrop-class style-backdrop
                      ; :confirm-class style-confirm
                      :items models-menu
                      :on-result $ fn (result d!)
                        d! cursor $ assoc state :model
                          option:unwrap-or (nth result 1) :gemini
                  reply-plugin $ use-prompt (>> states :reply-prompt)
                    {} (:text |Follow-up) (:placeholder "|Enter your follow-up") (:multiline? true) (:button-text |Send)
                      :validator $ fn (text)
                        if (blank? text) "|Please enter text" |
                  api-key-plugin $ use-prompt (>> states :api-key-prompt)
                    {} (:text "|API key required") (:placeholder "|Enter API key") (:button-text |Save)
                      :validator $ fn (text)
                        if (blank? text) "|Please enter API key" |
                  text-alert-plugin $ use-alert (>> states :empty-message-alert)
                    {} $ :text "|Please enter text"
                  submit-with-key! $ fn (submit-state text search? think? d!)
                    hint-fn $ {}
                      :args $ [] 'app.schema/ChatState 'String 'Bool 'Bool 'Dynamic
                      :features $ #{} :js-ffi
                    if (blank? text) (.show text-alert-plugin d!)
                      let
                          storage-key $ model-storage-key model
                          stored0 $ js/localStorage.getItem storage-key
                          stored $ if (js-present-dynamic? stored0) (unsafe-coerce stored0 'String) |
                        if (blank? stored)
                          .show api-key-plugin d! $ fn (key)
                            do (js/localStorage.setItem storage-key key) (submit-message! cursor submit-state text search? think? model d!)
                          submit-message! cursor submit-state text search? think? model d!
                  message-box-state $ let
                      raw-message-box-state $ option:unwrap-or
                        get (>> states :message-box) :data
                        {} (:content |) (:search? false) (:think? false) (:focus-mode? false)
                    if (struct? raw-message-box-state) (unsafe-coerce raw-message-box-state 'app.schema/MessageBoxState) (decode-map-as raw-message-box-state 'app.schema/MessageBoxState)
                  sessions-plugin $ use-drawer (>> states :sessions-modal)
                    {} (:title "|History Sessions")
                      :style $ {} (:min-width "||max(320px,30vw)\"") (:max-width |80vw)
                      :render $ fn (on-close)
                        comp-sessions-modal sessions archived-count
                          fn (session-id d!)
                            when
                              and
                                > (count messages) 0
                                :done? state
                                not $ js-present-dynamic? current-session-id
                              d! $ :: :save-session state
                            d! $ :: :load-session cursor state
                              -> sessions
                                filter $ fn (s)
                                  hint-fn $ {}
                                    :args $ [] 'app.schema/ChatSession
                                  = (:id s) session-id
                                , first option:unwrap
                            on-close d!
                          , on-close $ fn (d!)
                            hint-fn $ {} (:async true)
                            let
                                archive-key $ :archive-key site
                                raw $ js-await (db-get archive-key)
                              if (blank? raw) (js/alert "|No archives found!")
                                let
                                    parsed $ parse-cirru-edn raw
                                  reset! *archived-sessions parsed
                div
                  {} $ :class-name (str-spaced css/preset css/global css/column css/fullscreen css/gap8 style-app-global)
                  if (not= false @*archived-sessions)
                    if (not= false @*viewing-archive-session) (; Render specific read-only archived session)
                      div
                        {} $ :class-name (str-spaced css/expand style-message-area)
                        div
                          {} $ :class-name style-archive-header
                          div $ {}
                            :style $ {} (:font-weight :bold)
                            :inner-text $ str "|Archived: "
                              :preview $ assert-type (app.schema/normalize-chat-session @*viewing-archive-session) 'app.schema/ChatSession
                          div
                            {} (:class-name style-archive-close)
                              :on-click $ fn (e d!) (reset! *viewing-archive-session false) &unit
                            <> "|✕"
                        ; Messages list $ read only
                        div
                          {} (:role |region) (:aria-label |message-list)
                            :class-name $ str-spaced css/column style-message-list
                          list->
                            {} $ :class-name (str-spaced css/column css/gap8)
                            ->
                              :messages $ assert-type (app.schema/normalize-chat-session @*viewing-archive-session) 'app.schema/ChatSession
                              map-indexed $ fn (idx msg)
                                hint-fn $ {}
                                  :args $ [] 'Number 'app.schema/ChatMessage
                                [] idx $ let
                                    role $ :role msg
                                    content $ stream-text (:content msg)
                                    thinking $ stream-text (:thinking msg)
                                  div
                                    {} $ :class-name
                                      str-spaced style-message-item $ if (= role :assistant) style-message-assistant style-message-user
                                    div
                                      {} $ :class-name style-message-role
                                      <> $ if (= role :assistant) |Assistant |You
                                    if
                                      not $ blank? thinking
                                      div
                                        {} $ :class-name style-thinking
                                        memo-comp-by thinking comp-md-block thinking $ {} (:class-name style-md-content)
                                    if (= role :assistant)
                                      if (json-pattern? content)
                                        pre $ {} (:class-name style-code-content) (:inner-text content)
                                        memo-comp-by content comp-md-block content $ {} (:class-name style-md-content)
                                      pre $ {} (:class-name style-message-text) (:inner-text content)
                      ; Render archived sessions list
                      div
                        {} $ :class-name (str-spaced css/expand style-message-area)
                        div
                          {} $ :class-name style-archive-header
                          div $ {}
                            :style $ {} (:font-weight :bold)
                            :inner-text "|All Archived Sessions"
                          div
                            {} (:class-name style-archive-close)
                              :on-click $ fn (e d!) (reset! *archived-sessions false) (reset! *viewing-archive-session false) &unit
                            <> "|✕"
                        ; List
                        div
                          {} $ :class-name (str-spaced css/column css/gap8 style-message-list)
                          list->
                            {} $ :class-name css/column
                            let
                                current-archives $ or @*archived-sessions ([])
                              if (empty? current-archives)
                                [] :empty $ div
                                  {} $ :style
                                    {} (:padding |12px)
                                      :color $ hsl 0 0 60
                                  <> "|No archived sessions left."
                                -> current-archives reverse $ map
                                  fn (session)
                                    hint-fn $ {}
                                      :args $ [] 'app.schema/ChatSession
                                    let
                                        session-id $ :id session
                                        created-at $ :created-at session
                                        preview $ :preview session
                                        date-str $ unsafe-coerce
                                          .!toLocaleString $ new js/Date created-at
                                          , 'String
                                      [] session-id $ div
                                        {} $ :class-name style-session-item
                                        div
                                          {} (:role |button)
                                            :style $ {} (:flex |1) (:cursor :pointer) (:min-width 0) (:overflow :hidden)
                                            :on-click $ fn (e d!) (reset! *viewing-archive-session session) &unit
                                          div
                                            {} $ :style
                                              {} (:font-size |12px)
                                                :color $ hsl 0 0 60
                                            <> date-str
                                          div
                                            {} $ :style
                                              {} (:margin-top |4px) (:white-space :nowrap) (:overflow :hidden) (:text-overflow :ellipsis) (:max-height |1.2em) (:line-height |1.2)
                                            <> preview
                                        div
                                          {} (:class-name style-delete-button) (:role |button)
                                            :on-click $ fn (e d!)
                                              hint-fn $ {} (:async true)
                                              let
                                                  proceed? $ js/confirm "|Delete this archived session?"
                                                when proceed? $ let
                                                    new-archives $ filter @*archived-sessions
                                                      fn (s)
                                                        hint-fn $ {}
                                                          :args $ [] 'app.schema/ChatSession
                                                        not= (:id s) session-id
                                                  reset! *archived-sessions new-archives
                                                  let
                                                      archive-key $ :archive-key site
                                                    js-await $ db-set archive-key (format-cirru-edn new-archives)
                                                    d! $ :: :update-archived-count (count new-archives)
                                              , &unit
                                          <> "|✕"
                    ; Else render normal chat view
                    div
                      {} $ :class-name (str-spaced css/expand css/column)
                      div
                        {} $ :class-name (str-spaced css/expand style-message-area)
                        div
                          {}
                            :class-name $ str-spaced css/row-parted
                            :style $ {} (:padding |8px)
                          div $ {}
                          div
                            {} (:class-name css/row-middle) (:title |History) (:role |button) (:aria-label |history-open)
                              :style $ {} (:cursor :pointer)
                              :on-click $ fn (e d!) (.show sessions-plugin d!) &unit
                            div
                              {} $ :class-name style-history-button
                              comp-i |clock
                            =< 4 nil
                            if
                              > (count sessions) 0
                              <>
                                str $ count sessions
                                str-spaced css/font-fancy style-history-count
                        div
                          {} (:role |region) (:aria-label |message-list)
                            :class-name $ str-spaced css/column style-message-list
                          if
                            or (= :imagen-4 model) (= :flash-imagen model)
                            img $ {}
                              :class-name $ str-spaced style-image |show-image
                          list->
                            {} $ :class-name (str-spaced css/column css/gap8)
                            -> messages $ map-indexed
                              fn (idx msg)
                                hint-fn $ {}
                                  :args $ [] 'Number 'app.schema/ChatMessage
                                [] idx $ let
                                    role $ :role msg
                                    content $ stream-text (:content msg)
                                    thinking $ stream-text (:thinking msg)
                                  div
                                    {} $ :class-name
                                      str-spaced style-message-item $ if (= role :assistant) style-message-assistant style-message-user
                                    div
                                      {} $ :class-name style-message-role
                                      <> $ if (= role :assistant) |Assistant |You
                                    if
                                      not $ blank? thinking
                                      div
                                        {} $ :class-name style-thinking
                                        memo-comp-by thinking comp-md-block thinking $ {} (:class-name style-md-content)
                                    if (= role :assistant)
                                      if (json-pattern? content)
                                        pre $ {} (:class-name style-code-content) (:inner-text content)
                                        memo-comp-by content comp-md-block content $ {} (:class-name style-md-content)
                                      pre $ {} (:class-name style-message-text) (:inner-text content)
                                    if
                                      and (= role :assistant)
                                        or done? $ not= idx
                                          dec $ count messages
                                      div
                                        {} $ :class-name (str-spaced css/row-middle css/gap8 style-message-actions)
                                        if chrome-extension? (comp-fill content) nil
                                        comp-copy content
                                      , nil
                          if
                            and
                              > (count messages) 0
                              :done? state
                              not is-viewing-history?
                            div
                              {} $ :class-name (str-spaced css/row-middle css/gap8 style-reply-actions)
                              button
                                {} (:role |button) (:aria-label |reply-message)
                                  :class-name $ str-spaced css/button style-reply-button
                                  :on-click $ fn (e d!)
                                    .show reply-plugin d! $ fn (text)
                                      submit-with-key! state (stream-text text) (:search? message-box-state) (:think? message-box-state) d!
                                    , &unit
                                <> |Reply
                              if (:focus-mode? message-box-state) nil $ a
                                {} (:class-name style-focus-link) (:inner-text |Focus) (:role |button) (:aria-label |focus-composer)
                                  :on-click $ fn (e d!)
                                    let
                                        focused $ .-activeElement (unsafe-coerce js/document 'Dynamic)
                                      do
                                        when (js-present-dynamic? focused)
                                          .!blur $ unsafe-coerce focused 'Dynamic
                                        d!
                                          option:unwrap-or
                                            get (>> states :message-box) :cursor
                                            []
                                          assoc message-box-state :focus-mode? true
                                    , &unit
                            , nil
                          if (:loading? state)
                            div ({}) (comp-abort |Loading...)
                          div
                            {} $ :class-name css/row-parted
                            div
                              {} $ :class-name (str-spaced css/row-middle css/gap8)
                              if (:done? state) nil $ div
                                {} $ :style
                                  {} (:display :flex) (:justify-content :center) (:align-items :center)
                                comp-abort |Streaming...
                            if (:done? state)
                              div $ {}
                                :class-name $ str-spaced css/row-middle css/gap8
                        =< nil 200
                      comp-message-box (>> states :message-box)
                        a $ {}
                          :inner-text $ or (turn-str model) |-
                          :role |button
                          :aria-label $ str |model-picker: (turn-string model)
                          :class-name $ str-spaced style-a-toggler
                          :style $ {}
                            :opacity $ if (= model :anthropic) 1 0.3
                          :on-click $ fn (e d!)
                            ; d! $ :: :change-model
                            .show model-plugin d!
                            , &unit
                        fn (text search? think? d!)
                          if (blank? text) (.show text-alert-plugin d!)
                            do
                              when
                                and
                                  > (count messages) 0
                                  :done? state
                                  not $ js-present-dynamic? current-session-id
                                d! $ :: :save-session state
                              d! $ :: :session :session-id nil
                              submit-with-key!
                                -> state
                                  assoc :messages $ []
                                  assoc :answer |
                                  assoc :thinking |
                                  assoc :done? false
                                , text search? think? d!
                        , model
                  model-plugin.render
                  reply-plugin.render
                  text-alert-plugin.render
                  api-key-plugin.render
                  sessions-plugin.render
                  if dev? $ comp-reel (>> states :reel) reel ({})
                  if dev? $ comp-inspect |Store app-store nil
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ [] (:: 'Map 'Tag 'Dynamic)
              :features $ #{} :js-ffi
        'comp-fill $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-fill (text)
              div
                {} (:class-name style-fill) (:role |button) (:aria-label |fill-extension)
                  :on-click $ fn (e d!)
                    when chrome-extension? $ js/chrome.runtime.sendMessage
                      js-object (:action |fill-text) (:text text)
                    , &unit
                comp-i :send 12 :currentColor
          :examples $ []
          :schema $ :: 'Dynamic
        'comp-message-box $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-message-box (states picker-el on-submit model)
              let
                  cursor $ option:unwrap-or (get states :cursor) ([])
                  state $ let
                      raw-message-box-state $ option:unwrap-or (get states :data)
                        {} (:content |) (:search? false) (:think? false) (:focus-mode? false)
                    if (struct? raw-message-box-state) (unsafe-coerce raw-message-box-state 'app.schema/MessageBoxState) (decode-map-as raw-message-box-state 'app.schema/MessageBoxState)
                [] (effect-focus) (on-fill cursor state on-submit)
                  div
                    {} $ :class-name (str-spaced css/center style-message-box-panel)
                    div
                      {} $ :class-name (str-spaced css/column style-message-box)
                      if (:focus-mode? state)
                        div
                          {} (:role |button) (:aria-label |expand-prompt)
                            :class-name $ str-spaced css/font-code! style-focus-box style-textbox-compact
                            :on-click $ fn (e d!)
                              do
                                d! cursor $ assoc state :focus-mode? false
                                js/setTimeout
                                  fn () $ .!focus
                                    unsafe-coerce (js/document.querySelector |#message) 'Dynamic
                                  , 0
                              , &unit
                          <> $ if
                            blank? $ :content state
                            , "|Click to expand and type..." (:content state)
                        textarea $ {}
                          :value $ :content state
                          :placeholder "|Prompt to try LLM..."
                          :id |message
                          :role |textbox
                          :aria-label |prompt-input
                          :class-name $ str-spaced css/textarea css/font-code! style-textbox
                          :on-input $ fn (e d!)
                            d! cursor $ assoc state :content
                              str $ option:unwrap-or (get e :value) |
                            , &unit
                          :on-keydown $ fn (e d!)
                            if
                              and
                                = 13 $ option:unwrap-or (get e :keycode) 0
                                or
                                  option:unwrap-or (get e :meta?) false
                                  option:unwrap-or (get e :ctrl?) false
                              on-submit (:content state) (:search? state) (:think? state) d!
                            , &unit
                          :on-focus $ fn (e d!)
                            let
                                target $ unsafe-coerce
                                  .-target $ option:unwrap-or (get e :event) js/undefined
                                  , 'Dynamic
                                parent $ unsafe-coerce (.-parentElement target) 'Dynamic
                                box $ unsafe-coerce (.-parentElement parent) 'Dynamic
                                class-list $ unsafe-coerce (.-classList target) 'Dynamic
                                box-class $ unsafe-coerce (.-classList box) 'Dynamic
                              if
                                not $ unsafe-coerce (.!contains class-list |focus-within) 'Bool
                                .!add class-list |focus-within
                              if
                                not $ unsafe-coerce (.!contains box-class |focus-within) 'Bool
                                .!add box-class |focus-within
                            , &unit
                          :on-blur $ fn (e d!)
                            let
                                target $ unsafe-coerce
                                  .-target $ option:unwrap-or (get e :event) js/undefined
                                  , 'Dynamic
                                parent $ unsafe-coerce (.-parentElement target) 'Dynamic
                                box $ unsafe-coerce (.-parentElement parent) 'Dynamic
                                class-list $ unsafe-coerce (.-classList target) 'Dynamic
                                box-class $ unsafe-coerce (.-classList box) 'Dynamic
                              if
                                unsafe-coerce (.!contains class-list |focus-within) 'Bool
                                .!remove class-list |focus-within
                              if
                                unsafe-coerce (.!contains box-class |focus-within) 'Bool
                                .!remove box-class |focus-within
                            , &unit
                      if
                        not $ :focus-mode? state
                        do (=< nil 4)
                          div
                            {} $ :class-name css/row-parted
                            if
                              not $ blank? (:content state)
                              span $ {} (:inner-text "|✕")
                                :class-name $ str-spaced style-close style-clear
                                :role |button
                                :aria-label |clear-prompt
                                :on-click $ fn (e d!)
                                  d! cursor $ assoc state :content |
                                  .!focus $ unsafe-coerce (js/document.querySelector |#message) 'Dynamic
                                  , &unit
                              span $ {} (:class-name style-clear)
                            div
                              {} $ :class-name (str-spaced css/row style-gap12)
                              , picker-el
                                if
                                  contains? (#{} :gemini-flash :gemini-3.5-flash :gemini-3.1-flash-lite-preview) model
                                  div
                                    {} (:role |group) (:aria-label |think-toggle)
                                      :class-name $ str-spaced css/row style-checkbox
                                      :on-click $ fn (e d!)
                                        d! cursor $ assoc state :think?
                                          not $ :think? state
                                        , &unit
                                    input $ {}
                                      :checked $ :think? state
                                      :type |checkbox
                                      :role |checkbox
                                      :aria-label |think-toggle
                                    <> |Think css/font-fancy
                                  , nil
                                div
                                  {} (:role |group) (:aria-label |search-toggle)
                                    :class-name $ str-spaced css/row style-checkbox
                                    :on-click $ fn (e d!)
                                      d! cursor $ assoc state :search?
                                        not $ :search? state
                                      , &unit
                                  input $ {}
                                    :checked $ :search? state
                                    :type |checkbox
                                    :role |checkbox
                                    :aria-label |search-toggle
                                  <> |Search css/font-fancy
                                button $ {} (:role |button) (:aria-label |submit-message)
                                  :class-name $ str-spaced css/button style-submit
                                  :inner-text |Submit
                                  :on-click $ fn (e d!)
                                    on-submit (:content state) (:search? state) (:think? state) d!
                                    , &unit
                        , nil
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ [] 'Map 'Dynamic 'Dynamic 'Dynamic
              :features $ #{} :js-ffi
        'comp-sessions-modal $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-sessions-modal (sessions archived-count on-select on-close on-view-archive)
              let
                  history-items $ foldl sessions 0
                    fn (acc session)
                      hint-fn $ {}
                        :args $ [] 'Number 'app.schema/ChatSession
                      + acc $ count
                        or (:messages session) ([])
                div
                  {} $ :class-name (str-spaced css/column css/gap8 style-sessions-list)
                  if (> archived-count 0)
                    div
                      {} $ :class-name style-archive-row
                      span $ {}
                        :style $ {}
                          :color $ hsl 0 0 50
                        :inner-text $ str "|Archived: " archived-count "| sessions"
                      button
                        {} (:class-name css/button)
                          :style $ {} (:cursor :pointer)
                          :on-click $ fn (e d!) (on-close d!) (on-view-archive d!) &unit
                        <> "|View Archive"
                  if (empty? sessions)
                    div
                      {} $ :style
                        {} (:padding |12px)
                          :color $ hsl 0 0 60
                      <> "|No history sessions"
                    list->
                      {} $ :class-name css/column
                      -> sessions reverse $ map
                        fn (session)
                          hint-fn $ {}
                            :args $ [] 'app.schema/ChatSession
                          let
                              session-id $ :id session
                              created-at $ :created-at session
                              preview $ :preview session
                              date-str $ unsafe-coerce
                                .!toLocaleString $ new js/Date created-at
                                , 'String
                            [] session-id $ div
                              {} $ :class-name style-session-item
                              div
                                {} (:role |button)
                                  :aria-label $ str |session-select: preview
                                  :style $ {} (:flex |1) (:cursor :pointer) (:min-width 0) (:overflow :hidden)
                                  :on-click $ fn (e d!) (on-select session-id d!) (on-close d!) &unit
                                div
                                  {} $ :style
                                    {} (:font-size |12px)
                                      :color $ hsl 0 0 60
                                  <> date-str
                                div
                                  {} $ :style
                                    {} (:margin-top |4px) (:white-space :nowrap) (:overflow :hidden) (:text-overflow :ellipsis) (:max-height |1.2em) (:line-height |1.2)
                                  <> preview
                              div
                                {} (:class-name style-delete-button) (:role |button)
                                  :aria-label $ str |session-delete: session-id
                                  :on-click $ fn (e d!)
                                    let
                                        event $ unsafe-coerce
                                          option:unwrap-or (get e :event) js/undefined
                                          , 'Dynamic
                                      .!stopPropagation event
                                    d! $ :: :remove-session session-id
                                    , &unit
                                <> "|✕"
                  if
                    > (count sessions) 0
                    div
                      {}
                        :class-name $ str-spaced css/column css/gap8
                        :style $ {} (:padding "|0 12px 12px 12px")
                      div
                        {} $ :class-name (str-spaced css/row-parted)
                        div
                          {} $ :class-name (str-spaced css/row css/gap8)
                          a $ {} (:class-name style-clear) (:inner-text |Data) (:role |button) (:aria-label |sessions-export-data)
                            :on-click $ fn (e d!) (tab-echo! sessions :edn) &unit
                          a $ {} (:class-name style-clear) (:inner-text |Download) (:role |button) (:aria-label |sessions-download)
                            :on-click $ fn (e d!) (download-sessions! sessions) &unit
                        if
                          > (count sessions) 0
                          a $ {} (:class-name style-clear) (:inner-text "|Archive all") (:role |button) (:aria-label |sessions-archive-all)
                            :on-click $ fn (e d!)
                              hint-fn $ {} (:async true)
                              let
                                  proceed? $ js/confirm
                                    str "|Archive " (count sessions) "| sessions and clear active view?"
                                when proceed? $ let
                                    archive-key $ :archive-key site
                                    raw $ js-await (db-get archive-key)
                                    old-archives $ if (blank? raw) ([]) (parse-cirru-edn raw)
                                    new-archives $ concat old-archives sessions
                                  js-await $ db-set archive-key (format-cirru-edn new-archives)
                                  d! $ :: :archive-sessions (count new-archives)
                              , &unit
                          span $ {}
                      div $ {}
                        :style $ {} (:height 200)
                    , nil
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ [] (:: 'List 'app.schema/ChatSession) 'Number 'Dynamic 'Dynamic 'Dynamic
              :features $ #{} :js-ffi
        'create-session $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn create-session (messages model)
              let
                  id $ generate-session-id
                  first-msg $ option:fold (first messages)
                    fn () |New-chat
                    fn (message)
                      hint-fn $ {}
                        :args $ [] 'app.schema/ChatMessage
                      :content message
                %{} ChatSession (:id id)
                  :created-at $ unsafe-coerce (js/Date.now) 'Number
                  :messages messages
                  :model model
                  :preview $ let
                      len $ count first-msg
                      end $ if (< len 100) len 100
                    slice first-msg 0 end
                  :is-history? false
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'app.schema/ChatSession)
              :args $ [] (:: 'List 'app.schema/ChatMessage) 'Tag
        'decode-genai-chunk $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn decode-genai-chunk (chunk)
              hint-fn $ {}
                :args $ [] 'JsObject
                :return 'app.comp.container/StreamChunk
                :features $ #{} :js-ffi
              let
                  chunk-data $ unsafe-coerce chunk 'Dynamic
                  candidates0 $ .?-candidates chunk-data
                  candidate0 $ if (js-present-dynamic? candidates0)
                    .?-0 $ unsafe-coerce candidates0 'Dynamic
                    , js/undefined
                  content0 $ if (js-present-dynamic? candidate0)
                    .?-content $ unsafe-coerce candidate0 'Dynamic
                    , js/undefined
                  parts0 $ if (js-present-dynamic? content0)
                    .?-parts $ unsafe-coerce content0 'Dynamic
                    , js/undefined
                  part0 $ if (js-present-dynamic? parts0)
                    .?-0 $ unsafe-coerce parts0 'Dynamic
                    , js/undefined
                  part $ unsafe-coerce part0 'Dynamic
                  thought0 $ if (js-present-dynamic? part0) (.?-thought part) js/undefined
                  thinking? $ if (bool? thought0) (unsafe-coerce thought0 'Bool) false
                  part-text $ if (js-present-dynamic? part0) (.?-text part) js/undefined
                  chunk-text $ .?-text chunk-data
                  primary-text $ if (js-present-dynamic? part-text) part-text chunk-text
                  prompt-feedback $ .?-promptFeedback chunk-data
                  fallback-text $ if (js-present-dynamic? prompt-feedback)
                    .?-blockReason $ unsafe-coerce prompt-feedback 'Dynamic
                    , js/undefined
                  text0 $ if (js-present-dynamic? primary-text) primary-text fallback-text
                  text $ stream-text text0
                %{} StreamChunk (:text text) (:thinking? thinking?)
          :examples $ []
            quote $ let
                feedback-only $ js-object
                  :promptFeedback $ js-object (:blockReason |blocked)
                decoded $ unsafe-coerce (decode-genai-chunk feedback-only) 'app.comp.container/StreamChunk
              assert= |blocked $ :text decoded
              assert= false $ :thinking? decoded
          :schema $ :: 'Fn
            {} (:return 'app.comp.container/StreamChunk)
              :args $ [] 'JsObject
              :features $ #{} :js-ffi
        'download-sessions! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn download-sessions! (sessions)
              let
                  content $ format-cirru-edn sessions
                  blob $ unsafe-coerce
                    new js/Blob (js-array content)
                      js-object $ :type |application/edn;charset=utf-8
                    , 'Dynamic
                  url $ unsafe-coerce (js/URL.createObjectURL blob) 'String
                  link $ unsafe-coerce (js/document.createElement |a) 'Dynamic
                  filename $ str |sessions- (js/Date.now) |.cirru
                do (.!setAttribute link |href url) (.!setAttribute link |download filename)
                  .!appendChild (unsafe-coerce js/document.body 'Dynamic) link
                  .!click link
                  .!remove link
                  js/setTimeout
                    fn () $ js/URL.revokeObjectURL url
                    , 0
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ [] (:: 'List 'app.schema/ChatSession)
              :features $ #{} :js-ffi
        'effect-focus $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defeffect effect-focus () (action el at?)
              when (= action :mount)
                js/setTimeout
                  fn () $ let
                      textarea $ unsafe-coerce
                        .!querySelector (unsafe-coerce el 'Dynamic) |textarea
                        , 'Dynamic
                    .!select textarea
                  , 0
          :examples $ []
          :schema $ :: 'Dynamic
        'first-line $ %{} 'CodeEntry (:doc "|last message from error contains a line starts with \"data: \" and an extra error message. In order that JSON is parsed correctly, only first line is used now.")
          :code $ quote
            defn first-line (tt)
              let
                  lines $ -> tt (.!split &newline)
                    .!filter $ fn (line idx _a)
                      not $ blank? line
                if
                  > (.-length lines) 1
                  js/console.warn "|Droping some unexpected lines:" $ .!slice lines 1
                .-0 lines
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'String)
              :args $ [] 'String
        'generate-session-id $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn generate-session-id () $ str (js/Date.now)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'String)
              :args $ []
        'get-anthropic-key! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn get-anthropic-key! () $ required-key! |claude-key "|Required claude-key in localStorage"
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'String)
              :args $ []
              :features $ #{} :js-ffi
        'get-deepinfra-key! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn get-deepinfra-key! () $ required-key! |deepinfra-key "|Required deepinfra-key in localStorage"
          :examples $ []
          :schema $ :: 'Dynamic
        'get-deepseek-key! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn get-deepseek-key! () $ let
                key $ required-key! |deepseek-key "|Required deepseek-key in localStorage"
              do
                when chrome-extension? $ js/chrome.storage.local.set
                  js-object $ :deepseekKey key
                , key
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'String)
              :args $ []
              :features $ #{} :js-ffi
        'get-gemini-key! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn get-gemini-key! () $ let
                key $ required-key! |gemini-key "|Required gemini-key in localStorage"
              do
                when chrome-extension? $ js/chrome.storage.local.set
                  js-object $ :geminiKey key
                , key
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'String)
              :args $ []
              :features $ #{} :js-ffi
        'get-openrouter-key! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn get-openrouter-key! () $ required-key! |openrouter-key "|Required openrouter-key in localStorage"
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'String)
              :args $ []
              :features $ #{} :js-ffi
        'js-present-dynamic? $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn js-present-dynamic? (value)
              unsafe-coerce (js/Boolean value) 'Bool
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Bool)
              :args $ [] 'Dynamic
        'json-pattern? $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn json-pattern? (text)
              or (starts-with? text |{) (starts-with? text |[)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Bool)
              :args $ [] 'String
        'messages->anthropic $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn messages->anthropic (messages)
              to-js-data $ map messages
                fn (m)
                  hint-fn $ {}
                    :args $ [] 'app.schema/ChatMessage
                  {}
                    :role $ if
                      = :assistant $ :role m
                      , |assistant |user
                    :content $ :content m
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ [] (:: 'List 'app.schema/ChatMessage)
              :features $ #{} :js-ffi
        'messages->gemini $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn messages->gemini (messages)
              to-js-data $ map messages
                fn (m)
                  hint-fn $ {}
                    :args $ [] 'app.schema/ChatMessage
                  {}
                    :role $ if
                      = :assistant $ :role m
                      , |model |user
                    :parts $ []
                      {} $ :text (:content m)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ [] (:: 'List 'app.schema/ChatMessage)
              :features $ #{} :js-ffi
        'messages->openai $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn messages->openai (messages)
              to-js-data $ map messages
                fn (m)
                  hint-fn $ {}
                    :args $ [] 'app.schema/ChatMessage
                  {}
                    :role $ if
                      = :assistant $ :role m
                      , |assistant |user
                    :content $ :content m
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ [] (:: 'List 'app.schema/ChatMessage)
              :features $ #{} :js-ffi
        'model-storage-key $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn model-storage-key (model)
              case-default model |gemini-key (:claude-3.7 |claude-key) (:openrouter/anthropic/claude-sonnet-4 |openrouter-key) (:openrouter/anthropic/claude-sonnet-4.5 |openrouter-key) (:openrouter/anthropic/claude-opus-4 |openrouter-key) (:openrouter/anthropic/claude-3.7-sonnet:thinking |openrouter-key) (:openrouter/google/gemini-2.5-pro-preview |openrouter-key) (:openrouter/google/gemini-2.5-flash-preview-05-20 |openrouter-key) (:openrouter/openai/gpt-5 |openrouter-key) (:openrouter/deepseek/deepseek-chat-v3.1 |openrouter-key) (:deepseek-v4-pro |deepseek-key) (:deepseek-v4-flash |deepseek-key)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'String)
              :args $ [] 'Tag
          :tests $ []
            %{} 'TestEntry (:name |maps-provider-keys)
              :code $ quote
                do
                  assert= |gemini-key $ model-storage-key :gemini
                  assert= |openrouter-key $ model-storage-key :openrouter/openai/gpt-5
                  assert= |deepseek-key $ model-storage-key :deepseek-v4-pro
                  assert= |claude-key $ model-storage-key :claude-3.7
        'models-menu $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def models-menu $ [] (:: :item :gemini-3.5-flash-lite "|Gemini Flash Lite 3.5") (:: :item :gemini-3.6-flash "|Gemini Flash 3.6") (:: :item :gemini-3.7-flash "|Gemini Flash 3.7") (:: :item :gemini-flash "|Gemini Flash 3") (:: :item :gemini-3.5-flash "|Gemini Flash 3.5") (:: :item :gemini-pro "|Gemini Pro 3.1") (:: :item :gemini-3.1-flash-lite-preview "|Gemini Flash Lite 3.1") (:: :item :flash-imagen "|Flash Imagen") (:: :item :imagen-4 "|Imagen 4") (:: :item :gemma "|Gemma 3 27b") (:: :item :openrouter/anthropic/claude-sonnet-4.5 "|Openrouter Claude Sonnet 4.5") (:: :item :openrouter/anthropic/claude-opus-4 "|Openrouter Claude Opus 4") (:: :item :openrouter/google/gemini-2.5-pro-preview "|Openrouter Google Gemini 2.5 pro preview") (:: :item :openrouter/google/gemini-2.5-flash-preview-05-20 "|Openrouter Google Gemini 2.5 flash preview") (:: :item :openrouter/openai/gpt-5 "|Openrouter GPT 5") (:: :item :openrouter/deepseek/deepseek-chat-v3.1 "|Openrouter deepseek-chat-v3.1") (:: :item :deepseek-v4-pro "|DeepSeek V4 Pro") (:: :item :deepseek-v4-flash "|DeepSeek V4 Flash") (; :: :item :claude-4.5 "|Claude 4.5")
          :examples $ []
          :schema $ :: 'List
        'normalize-chat-state $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn normalize-chat-state (raw)
              hint-fn $ {}
                :args $ [] 'T
                :return 'app.schema/ChatState
                :features $ #{} :js-ffi
                :generics $ [] 'T
              if (struct? raw)
                let
                    state $ unsafe-coerce raw 'app.schema/ChatState
                  %{} app.schema/ChatState
                    :answer $ stream-text (:answer state)
                    :loading? $ :loading? state
                    :done? $ :done? state
                    :messages $ :messages state
                    :model $ if
                      tag? $ :model state
                      :model state
                      , :gemini
                    :thinking $ stream-text (:thinking state)
                let
                    data $ unsafe-coerce raw (:: 'Map 'Tag 'Dynamic)
                    loading-value $ option:unwrap-or (get data :loading?) false
                    done-value $ option:unwrap-or (get data :done?) true
                    model-value $ option:unwrap-or (get data :model) :gemini
                  %{} app.schema/ChatState
                    :answer $ stream-text
                      option:unwrap-or (get data :answer) |
                    :loading? $ if (bool? loading-value) loading-value false
                    :done? $ if (bool? done-value) done-value true
                    :messages $ unsafe-coerce
                      option:unwrap-or (get data :messages) ([])
                      :: 'List 'app.schema/ChatMessage
                    :model $ if (tag? model-value) model-value :gemini
                    :thinking $ stream-text
                      option:unwrap-or (get data :thinking) |
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'app.schema/ChatState)
              :args $ [] 'T
              :features $ #{} :js-ffi
              :generics $ [] 'T
          :tests $ []
            %{} 'TestEntry (:name |legacy-nil-fields)
              :code $ quote
                let
                    legacy $ unsafe-coerce
                      normalize-chat-state $ {} (:answer nil) (:loading? false) (:done? true)
                        :messages $ []
                        :model :gemini
                        :thinking nil
                      , 'app.schema/ChatState
                    missing-done $ unsafe-coerce
                      normalize-chat-state $ {} (:answer |) (:loading? false)
                        :messages $ []
                        :model :gemini
                        :thinking |
                      , 'app.schema/ChatState
                    invalid-done $ unsafe-coerce
                      normalize-chat-state $ {} (:answer |) (:loading? false) (:done? nil)
                        :messages $ []
                        :model :gemini
                        :thinking |
                      , 'app.schema/ChatState
                  is $ = | (:answer legacy)
                  is $ = | (:thinking legacy)
                  is $ :done? missing-done
                  is $ :done? invalid-done
        'on-fill $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn on-fill (cursor state on-submit)
              %{} respo.schema/RespoListener (:name :on-fill)
                :handler $ fn (event dispatch!)
                  match event $
                    :fill-text info
                    let
                        submit? $ option:unwrap-or (get info :submit?) true
                        text $ option:unwrap-or (get info :text) |
                      do
                        dispatch! (:: :states cursor) (assoc state :content text)
                        if submit?
                          on-submit text (:search? state) (:think? state) dispatch!
                          , nil
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ [] 'Dynamic 'app.schema/MessageBoxState 'Dynamic
        'pattern-spaced-code $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def pattern-spaced-code $ noted "|temp fix of nested code block" (&raw-code "|/\\n\\s+```/g")
          :examples $ []
          :schema $ :: 'Dynamic
        'pick-model $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn pick-model (variant)
              case-default variant |gemini-3.5-flash (:gemini-3.5-flash-lite |gemini-3.1-flash-lite) (:gemini-3.6-flash |gemini-3.5-flash) (:gemini-3.7-flash |gemini-3.7-flash) (:gemini-3.5-flash-lite |gemini-3.1-flash-lite) (:gemini-3.1-flash-lite-preview |gemini-3.1-flash-lite) (:gemini-pro |gemini-3.1-pro-preview) (:gemma |gemma-3-27b-it)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'String)
              :args $ [] 'Tag
        'required-key! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn required-key! (storage-key prompt-text)
              let
                  stored $ js/localStorage.getItem storage-key
                  key $ if (js-present-dynamic? stored) (unsafe-coerce stored 'String) |
                if (blank? key)
                  raise $ new js/Error prompt-text
                  , key
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'String)
              :args $ [] 'String 'String
              :features $ #{} :js-ffi
        'save-current-session $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn save-current-session (store state)
              let
                  messages $ :messages state
                  model $ either (:model state) :gemini
                if
                  > (count messages) 0
                  let
                      new-session $ create-session messages model
                      updated-session $ assoc new-session :is-history? true
                      sessions $ or (:sessions store) ([])
                    assoc store :sessions $ append sessions updated-session
                  , store
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'app.schema/Store)
              :args $ [] 'app.schema/Store 'app.schema/ChatState
        'stream-text $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn stream-text (value)
              hint-fn $ {}
                :generics $ [] 'T
                :args $ [] 'T
                :return 'String
                :features $ #{} :js-ffi
              if (string? value) value |
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'String)
              :args $ [] 'T
              :features $ #{} :js-ffi
              :generics $ [] 'T
          :tests $ []
            %{} 'TestEntry (:name |keeps-string)
              :code $ quote
                is $ = |hello (stream-text |hello)
              :tags $ #{} :unit
            %{} 'TestEntry (:name |ignores-non-string)
              :code $ quote
                is $ = | (stream-text nil)
              :tags $ #{} :regression :unit
        'style-a-toggler $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-a-toggler $ {}
              |& $ {} (:cursor :pointer) (:background-color :white) (:color :black)
              "|.focus-within &" $ {} (:color :black)
          :examples $ []
          :schema $ :: 'Dynamic
        'style-abort-close $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-abort-close $ {}
              |& $ {} (:vertical-align :middle) (:font-size 10)
          :examples $ []
          :schema $ :: 'Dynamic
        'style-app-global $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-app-global $ {}
                str "|& ." style-code-block
                {} $ :max-width |90vw
              |& $ {} (:color |#999) (:transition-duration |300ms)
                :background-color $ hsl 0 0 98
                :touch-action :none
              |&:hover $ {} (:color |#777)
                :background-color $ hsl 0 0 100
          :examples $ []
          :schema $ :: 'Dynamic
        'style-archive-close $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-archive-close $ {}
              |& $ {} (:cursor :pointer) (:font-size 18)
                :color $ hsl 0 0 50
                :transition-duration |200ms
              |&:hover $ {}
                :color $ hsl 0 0 20
          :examples $ []
          :schema $ :: 'Dynamic
        'style-archive-header $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-archive-header $ {}
              |& $ {} (:padding "|12px 16px")
                :border-bottom $ str "|1px solid " (hsl 0 0 90)
                :background-color $ hsl 0 0 96
                :display :flex
                :flex-direction :row
                :align-items :center
                :justify-content :space-between
          :examples $ []
          :schema $ :: 'Dynamic
        'style-archive-row $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-archive-row $ {}
              |& $ {} (:padding |12px)
                :border-bottom $ str "|1px solid " (hsl 0 0 90)
                :display :flex
                :justify-content :space-between
                :align-items :center
          :examples $ []
          :schema $ :: 'Dynamic
        'style-checkbox $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-checkbox $ {}
              |& $ {} (:cursor :pointer) (:user-select :none) (:font-size 12) (:line-height |28px) (:vertical-align :middle)
          :examples $ []
          :schema $ :: 'Dynamic
        'style-clear $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-clear $ {}
              |& $ {} (:opacity 0.4) (:padding "|4px 8px") (:display :inline-block) (:height |24px)
          :examples $ []
          :schema $ :: 'Dynamic
        'style-code-content $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-code-content $ {}
              |& $ {} (:line-height |1.5) (:font-size 13)
          :examples $ []
          :schema $ :: 'Dynamic
        'style-delete-button $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-delete-button $ {}
              |& $ {} (:padding "|4px 8px") (:font-size |18px) (:font-weight |50)
                :color $ hsl 0 80 50
                :opacity 0.5
                :cursor :pointer
                :transition "|opacity 0.15s, color 0.15s"
                :user-select :none
              |&:hover $ {} (:opacity 1)
                :color $ hsl 0 90 45
              |&:active $ {} (:opacity 1)
                :color $ hsl 0 90 40
          :examples $ []
          :schema $ :: 'Dynamic
        'style-fill $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-fill $ {}
              |& $ {} (:cursor :pointer) (:user-select :none) (:display :inline-flex) (:align-items :center) (:justify-content :center) (:transition-duration |200ms)
                :color $ hsl 0 0 80
                :margin "|0 4px 0 8px"
              |&:hover $ {}
                :color $ hsl 0 0 40
                :transform "|scale(1.06)"
          :examples $ []
          :schema $ :: 'Dynamic
        'style-focus-box $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-focus-box $ {}
              |& $ {} (:width |100%) (:border-radius 12) (:min-height 40) (:max-height 40) (:padding "|9px 12px") (:cursor :text) (:overflow :hidden) (:white-space :pre) (:text-overflow :ellipsis) (:background-color :transparent)
          :examples $ []
          :schema $ :: 'Dynamic
        'style-focus-link $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-focus-link $ {}
              |& $ {} (:cursor :pointer) (:font-size 13)
                :color $ hsl 200 80 40
                :text-decoration :none
                :padding "|4px 0"
              |&:hover $ {} (:text-decoration :underline)
          :examples $ []
          :schema $ :: 'Dynamic
        'style-gap12 $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-gap12 $ {}
              |& $ {} (:gap 12)
          :examples $ []
          :schema $ :: 'Dynamic
        'style-history-button $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-history-button $ {}
              |& $ {} (:font-size |20px)
                :color $ hsl 200 80 60
                :height |14px
                :line-height |14px
                :display :flex
                :align-items :center
                :justify-content :center
                |&:hover $ {}
                  :color $ hsl 200 80 50
          :examples $ []
          :schema $ :: 'Dynamic
        'style-history-count $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-history-count $ {}
              |& $ {}
                :color $ hsl 200 80 60
                :font-size |12px
                :display :inline-block
          :examples $ []
          :schema $ :: 'Dynamic
        'style-image $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-image $ {}
              |& $ {} (:max-width |100%) (:align-self :flex-start) (:border-radius |6px)
                :border $ str "|1px solid " (hsl 0 0 90)
          :examples $ []
          :schema $ :: 'Dynamic
        'style-md-content $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-md-content $ {}
              "|& .md-p" $ {} (:margin "|16px 0") (:line-height |1.6)
          :examples $ []
          :schema $ :: 'Dynamic
        'style-message-actions $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-message-actions $ {}
              |& $ {} (:margin-top 6) (:justify-content :flex-end) (:width |100%)
          :examples $ []
          :schema $ :: 'Dynamic
        'style-message-area $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-message-area $ {}
              |& $ {} (:flex 2) (:overflow :scroll)
          :examples $ []
          :schema $ :: 'Dynamic
        'style-message-assistant $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-message-assistant $ {}
              |& $ {} (:align-self :flex-start)
          :examples $ []
          :schema $ :: 'Dynamic
        'style-message-box $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-message-box $ {}
              |& $ {} (:width |100%) (:max-width 1200) (:right |50%) (:padding |8px) (:margin :auto) (:transition-duration |300ms) (; :transform "|translate(50%,0)") (:transition-property |height)
              |&:focus-within $ {} (:opacity 1) (; :transform "|translate(50%,0)")
          :examples $ []
          :schema $ :: 'Dynamic
        'style-message-box-panel $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-message-box-panel $ {}
              |& $ {} (:position :absolute) (:bottom 0) (:opacity 1) (:width |100%)
                :background-color $ hsl 0 0 100 0.7
                :border-top $ str "|1px solid " (hsl 0 0 80 0.6)
              |&.focus-within $ {}
                :background-color $ hsl 0 0 100 0.9
                :box-shadow $ str "|0 0px 8px " (hsl 0 0 0 0.3)
          :examples $ []
          :schema $ :: 'Dynamic
        'style-message-item $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-message-item $ {}
              |& $ {} (:line-height |1.6)
          :examples $ []
          :schema $ :: 'Dynamic
        'style-message-list $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-message-list $ {}
              |& $ {} (:flex 2) (:padding "|40px 16px 20vh 16px") (:width |100%) (:max-width 1200) (:margin :auto) (:position :relative)
          :examples $ []
          :schema $ :: 'Dynamic
        'style-message-role $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-message-role $ {}
              |& $ {} (:font-size 12)
                :color $ hsl 0 0 50
                :margin-bottom 6
                :padding-right |16px
          :examples $ []
          :schema $ :: 'Dynamic
        'style-message-text $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-message-text $ {}
              |& $ {} (:white-space :pre-wrap) (:line-height |1.6) (:margin 0) (:padding-right |16px)
          :examples $ []
          :schema $ :: 'Dynamic
        'style-message-user $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-message-user $ {}
              |& $ {} (:align-self :flex-end)
                :background-color $ hsl 0 0 96
                :padding "|12px 0 12px 16px"
                :border-radius 10
                :max-height |240px
                :max-width |100%
                :overflow-y :auto
              |&::-webkit-scrollbar $ {} (:width |4px)
              |&::-webkit-scrollbar-thumb $ {}
                :background-color $ hsl 0 0 80
                :border-radius |2px
              |&::-webkit-scrollbar-track $ {} (:background-color :transparent)
          :examples $ []
          :schema $ :: 'Dynamic
        'style-more $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-more $ {}
              |& $ {} (:text-align :center) (:min-width 80)
                :background-color $ hsl 0 0 94
                :border-radius 16
                :padding "|4px 12px"
                :margin "|8px 0"
                :white-space :nowrap
                :display :inline-block
              |&:hover $ {}
                :box-shadow $ str "|1px 1px 4px " (hsl 0 0 0 0.2)
          :examples $ []
          :schema $ :: 'Dynamic
        'style-reply-actions $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-reply-actions $ {}
              |& $ {} (:margin-top 6) (:justify-content :flex-start) (:width |100%)
          :examples $ []
          :schema $ :: 'Dynamic
        'style-reply-button $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-reply-button $ {}
              |& $ {} (:text-align :center) (:min-width 80)
                :background-color $ hsl 0 0 100
                :border-radius 16
                :padding "|4px 12px"
                :margin "|8px 0"
                :white-space :nowrap
                :display :inline-block
              |&:hover $ {}
                :box-shadow $ str "|1px 1px 4px " (hsl 0 0 0 0.2)
          :examples $ []
          :schema $ :: 'Dynamic
        'style-session-item $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-session-item $ {}
              |& $ {} (:padding |12px)
                :border-bottom $ str "|1px solid " (hsl 0 0 90)
                :display :flex
                :flex-direction :row
                :align-items :center
                :gap |12px
                |:hover $ {}
                  :background-color $ hsl 0 0 96
          :examples $ []
          :schema $ :: 'Dynamic
        'style-sessions-list $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-sessions-list $ {}
              |& $ {} (:flex |1) (:overflow-y :auto) (:min-width |300px)
          :examples $ []
          :schema $ :: 'Dynamic
        'style-submit $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-submit $ {}
              |& $ {}
          :examples $ []
          :schema $ :: 'Dynamic
        'style-textbox $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-textbox $ {}
              |& $ {} (:border-radius 12) (:height "|max(100px,15vh)") (:width |100%) (:transition-duration |320ms) (:border :none) (:background-color :transparent)
              |&.focus-within $ {} (:height "|max(240px,32vh)") (:border :none) (:box-shadow :none)
          :examples $ []
          :schema $ :: 'Dynamic
        'style-textbox-compact $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-textbox-compact $ {}
              |& $ {} (:height 40) (:min-height 40) (:max-height 40) (:overflow :hidden)
              |&.focus-within $ {} (:height "|max(240px,32vh)") (:min-height |unset) (:max-height |unset)
          :examples $ []
          :schema $ :: 'Dynamic
        'style-thinking $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-thinking $ {}
              |& $ {} (:max-height 200) (:overflow :auto) (:padding "|12px 16px")
                :background-color $ hsl 0 0 96
                :font-size 12
                :line-height |1.8
                :color $ hsl 0 0 50
                :border-radius 8
                :margin-bottom 12
                :border $ str "|1px solid " (hsl 0 0 90)
              "|& .md-p" $ {} (:margin "|4px 0")
          :examples $ []
          :schema $ :: 'Dynamic
        'submit-message! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn submit-message! (cursor state prompt-text search? think? model d!)
              hint-fn $ {} (:async true)
              let
                  state1 $ unsafe-coerce
                    assoc state :messages $ append-user-message (:messages state) prompt-text
                    , 'app.schema/ChatState
                  *text $ atom |
                  *thinking-text $ atom |
                  model $ :model state
                d! cursor state1
                try
                  do $ case-default model
                    js-await $ call-genai-msg! model cursor state1 prompt-text search? think? d! *text *thinking-text
                    :gemini-3.1-flash-lite-preview $ js-await (call-genai-msg! model cursor state1 prompt-text search? think? d! *text *thinking-text)
                    :gemini-pro $ js-await (call-genai-msg! model cursor state1 prompt-text search? true d! *text *thinking-text)
                    :flash-imagen $ js-await (call-flash-imagen-msg! model cursor state1 prompt-text d!)
                    :imagen-4 $ js-await (call-imagen-4-msg! model cursor state1 prompt-text d!)
                    :gemini-thinking $ js-await (call-genai-msg! model cursor state1 prompt-text search? think? d! *text *thinking-text)
                    :gemini-flash-thinking $ js-await (call-genai-msg! model cursor state1 prompt-text search? think? d! *text *thinking-text)
                    :gemini-flash-lite $ js-await (call-genai-msg! model cursor state1 prompt-text search? think? d! *text *thinking-text)
                    :gemini-flash $ js-await (call-genai-msg! model cursor state1 prompt-text search? think? d! *text *thinking-text)
                    :gemini-learnlm $ js-await (call-genai-msg! model cursor state1 prompt-text search? think? d! *text *thinking-text)
                    :claude-3.7 $ js-await (call-anthropic-msg! cursor state1 prompt-text |claude-3-7-sonnet-20250219 false d!)
                    :openrouter/anthropic/claude-sonnet-4 $ js-await (call-openrouter! cursor state1 prompt-text |anthropic/claude-sonnet-4 true d! *text)
                    :openrouter/anthropic/claude-sonnet-4.5 $ js-await (call-openrouter! cursor state1 prompt-text |anthropic/claude-sonnet-4.5 true d! *text)
                    :openrouter/anthropic/claude-opus-4 $ js-await (call-openrouter! cursor state1 prompt-text |anthropic/claude-opus-4 true d! *text)
                    :openrouter/anthropic/claude-3.7-sonnet:thinking $ js-await (call-openrouter! cursor state1 prompt-text |anthropic/claude-3.7-sonnet:thinking true d! *text)
                    :openrouter/google/gemini-2.5-pro-preview $ js-await (call-openrouter! cursor state1 prompt-text |google/gemini-2.5-pro-preview true d! *text)
                    :openrouter/google/gemini-2.5-flash-preview-05-20 $ js-await (call-openrouter! cursor state1 prompt-text |google/gemini-2.5-flash-preview-05-20 true d! *text)
                    :openrouter/openai/gpt-5 $ js-await (call-openrouter! cursor state1 prompt-text |openai/gpt-5 true d! *text)
                    :openrouter/deepseek/deepseek-chat-v3.1 $ js-await (call-openrouter! cursor state1 prompt-text |deepseek/deepseek-chat-v3.1 true d! *text)
                    :deepseek-v4-pro $ js-await (call-openrouter! cursor state1 prompt-text |deepseek-v4-pro true d! *text)
                    :deepseek-v4-flash $ js-await (call-openrouter! cursor state1 prompt-text |deepseek-v4-flash true d! *text)
                  fn (e)
                    do (js/console.error :msg-buffer-request-failed e)
                      let
                          err-text $ str |Failed-to-load: e
                        d! cursor $ -> state1 (assoc :answer err-text) (assoc :loading? false) (assoc :done? true)
                          assoc :messages $ upsert-assistant-message (:messages state1) err-text |
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ [] 'List 'app.schema/ChatState 'String 'Bool 'Bool 'Tag 'Dynamic
              :features $ #{} :js-ffi
        'upsert-assistant-message $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn upsert-assistant-message (messages content thinking)
              let
                  size $ count messages
                option:fold (last messages)
                  fn () $ conj messages
                    %{} ChatMessage (:role :assistant) (:content content) (:thinking thinking)
                  fn (last-msg)
                    hint-fn $ {}
                      :args $ [] 'app.schema/ChatMessage
                    if
                      = :assistant $ :role last-msg
                      assoc messages (dec size)
                        -> last-msg (assoc :content content) (assoc :thinking thinking)
                      conj messages $ %{} ChatMessage (:role :assistant) (:content content) (:thinking thinking)
          :examples $ []
          :schema $ :: 'Fn
            {}
              :args $ [] (:: 'List 'app.schema/ChatMessage) 'String 'String
              :return $ :: 'List 'app.schema/ChatMessage
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.comp.container $ :require (respo-ui.css :as css)
            respo.css :refer $ defstyle
            respo.util.format :refer $ hsl
            respo.core :refer $ defcomp defeffect <> >> list-> div button textarea span input a pre img memo-comp-by
            respo.comp.space :refer $ =<
            respo.comp.inspect :refer $ comp-inspect
            reel.comp.reel :refer $ comp-reel
            app.config :refer $ dev? chrome-extension? site
            |axios :default axios
            respo-md.comp.md :refer $ comp-md-block style-code-block
            respo-ui.comp :refer $ comp-copy style-close
            |../extension/get-selected :refer $ get-selected
            |../lib/db :refer $ db-get db-set
            |../lib/image :refer $ base64ToBlob
            feather.core :refer $ comp-i
            respo-alerts.core :refer $ [] use-modal-menu use-prompt use-drawer use-alert
            respo-ui.util :refer $ tab-echo!
            app.schema :refer $ Store ChatState ChatSession ChatMessage MessageBoxState store
            calcit.test :refer $ [] is
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'Site $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstruct Site (:storage-key 'String) (:archive-key 'String)
          :examples $ []
          :schema $ :: 'StructDef
        'chrome-extension? $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def chrome-extension? $ let
                runtime $ .?-runtime js/window.chrome
              and (js-present? runtime)
                js-present? $ .?-id runtime
          :examples $ []
          :schema $ :: 'Bool
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def dev? $ = |dev
              option:unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ :: 'Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote
            %{} Site (:storage-key |msg-buffer) (:archive-key |msg-buffer-archive)
          :examples $ []
          :schema $ :: 'app.config/Site
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote (ns app.config)
    'app.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
          :examples $ []
          :schema $ :: 'Ref
        'connect-to-worker! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn connect-to-worker! () $ when config/chrome-extension?
              let
                  port $ js/chrome.runtime.connect
                    js-object $ :name |mySidepanel
                when (js-present? port)
                  let
                      on-disconnect $ .?-onDisconnect port
                    when (js-present? on-disconnect)
                      .!addListener on-disconnect $ fn (event)
                        do (println |Worker-disconnected-retrying) (js/setTimeout connect-to-worker! 500)
          :examples $ []
          :schema $ :: 'Dynamic
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn dispatch! (op)
              when
                and config/dev? $ not= op :states
                js/console.log |Dispatch: op
              reset! *reel $ reel-updater updater @*reel op
          :examples $ []
          :schema $ :: 'Dynamic
        'hydrate-storage-later! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn hydrate-storage-later! () $ js/setTimeout
              fn () $ let
                  raw $ js/localStorage.getItem (:storage-key config/site)
                when (js-present? raw)
                  let
                      t-start $ unsafe-coerce (js/Date.now) 'Number
                      serialized $ unsafe-coerce raw 'String
                    dispatch! $ :: :hydrate-storage (parse-cirru-edn serialized)
                    println |Hydrated-in $ -
                      unsafe-coerce (js/Date.now) 'Number
                      , t-start
              , 0
          :examples $ []
          :schema $ :: 'Dynamic
        'listen-extension! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn listen-extension! ()
              js/chrome.runtime.onMessage.addListener $ fn (message sender respond!)
                when
                  = |menu-summary $ .-action message
                  let
                      content $ str "|你扮演一个专业的工程师, 对以下内容做一下讲解, 用中文, 注意要简略, 内容注意分块.\n\n" &newline &newline (.-content message)
                      event-tuple $ :: :fill-text
                        {} (:text content) (:submit? true)
                    send-to-component! event-tuple
                when
                  = |fill-text $ .-action message
                  let
                      content $ .-text message
                      submit? $ let
                          raw-submit? $ .-submit? message
                        if (js-present? raw-submit?) (unsafe-coerce raw-submit? 'Bool) true
                      event-tuple $ :: :fill-text
                        {} (:text content) (:submit? submit?)
                    send-to-component! event-tuple
                when
                  = |menu-translate $ .-action message
                  let
                      content $ str "|请将以下内容翻译成中文, 保持简洁分段:\n\n" &newline &newline (.-content message)
                      event-tuple $ :: :fill-text
                        {} (:text content) (:submit? true)
                    send-to-component! event-tuple
                when
                  = |menu-custom $ .-action message
                  let
                      content $ .-content message
                      event-tuple $ :: :fill-text
                        {} (:text content) (:submit? false)
                    send-to-component! event-tuple
              connect-to-worker!
          :examples $ []
          :schema $ :: 'Dynamic
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn main! () $ let
                t0 $ unsafe-coerce (js/Date.now) 'Number
              println "|Starting main! at" t0
              println "|Running mode:" $ if config/dev? |dev |release
              if config/dev? $ load-console-formatter!
              render-app!
              add-watch *reel :changes $ fn (reel prev) (render-app!)
              add-watch *archived-sessions :changes $ fn (s prev) (render-app!)
              add-watch *viewing-archive-session :changes $ fn (s prev) (render-app!)
              listen-devtools! |k dispatch!
              js/window.addEventListener |beforeunload $ fn (event) (persist-storage!)
              js/window.addEventListener |visibilitychange $ fn (event)
                if (= |hidden js/document.visibilityState) (persist-storage!)
              js/window.addEventListener |dblclick $ fn (event) (.!preventDefault event)
              js/window.addEventListener |wheel
                fn (event)
                  if (.-ctrlKey event) (.!preventDefault event)
                js-object $ :passive false
              hydrate-storage-later!
              if config/chrome-extension? $ listen-extension!
              , sync-gemini-key!
                let
                    t1 $ unsafe-coerce (js/Date.now) 'Number
                  println "|App started at" t1 |cost (- t1 t0) |ms
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ []
              :features $ #{} :js-ffi
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def mount-target $ js/document.querySelector |.app
          :examples $ []
          :schema $ :: 'Dynamic
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn persist-storage! ()
              println "|Saved at" $ .!toISOString (new js/Date)
              js/localStorage.setItem (:storage-key config/site)
                format-cirru-edn $ option:unwrap-or (get @*reel :store) schema/store
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ []
              :features $ #{} :js-ffi
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn reload! () $ if
              = false $ unsafe-coerce (js/Boolean build-errors) 'Bool
              do (remove-watch *reel :changes) (remove-watch *archived-sessions :changes) (remove-watch *viewing-archive-session :changes) (clear-cache!)
                add-watch *reel :changes $ fn (reel prev) (render-app!)
                add-watch *archived-sessions :changes $ fn (s prev) (render-app!)
                add-watch *viewing-archive-session :changes $ fn (s prev) (render-app!)
                reset! *reel $ refresh-reel @*reel schema/store updater
                hud! |ok~ |Ok
              hud! |error $ unsafe-coerce build-errors 'Dynamic
          :examples $ []
          :schema $ :: 'Dynamic
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn render-app! () $ let
                t_start $ unsafe-coerce (js/Date.now) 'Number
              println "|Rendering app..."
              render-with! mount-target
                fn () $ comp-container @*reel
                , dispatch!
              println "|Rendered in"
                -
                  unsafe-coerce (js/Date.now) 'Number
                  , t_start
                , |ms
          :examples $ []
          :schema $ :: 'Dynamic
        'sync-gemini-key! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn sync-gemini-key! () $ when config/chrome-extension?
              do
                let
                    gemini-key $ js/localStorage.getItem |gemini-key
                  when (js-present? gemini-key)
                    js/chrome.runtime.sendMessage $ js-object (:action |sync-gemini-key) (:key gemini-key)
                    js/chrome.storage.local.set $ js-object (:geminiKey gemini-key)
                let
                    deepseek-key $ js/localStorage.getItem |deepseek-key
                  when (js-present? deepseek-key)
                    js/chrome.runtime.sendMessage $ js-object (:action |sync-deepseek-key) (:key deepseek-key)
                    js/chrome.storage.local.set $ js-object (:deepseekKey deepseek-key)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ []
              :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.main $ :require
            respo.core :refer $ render-with! clear-cache!
            app.comp.container :refer $ comp-container submit-message! *archived-sessions *viewing-archive-session
            app.updater :refer $ updater
            app.schema :as schema
            reel.util :refer $ listen-devtools!
            reel.core :refer $ reel-updater refresh-reel
            reel.schema :as reel-schema
            app.config :as config
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
            respo.controller.client :refer $ send-to-component!
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'ChatMessage $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstruct ChatMessage (:role 'Tag) (:content 'String) (:thinking 'String)
          :examples $ []
          :schema $ :: 'StructDef
        'ChatSession $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstruct ChatSession (:id 'String) (:created-at 'Number)
              :messages $ :: 'List 'app.schema/ChatMessage
              :model 'Dynamic
              :preview 'String
              :is-history? 'Bool
          :examples $ []
          :schema $ :: 'StructDef
        'ChatState $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstruct ChatState (:answer 'String) (:loading? 'Bool) (:done? 'Bool)
              :messages $ :: 'List 'app.schema/ChatMessage
              :model 'Tag
              :thinking 'String
          :examples $ []
          :schema $ :: 'StructDef
        'MessageBoxState $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstruct MessageBoxState (:content 'String) (:search? 'Bool) (:think? 'Bool) (:focus-mode? 'Bool)
          :examples $ []
          :schema $ :: 'StructDef
        'Store $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstruct Store (:states 'Map)
              :sessions $ :: 'List 'app.schema/ChatSession
              :current-session-id 'Dynamic
              :model 'Dynamic
              :archived-count 'Number
          :examples $ []
          :schema $ :: 'StructDef
        'normalize-chat-session $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn normalize-chat-session (raw)
              hint-fn $ {}
                :args $ [] 'T
                :return 'app.schema/ChatSession
                :features $ #{} :js-ffi
                :generics $ [] 'T
              if (struct? raw) (unsafe-coerce raw 'app.schema/ChatSession) (decode-map-as raw 'app.schema/ChatSession)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'app.schema/ChatSession)
              :args $ [] 'T
              :features $ #{} :js-ffi
              :generics $ [] 'T
          :tests $ []
            %{} 'TestEntry (:name |accepts-typed-and-map)
              :code $ quote
                let
                    typed $ %{} ChatSession (:id |typed) (:created-at 1)
                      :messages $ []
                      :model :gemini
                      :preview |Typed
                      :is-history? true
                    typed-result $ assert-type (normalize-chat-session typed) 'app.schema/ChatSession
                    decoded $ assert-type
                      normalize-chat-session $ {} (:id |decoded) (:created-at 2)
                        :messages $ []
                        :model :anthropic
                        :preview |Decoded
                        :is-history? false
                      , 'app.schema/ChatSession
                  is $ = |typed (:id typed-result)
                  is $ = |decoded (:id decoded)
                  is $ = :anthropic (:model decoded)
              :tags $ #{} :regression :unit
        'store $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def store $ {}
              :states $ {}
                :cursor $ []
              :sessions $ []
              :current-session-id nil
              :model nil
              :archived-count 0
          :examples $ []
          :schema $ :: 'Map
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.schema $ :require
            calcit.test :refer $ [] is
    'app.updater $ %{} 'FileEntry
      :defs $ {}
        'updater $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn updater (raw-store op op-id op-time)
              let
                  store $ if (struct? raw-store) (unsafe-coerce raw-store 'app.schema/Store)
                    decode-map-as (dissoc raw-store :current-chapter-id) 'app.schema/Store
                match op
                  (:states cursor s)
                    assoc store :states $ assoc-in (:states store)
                      concat cursor $ [] :data
                      , s
                  (:states-merge cursor s changes)
                    let
                        path $ concat cursor ([] :data)
                        state $ option:unwrap-or
                          get-in (:states store) path
                          , s
                        updated-states $ assoc-in (:states store) path
                          if
                            or (map? state) (struct? state)
                            noted |merge-base-latest-state $ merge state changes
                            do (js/console.warn |unknown-state-to-merge state) state
                      assoc store :states updated-states
                  (:hydrate-storage data)
                    if (struct? data) (unsafe-coerce data 'app.schema/Store)
                      decode-map-as (dissoc data :current-chapter-id) 'app.schema/Store
                  (:change-model)
                    if
                      = (:model store) :anthropic
                      assoc store :model :gemini
                      assoc store :model :anthropic
                  (:save-session state)
                    let
                        store1 $ save-current-session store state
                      assoc store1 :current-session-id nil
                  (:session session-id id) (assoc store :current-session-id id)
                  (:load-session cursor state session)
                    let
                        typed-session $ assert-type (app.schema/normalize-chat-session session) 'app.schema/ChatSession
                        store1 $ assoc store :states
                          assoc-in (:states store)
                            concat cursor $ [] :data
                            -> state
                              assoc :messages $ :messages typed-session
                              assoc :done? true
                      assoc store1 :current-session-id $ :id typed-session
                  (:remove-session id)
                    assoc store :sessions $ filter
                      or (:sessions store) ([])
                      fn (s)
                        hint-fn $ {}
                          :args $ [] 'app.schema/ChatSession
                        not $ = (:id s) id
                  (:archive-sessions new-count)
                    -> store
                      assoc :sessions $ []
                      assoc :archived-count new-count
                      assoc :current-session-id nil
                  (:update-archived-count new-count)
                    -> store $ assoc :archived-count new-count
                  (:clear-sessions)
                    -> store
                      assoc :sessions $ []
                      assoc :current-session-id nil
                  _ $ do (eprintln "|unknown op:" op) store
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'app.schema/Store)
              :args $ [] 'app.schema/Store 'Enum 'String 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.updater $ :require
            app.comp.container :refer $ save-current-session generate-session-id
            app.schema :refer $ Store ChatState ChatSession
