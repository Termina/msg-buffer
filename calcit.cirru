
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :js) (:reload-fn 'app.main/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |respo-ui.calcit/ |reel.calcit/ |respo-markdown.calcit/ |alerts.calcit/
      :type-slots $ {} $ :dispatch-op 'app.schema/DispatchOp
  :files $ {}
    'app.comp.container $ %{} 'FileEntry
      :defs $ {}
        '*abort-control $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *abort-control None
          :examples $ []
          :schema $ quote $ Ref (Option ffi/AbortControllerHost)
        '*archived-sessions $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *archived-sessions nil
          :examples $ []
          :schema $ quote $ Ref
            JsNullish $ List ChatSession
        '*gen-ai-new $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *gen-ai-new None
          :examples $ []
          :schema $ quote $ Ref (Option GenAIClientHost)
        '*image-cache $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *image-cache None
          :examples $ []
          :schema $ quote $ Ref (Option String)
        '*openai $ %{} 'CodeEntry
          :doc "|OpenAI-compatible SDK cache; reused only when provider base URL and current in-memory API key match. Never serialized."
          :code $ quote $ defref *openai None
          :examples $ []
          :schema $ quote $ Ref (Option OpenAIClientHost)
        '*viewing-archive-session $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *viewing-archive-session nil
          :examples $ []
          :schema $ quote $ Ref (JsNullish ChatSession)
        'AxiosStreamResponseHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait AxiosStreamResponseHost (:data 'app.comp.container/ByteStreamHost)
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ quote Trait
        'ByteStreamHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait ByteStreamHost
            .pipe-through $ Fn app.comp.container/ByteStreamHost JsObject $ -> app.comp.container/DecodedTextStreamHost
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} $ :pipe-through |pipeThrough
          :schema $ quote Trait
        'DecodedTextStreamHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait DecodedTextStreamHost
            .get-reader $ Fn app.comp.container/DecodedTextStreamHost $ -> app.comp.container/TextReaderHost
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} $ :get-reader |getReader
          :schema $ quote Trait
        'DownloadLinkHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait DownloadLinkHost
            .click! $ Fn app.comp.container/DownloadLinkHost $ -> Unit
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} $ :click! |click
          :schema $ quote Trait
        'GenAIClientHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait GenAIClientHost (:models 'app.comp.container/GenAIModelsHost)
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ quote Trait
        'GenAIModelsHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait GenAIModelsHost
            .generate-content $ Fn app.comp.container/GenAIModelsHost JsObject $ -> JsObject
            .generate-content-stream $ Fn app.comp.container/GenAIModelsHost JsObject $ -> JsObject
            .generate-images $ Fn app.comp.container/GenAIModelsHost JsObject $ -> JsObject
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} (:generate-content |generateContent) (:generate-content-stream |generateContentStream) (:generate-images |generateImages)
          :schema $ quote Trait
        'GenAIPartsHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait GenAIPartsHost
            .for-each! $ Fn app.comp.container/GenAIPartsHost
              Fn (JsNullish JsObject) Number app.comp.container/GenAIPartsHost $ -> Unit
              -> Unit
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} $ :for-each! |forEach
          :schema $ quote Trait
        'ModelMenuItem $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct ModelMenuItem (:model Tag) (:label String)
          :examples $ []
          :schema $ quote StructDef
        'OpenAIChatHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait OpenAIChatHost (:completions 'app.comp.container/OpenAICompletionsHost)
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ quote Trait
        'OpenAIClientHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait OpenAIClientHost (:base-url 'String) (:api-key 'String) (:chat 'app.comp.container/OpenAIChatHost)
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} (:api-key |apiKey) (:base-url |baseURL)
          :schema $ quote Trait
        'OpenAICompletionsHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait OpenAICompletionsHost
            .create $ Fn app.comp.container/OpenAICompletionsHost JsObject JsObject $ -> JsObject
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ quote Trait
        'StreamChunk $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct StreamChunk (:text String) (:thinking? Bool)
          :examples $ []
          :schema $ quote StructDef
        'TextReadResultHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait TextReadResultHost (:done 'Bool)
            :value $ JsNullish String
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ quote Trait
        'TextReaderHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait TextReaderHost
            .read $ Fn app.comp.container/TextReaderHost $ -> JsObject
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ quote Trait
        'abort-previous! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn abort-previous! (previous)
            match previous
              (:none) &unit
              (:some controller)
                do (ffi/console-warn! |Aborting-prev) (ffi/abort! controller)
          :examples $ []
          :schema $ quote $ Fn (Option ffi/AbortControllerHost) (-> Unit) (:features :js-ffi)
        'append-user-message $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn append-user-message (messages content)
            conj messages $ ChatMessage :role :user :content content :thinking |
          :examples $ []
          :schema $ quote $ Fn (List ChatMessage) String
            -> $ List ChatMessage
        'axios-post $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn axios-post (module url body config) (raise "|JavaScript Axios binding")
          :examples $ []
          :ffi $ {} (:target :browser)
            :js $ {} $ :inline "|(module, url, body, config) => module.default.post(url, body, config)"
          :schema $ quote $ Fn JsObject String JsObject JsObject (-> JsObject) (:features :js-ffi)
        'call-anthropic-msg! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn call-anthropic-msg! (cursor state prompt-text model thinking? d!)
            let
                abort $ deref *abort-control
              abort-previous! abort
            d! $ DispatchOp :change-model
            let
                axios-module $ contract/expect-object "|Axios module" $ js-await (js/import |axios)
                selected $ let
                    selected0 $ js-await $ get-selected
                  if (js-present-dynamic? selected0) (stream-text selected0) "|<未找到内容>"
                content $ &str:replace prompt-text |{{selected}} selected
                messages0 $ append-user-message (:messages state) content
                messages1 $ upsert-assistant-message messages0 | |
                result $ js-await $ axios-post axios-module (str |https://sa.chenyong.life/v1/messages)
                  js-object
                    :model $ .unwrap-or (get-env |claude-model) model
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
                        abort $ ffi/abort-controller-create
                      reset! *abort-control $ Some abort
                      ffi/abort-signal abort
                stream $ js-cast
                  .-data $ js-cast result 'app.comp.container/AxiosStreamResponseHost
                  , 'app.comp.container/ByteStreamHost
                reader $ js-cast
                  .get-reader $ js-cast
                    .pipe-through stream $ new js/TextDecoderStream
                    , 'app.comp.container/DecodedTextStreamHost
                  , 'app.comp.container/TextReaderHost
                *text $ ref $ str "|Claude AI:" &newline &newline
              browser/set-timeout!
                fn ()
                  d! $ DispatchOp :states-merge cursor state $ {} (:answer |) (:thinking |) (:loading? true) (:done? false) (:messages messages1)
                  , &unit
                , 0
              loop
                  pending |
                hint-fn $ Fn String (-> Unit) (:features :js-ffi) (:async)
                let
                    info $ js-cast
                      js-await $ .read reader
                      , 'app.comp.container/TextReadResultHost
                    value $ .-value info
                    done? $ .-done info
                    buffer $ str pending $ stream-text value
                    lines $ split-lines buffer
                    complete-lines $ if done? lines $ butlast lines
                    remainder $ if done? | $ .unwrap-or (last lines) |
                    events $ -> complete-lines
                      filter $ fn (line) (starts-with? line "|data: ")
                      map $ fn (line)
                        decode-map-as
                          to-calcit-data $ js/JSON.parse $ strip-prefix line "|data: "
                          Map String Dynamic
                  loop
                      xs events
                    match (destruct-list xs)
                      (:none) &unit
                      (:some event rest-events)
                        if
                          = |message_stop $ stream-text $ .unwrap-or (get event |type) |
                          d! $ DispatchOp :states-merge cursor state $ {} (:answer @*text) (:loading? false) (:done? true)
                            :messages $ upsert-assistant-message messages1 @*text |
                          match
                            get-in event $ [] |delta |text
                            (:err error)
                              match error
                                (:missing) (recur rest-events)
                                (:shape message) (raise message)
                            (:ok fragment)
                              let
                                  text $ stream-text fragment
                                swap! *text str text
                                d! $ DispatchOp :states-merge cursor state $ {} (:answer @*text) (:loading? false) (:done? false)
                                  :messages $ upsert-assistant-message messages1 @*text |
                                recur rest-events
                  if done? &unit $ recur remainder
          :examples $ []
          :schema $ quote $ Fn (List respo.schema/CoordKey) ChatState String String Bool
            Fn DispatchOp $ -> Unit
            -> Unit
            :features :js-ffi
            :async
        'call-flash-imagen-msg! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn call-flash-imagen-msg! (variant cursor state prompt-text d!)
            js-await $ ensure-genai!
            match (browser/query-selector |.show-image)
              (:none) &unit
              (:some preview) (browser/element-set-attribute! preview |src |)
            let
                abort $ deref *abort-control
              abort-previous! abort
            clear-image-cache!
            d! $ DispatchOp :widget-state cursor $ -> state (assoc :answer |) (assoc :loading? true)
            let
                selected $ let
                    selected0 $ js-await $ get-selected
                  if (js-present-dynamic? selected0) (stream-text selected0) "|<未找到选中内容>"
                gen-ai $ .unwrap @*gen-ai-new
                content $ &str:replace prompt-text |{{selected}} selected
                abort-signal $ let
                    abort $ ffi/abort-controller-create
                  reset! *abort-control $ Some abort
                  ffi/abort-signal abort
                sdk-result $ js-await $ .generate-content
                  js-cast (.-models gen-ai) 'app.comp.container/GenAIModelsHost
                  js-object (:model |gemini-2.5-flash-image) (:contents content)
                    :config $ js-object (:abortSignal abort-signal)
                      :httpOptions $ js-object $ :baseUrl |https://ja.chenyong.life
                      :responseModalities $ js-array |TEXT |IMAGE
                parts $ js-cast
                  contract/object-field "|GenAI image response"
                    contract/object-field "|GenAI image response"
                      contract/object-field "|GenAI image response" (contract/object-field "|GenAI image response" sdk-result |candidates) |0
                      , |content
                    , |parts
                  , 'app.comp.container/GenAIPartsHost
                *text $ ref |
              .for-each! parts $ fn (chunk _a _b)
                hint-fn $ Fn (JsNullish JsObject) Number GenAIPartsHost (-> Unit) (:features :js-ffi)
                if (js-present-dynamic? chunk)
                  let
                      chunk-data $ contract/expect-object "|GenAI image part" chunk
                      text0 $ contract/object-field "|GenAI image response" chunk-data |text
                    if (js-present-dynamic? text0)
                      let
                          text $ contract/expect-string "|GenAI image text" text0
                        swap! *text str text
                        d! $ DispatchOp :widget-state cursor $ -> state (assoc :answer @*text) (assoc :loading? false) (assoc :done? false)
                      let
                          image-data0 $ contract/object-field "|GenAI image response" chunk-data |inlineData
                        when (js-present-dynamic? image-data0)
                          let
                              image-data $ contract/expect-object "|GenAI inlineData" image-data0
                              data $ contract/expect-string "|GenAI inlineData.data" $ contract/object-field "|GenAI image response" image-data |data
                              image-blob $ js-cast (base64ToBlob data) 'js-ffi.browser/BlobHost
                              url $ browser/object-url-create image-blob
                              target $ browser/query-selector |.show-image
                            match target
                              (:none) &unit
                              (:some preview) (browser/element-set-attribute! preview |src url)
                            clear-image-cache!
                            reset! *image-cache $ Some url
                            swap! *text str | "|(image ready)"
                            d! $ DispatchOp :widget-state cursor $ -> state (assoc :answer @*text) (assoc :loading? false) (assoc :done? false)
                  d! $ DispatchOp :widget-state cursor $ -> state (assoc :answer @*text) (assoc :loading? false) (assoc :done? false)
                d! $ DispatchOp :widget-state cursor $ -> state (assoc :answer @*text) (assoc :loading? false) (assoc :done? false)
                , &unit
              d! $ DispatchOp :widget-state cursor $ -> state (assoc :answer @*text) (assoc :loading? false) (assoc :done? true)
            , &unit
          :examples $ []
          :schema $ quote $ Fn Tag (List respo.schema/CoordKey) ChatState String
            Fn DispatchOp $ -> Unit
            -> Unit
            :features :js-ffi
            :async
        'call-genai-msg! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn call-genai-msg!
            variant cursor state prompt-text search? think? d! *text *thinking-text
            js-await $ ensure-genai!
            let
                abort $ deref *abort-control
              abort-previous! abort
            let
                selected $ let
                    selected0 $ if (includes? prompt-text |{{selected}})
                      js-await $ get-selected
                      , js/undefined
                  if (js-present-dynamic? selected0) (stream-text selected0) "|<未找到选中内容>"
                gen-ai $ .unwrap @*gen-ai-new
                model $ pick-model variant
                content $ &str:replace prompt-text |{{selected}} selected
                json? $ or (includes? prompt-text |{{json}}) (includes? prompt-text |{{JSON}})
                pro? $ includes? model |pro
                has-url? $ or (includes? prompt-text |http://) (includes? prompt-text |https://)
                messages0 $ :messages state
                messages1 $ upsert-assistant-message messages0 | |
                abort-signal $ let
                    abort $ ffi/abort-controller-create
                  reset! *abort-control $ Some abort
                  ffi/abort-signal abort
                tools $ make-genai-tools search? has-url?
                sdk-result $ js-await $ .generate-content-stream
                  js-cast (.-models gen-ai) 'app.comp.container/GenAIModelsHost
                  js-object (:model model)
                    :contents $ messages->gemini messages0
                    :config $ js-object
                      :thinkingConfig $ if think?
                        js-object (:thinkingLevel |high) (:includeThoughts true)
                        js-object
                          :thinkingLevel $ if
                            contains? (#{} |gemini-3.7-flash |gemini-3.8-flash) model
                            , |low |minimal
                          :includeThoughts false
                      :tools $ if (or search? has-url?) tools js/undefined
                      :abortSignal abort-signal
                      :httpOptions $ js-object $ :baseUrl |https://ja.chenyong.life
                      :responseMimeType $ if json? |application/json js/undefined
              js/setTimeout $ fn () $ d!
                DispatchOp :states-merge cursor state $ {} (:answer |) (:thinking |) (:loading? true) (:done? false) (:messages messages1)
              js-await $ js-for-await sdk-result $ fn (chunk)
                if (js-present-dynamic? chunk)
                  let
                      stream-chunk $ decode-genai-chunk chunk
                      is-thinking? $ :thinking? stream-chunk
                      text $ :text stream-chunk
                    if is-thinking? (swap! *thinking-text str text) (swap! *text str text)
                    d! $ DispatchOp :states-merge cursor state $ {} (:answer @*text) (:thinking @*thinking-text) (:loading? false) (:done? false)
                      :messages $ upsert-assistant-message messages1 @*text @*thinking-text
                  d! $ DispatchOp :states-merge cursor state $ {} (:answer @*text) (:thinking @*thinking-text) (:loading? false) (:done? false)
                    :messages $ upsert-assistant-message messages1 @*text @*thinking-text
              d! $ DispatchOp :states-merge cursor state $ {} (:answer @*text) (:thinking @*thinking-text) (:loading? false) (:done? true)
                :messages $ upsert-assistant-message messages1 @*text @*thinking-text
          :examples $ []
          :schema $ quote $ Fn Tag (List respo.schema/CoordKey) ChatState String Bool Bool
            Fn DispatchOp $ -> Unit
            Ref String
            Ref String
            -> Unit
            :features :js-ffi
            :async
        'call-imagen-4-msg! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn call-imagen-4-msg! (variant cursor state prompt-text d!)
            js-await $ ensure-genai!
            match (browser/query-selector |.show-image)
              (:none) &unit
              (:some preview) (browser/element-remove-attribute! preview |src)
            let
                abort $ deref *abort-control
              abort-previous! abort
            clear-image-cache!
            d! $ DispatchOp :widget-state cursor $ -> state (assoc :answer |) (assoc :loading? true)
            let
                gen-ai $ .unwrap @*gen-ai-new
                abort-signal $ let
                    abort $ ffi/abort-controller-create
                  reset! *abort-control $ Some abort
                  ffi/abort-signal abort
                response $ js-await $ .generate-images
                  js-cast (.-models gen-ai) 'app.comp.container/GenAIModelsHost
                  js-object (:model |imagen-4.0-generate-001) (:prompt prompt-text)
                    :config $ js-object (:numberOfImages 1) (:includeRaiReason true)
                      :httpOptions $ js-object $ :baseUrl |https://ja.chenyong.life
                      :abortSignal abort-signal
                *text $ ref |
              let
                  response-data $ contract/expect-object "|GenAI image response" response
                  generated-images $ contract/object-field "|GenAI image response" response-data |generatedImages
                  generated-image $ contract/object-field "|GenAI image response" generated-images |0
                  image $ contract/object-field "|GenAI image response" generated-image |image
                  image-data0 $ contract/object-field "|GenAI image response" image |imageBytes
                when (js-present-dynamic? image-data0)
                  let
                      image-data $ contract/expect-string "|GenAI imageBytes" image-data0
                      image-blob $ js-cast (base64ToBlob image-data) 'js-ffi.browser/BlobHost
                      url $ browser/object-url-create image-blob
                      target $ browser/query-selector |.show-image
                    clear-image-cache!
                    reset! *image-cache $ Some url
                    match target
                      (:none) &unit
                      (:some preview) (browser/element-set-attribute! preview |src url)
                    swap! *text str | "|(image ready)"
                    d! $ DispatchOp :widget-state cursor $ -> state (assoc :answer @*text) (assoc :loading? false) (assoc :done? false)
              d! $ DispatchOp :widget-state cursor $ -> state (assoc :answer @*text) (assoc :loading? false) (assoc :done? true)
            , &unit
          :examples $ []
          :schema $ quote $ Fn Tag (List respo.schema/CoordKey) ChatState String
            Fn DispatchOp $ -> Unit
            -> Unit
            :features :js-ffi
            :async
        'call-openrouter! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn call-openrouter! (cursor state prompt-text provider variant thinking? d! *text)
            js-await $ ensure-openai! provider
            let
                abort $ deref *abort-control
              abort-previous! abort
            let
                selected $ let
                    selected0 $ js-await $ get-selected
                  if (js-present-dynamic? selected0) (stream-text selected0) "|<未找到选中内容>"
                openai $ .unwrap @*openai
                content $ &str:replace prompt-text |{{selected}} selected
                json? $ or (includes? prompt-text |{{json}}) (includes? prompt-text |{{JSON}})
                messages0 $ :messages state
                messages1 $ upsert-assistant-message messages0 | |
                sdk-result $ js-await $ .create
                  js-cast
                    .-completions $ js-cast (.-chat openai) 'app.comp.container/OpenAIChatHost
                    , 'app.comp.container/OpenAICompletionsHost
                  js-object (:model variant)
                    :messages $ messages->openai messages0
                    :stream true
                    :headers $ js-object $ :HTTP-Referer js/location.host
                  js-object $ :signal $ let
                      abort $ ffi/abort-controller-create
                    reset! *abort-control $ Some abort
                    ffi/abort-signal abort
              browser/set-timeout!
                fn ()
                  d! $ DispatchOp :states-merge cursor state $ {} (:answer |) (:thinking |) (:loading? true) (:done? false) (:messages messages1)
                  , &unit
                , 0
              let
                  *thinking-text $ ref |
                  *char-buf $ ref 0
                js-await $ js-for-await sdk-result $ fn (chunk)
                  if (js-present-dynamic? chunk)
                    let
                        chunk-data $ contract/expect-object "|OpenAI chunk" chunk
                        choices $ contract/object-field "|OpenAI stream" chunk-data |choices
                        choice0 $ if (js-present? choices) (contract/object-field "|OpenAI stream" choices |0) js/undefined
                        choice $ if (js-present? choice0) (contract/object-field "|OpenAI stream" choice0 |delta) js/undefined
                        reason0 $ if (js-present? choice) (contract/object-field "|OpenAI stream" choice |reasoning_content) js/undefined
                        reason $ if (js-present-dynamic? reason0) (stream-text reason0) |
                        text0 $ if (js-present? choice) (contract/object-field "|OpenAI stream" choice |content) js/undefined
                        text $ if (js-present-dynamic? text0) (stream-text text0) |
                      if
                        not $ blank? reason
                        swap! *thinking-text str reason
                      if
                        not $ blank? text
                        swap! *text str text
                      swap! *char-buf + $ .len text
                      when
                        or (> @*char-buf 80) (includes? text &newline)
                        do (reset! *char-buf 0)
                          d! $ DispatchOp :states-merge cursor state $ {} (:answer @*text) (:thinking @*thinking-text) (:loading? false) (:done? false)
                            :messages $ upsert-assistant-message messages1 @*text @*thinking-text
                  d! $ DispatchOp :states-merge cursor state $ {} (:answer @*text) (:thinking @*thinking-text) (:loading? false) (:done? false)
                    :messages $ upsert-assistant-message messages1 @*text @*thinking-text
                d! $ DispatchOp :states-merge cursor state $ {} (:answer @*text) (:thinking @*thinking-text) (:loading? false) (:done? true)
                  :messages $ upsert-assistant-message messages1 @*text @*thinking-text
            , &unit
          :examples $ []
          :schema $ quote $ Fn (List respo.schema/CoordKey) ChatState String Tag String Bool
            Fn DispatchOp $ -> Unit
            Ref String
            -> Unit
            :features :js-ffi
            :async
        'clear-image-cache! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn clear-image-cache! ()
            match @*image-cache
              (:none) &unit
              (:some url)
                do (browser/object-url-revoke! url) (reset! *image-cache None) &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'comp-abort $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-abort (t)
            span
              {} (:role |button)
                :aria-label $ str |abort- t
                :class-name $ str-spaced css/font-fancy css/row-middle style-more
                :style $ {} $ :cursor :pointer
                :on-click $ fn (e d!)
                  abort-previous! $ deref *abort-control
                  , &unit
              <> t
              space-x 8
              <> "|✕" style-abort-close
          :examples $ []
          :schema $ quote $ Fn String (-> respo.schema/Element) (:features :js-ffi)
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (reel on-control)
            let
                app-store $ :store reel
                sessions $ :sessions app-store
                archived-count $ :archived-count app-store
                current-session-id $ :current-session-id app-store
                states $ :states app-store
                cursor $ decode-map-as
                  .unwrap-or (&map:get states :cursor) ([])
                  List respo.schema/CoordKey
                state $ let
                    raw-chat-state $ .unwrap-or (&map:get states :data)
                      {} (:answer |) (:loading? false) (:done? true)
                        :messages $ []
                        :model :gemini
                        :thinking |
                  normalize-chat-state raw-chat-state
                done? $ :done? state
                messages $ :messages state
                model $ if
                  tag? $ :model state
                  :model state
                  , :gemini
                is-viewing-history? $ match current-session-id
                  (:none) false
                  (:some id)
                    .fold
                      first $ filter sessions $ fn (session)
                        = (:id session) id
                      fn () false
                      fn (session) (:is-history? session)
                last-assistant $ .fold
                  assert-type (last messages) (Option ChatMessage)
                  fn ()
                    hint-fn $ {} $ :return 'String
                    :answer state
                  fn (last-msg)
                    hint-fn $ Fn ChatMessage $ -> String
                    if
                      = :assistant $ :role last-msg
                      :content last-msg
                      :answer state
                model-plugin $ use-modal-menu (>> states :model)
                  {} (; :title "|Select model")
                    :style $ {} $ :width 300
                    :backdrop-style $ {}
                    ; :card-class style-card
                    ; :backdrop-class style-backdrop
                    ; :confirm-class style-confirm
                    :items $ .map models-menu $ fn (item)
                      :: :item (:model item) (:label item)
                    :on-result $ fn (result d!)
                      d! $ DispatchOp :widget-state cursor $ assoc state :model
                        decode-map-as
                          .unwrap-or (nth result 1) :gemini
                          , 'Tag
                reply-plugin $ use-prompt (>> states :reply-prompt)
                  {} (:text |Follow-up) (:placeholder "|Enter your follow-up") (:multiline? true) (:button-text |Send)
                    :validator $ fn (raw-text)
                      let
                          text $ decode-map-as raw-text 'String
                        if (blank? text) "|Please enter text" |
                api-key-plugin $ use-prompt (>> states :api-key-prompt)
                  {} (:text "|API key required") (:placeholder "|Enter API key") (:button-text |Save)
                    :validator $ fn (raw-text)
                      let
                          text $ decode-map-as raw-text 'String
                        if (blank? text) "|Please enter API key" |
                text-alert-plugin $ use-alert (>> states :empty-message-alert)
                  {} $ :text "|Please enter text"
                submit-with-key! $ fn (submit-state text search? think? d!)
                  hint-fn $ Fn ChatState String Bool Bool
                    Fn DispatchOp $ -> Unit
                    -> Unit
                    :features :js-ffi
                  if (blank? text)
                    .show text-alert-plugin
                      fn (op)
                        hint-fn $ Fn DispatchOp $ -> Unit
                        d! op
                        , &unit
                      Some "|Please enter text"
                    let
                        storage-key $ model-storage-key model
                        stored $ browser/storage-get-or storage-key |
                      if (blank? stored)
                        .show api-key-plugin
                          fn (op)
                            hint-fn $ Fn DispatchOp $ -> Unit
                            d! op
                            , &unit
                          fn (key)
                            hint-fn $ Fn String $ -> Unit
                            browser/storage-set! storage-key $ decode-map-as key 'String
                            submit-message! cursor submit-state text search? think? model d!
                            , &unit
                        submit-message! cursor submit-state text search? think? model d!
                  , &unit
                message-box-state $ let
                    raw-message-box-state $ .unwrap-or
                      &map:get (>> states :message-box) :data
                      {} (:content |) (:search? false) (:think? false) (:focus-mode? false)
                  if
                    and (struct? raw-message-box-state) (&struct:matches? raw-message-box-state MessageBoxState)
                    struct-match raw-message-box-state (MessageBoxState typed typed)
                      _ other $ raise "|Expected MessageBoxState"
                    decode-map-as
                      if (struct? raw-message-box-state)
                        if
                          = (&struct:get-name raw-message-box-state) :MessageBoxState
                          &struct:to-map raw-message-box-state
                          raise "|Expected MessageBoxState"
                        , raw-message-box-state
                      , 'app.schema/MessageBoxState
                sessions-plugin $ use-drawer (>> states :sessions-modal)
                  {} (:title "|History Sessions")
                    :style $ {} (:min-width "||max(320px,30vw)\"") (:max-width |80vw)
                    :render $ fn (on-close)
                      let
                          close! $ fn (d!)
                            hint-fn $ Fn
                              Fn DispatchOp $ -> Unit
                              -> Unit
                            on-close d!
                            , &unit
                        comp-sessions-modal sessions archived-count
                          fn (session-id d!)
                            hint-fn $ Fn String
                              Fn DispatchOp $ -> Unit
                              -> Unit
                            when
                              and
                                > (.len messages) 0
                                :done? state
                                not $ .some? current-session-id
                              d! $ DispatchOp :save-session state
                            d! $ DispatchOp :load-session cursor state $ -> sessions
                              filter $ fn (s)
                                hint-fn $ Fn ChatSession $ -> Bool
                                = (:id s) session-id
                              , first .unwrap
                            close! d!
                            , &unit
                          , close! $ fn ()
                            hint-fn $ Fn (-> Unit) (:async) (:features :js-ffi)
                            let
                                archive-key $ :archive-key site
                                raw $ let
                                    host-value $ js-await $ db-get archive-key
                                  if
                                    or (nil? host-value)
                                      = (js/typeof host-value) |undefined
                                    , | $ contract/expect-string "|Archive storage value" host-value
                              if (blank? raw) (js/alert "|No archives found!")
                                let
                                    parsed $ map
                                      decode-map-as (parse-cirru-edn raw) (List Dynamic)
                                      fn (session) (app.schema/normalize-chat-session session)
                                  reset! *archived-sessions parsed
                            , &unit
              div
                {} $ :class-name $ str-spaced css/preset css/global css/column css/fullscreen css/gap8 style-app-global
                if (js-present? @*archived-sessions)
                  if (js-present? @*viewing-archive-session) (; Render specific read-only archived session)
                    div
                      {} $ :class-name $ str-spaced css/expand style-message-area
                      div
                        {} $ :class-name style-archive-header
                        div $ {}
                          :style $ {} $ :font-weight :bold
                          :inner-text $ str "|Archived: " $ :preview
                            assert-type (app.schema/normalize-chat-session @*viewing-archive-session) ChatSession
                        div
                          {} (:class-name style-archive-close)
                            :on-click $ fn (e d!) (reset! *viewing-archive-session nil) &unit
                          <> "|✕"
                      ; Messages list $ read only
                      div
                        {} (:role |region) (:aria-label |message-list)
                          :class-name $ str-spaced css/column style-message-list
                        list->
                          {} $ :class-name $ str-spaced css/column css/gap8
                          ->
                            :messages $ assert-type (app.schema/normalize-chat-session @*viewing-archive-session) ChatSession
                            map-indexed $ fn (idx msg)
                              hint-fn $ Fn Number ChatMessage $ -> (List Dynamic)
                              [] idx $ let
                                  role $ :role msg
                                  content $ stream-text $ :content msg
                                  thinking $ stream-text $ :thinking msg
                                div
                                  {} $ :class-name $ str-spaced style-message-item
                                    if (= role :assistant) style-message-assistant style-message-user
                                  div
                                    {} $ :class-name style-message-role
                                    <> $ if (= role :assistant) |Assistant |You
                                  show
                                    not $ blank? thinking
                                    div
                                      {} $ :class-name style-thinking
                                      memo-comp-by thinking comp-md-block thinking $ {} $ :class-name style-md-content
                                  if (= role :assistant)
                                    if (json-pattern? content)
                                      pre $ {} (:class-name style-code-content) (:inner-text content)
                                      memo-comp-by content comp-md-block content $ {} $ :class-name style-md-content
                                    pre $ {} (:class-name style-message-text) (:inner-text content)
                    ; Render archived sessions list
                    div
                      {} $ :class-name $ str-spaced css/expand style-message-area
                      div
                        {} $ :class-name style-archive-header
                        div $ {}
                          :style $ {} $ :font-weight :bold
                          :inner-text "|All Archived Sessions"
                        div
                          {} (:class-name style-archive-close)
                            :on-click $ fn (e d!) (reset! *archived-sessions nil) (reset! *viewing-archive-session nil) &unit
                          <> "|✕"
                      ; List
                      div
                        {} $ :class-name $ str-spaced css/column css/gap8 style-message-list
                        list->
                          {} $ :class-name css/column
                          let
                              current-archives $ let
                                  cached @*archived-sessions
                                if (js-nullish? cached) ([]) cached
                            if (empty? current-archives)
                              [] $ [] :empty $ div
                                {} $ :style $ {} (:padding |12px)
                                  :color $ hsl 0 0 60
                                <> "|No archived sessions left."
                              -> current-archives reverse $ map $ fn (session)
                                hint-fn $ Fn ChatSession $ -> (List Dynamic)
                                let
                                    session-id $ :id session
                                    created-at $ :created-at session
                                    preview $ :preview session
                                    date-str $ ffi/date-local-string $ ffi/date-from-ms created-at
                                  [] session-id $ div
                                    {} $ :class-name style-session-item
                                    div
                                      {} (:role |button)
                                        :style $ {} (:flex |1) (:cursor :pointer) (:min-width 0) (:overflow :hidden)
                                        :on-click $ fn (e d!) (reset! *viewing-archive-session session) &unit
                                      div
                                        {} $ :style $ {} (:font-size |12px)
                                          :color $ hsl 0 0 60
                                        <> date-str
                                      div
                                        {} $ :style $ {} (:margin-top |4px) (:white-space :nowrap) (:overflow :hidden) (:text-overflow :ellipsis) (:max-height |1.2em) (:line-height |1.2)
                                        <> preview
                                    div
                                      {} (:class-name style-delete-button) (:role |button)
                                        :on-click $ fn (e d!) (hint-fn Async)
                                          let
                                              proceed? $ js/confirm "|Delete this archived session?"
                                            when proceed? $ let
                                                new-archives $ filter
                                                  let
                                                      cached @*archived-sessions
                                                    if (js-nullish? cached) ([]) cached
                                                  fn (s)
                                                    hint-fn $ Fn ChatSession $ -> Bool
                                                    not= (:id s) session-id
                                              reset! *archived-sessions new-archives
                                              let
                                                  archive-key $ :archive-key site
                                                js-await $ db-set archive-key $ format-cirru-edn new-archives
                                                d! $ DispatchOp :update-archived-count $ .len new-archives
                                          , &unit
                                      <> "|✕"
                  ; Else render normal chat view
                  div
                    {} $ :class-name $ str-spaced css/expand css/column
                    div
                      {} $ :class-name $ str-spaced css/expand style-message-area
                      div
                        {}
                          :class-name $ str-spaced css/row-parted
                          :style $ {} $ :padding |8px
                        div $ {}
                        div
                          {} (:class-name css/row-middle) (:title |History) (:role |button) (:aria-label |history-open)
                            :style $ {} $ :cursor :pointer
                            :on-click $ fn (e d!)
                              .show sessions-plugin $ fn (op)
                                hint-fn $ Fn DispatchOp $ -> Unit
                                d! op
                                , &unit
                              , &unit
                          div
                            {} $ :class-name style-history-button
                            comp-local-icon :clock 14
                          space-x 4
                          show
                            > (.len sessions) 0
                            <>
                              str $ .len sessions
                              str-spaced css/font-fancy style-history-count
                      div
                        {} (:role |region) (:aria-label |message-list)
                          :class-name $ str-spaced css/column style-message-list
                        show
                          or (= :imagen-4 model) (= :flash-imagen model)
                          img $ {} $ :class-name (str-spaced style-image |show-image)
                        list->
                          {} $ :class-name $ str-spaced css/column css/gap8
                          -> messages $ map-indexed $ fn (idx msg)
                            hint-fn $ Fn Number ChatMessage $ -> (List Dynamic)
                            [] idx $ let
                                role $ :role msg
                                content $ stream-text $ :content msg
                                thinking $ stream-text $ :thinking msg
                              div
                                {} $ :class-name $ str-spaced style-message-item
                                  if (= role :assistant) style-message-assistant style-message-user
                                div
                                  {} $ :class-name style-message-role
                                  <> $ if (= role :assistant) |Assistant |You
                                show
                                  not $ blank? thinking
                                  div
                                    {} $ :class-name style-thinking
                                    memo-comp-by thinking comp-md-block thinking $ {} $ :class-name style-md-content
                                if (= role :assistant)
                                  if (json-pattern? content)
                                    pre $ {} (:class-name style-code-content) (:inner-text content)
                                    memo-comp-by content comp-md-block content $ {} $ :class-name style-md-content
                                  pre $ {} (:class-name style-message-text) (:inner-text content)
                                show
                                  and (= role :assistant)
                                    or done? $ not= idx $ dec (.len messages)
                                  div
                                    {} $ :class-name $ str-spaced css/row-middle css/gap8 style-message-actions
                                    show chrome-extension? $ comp-fill content
                                    comp-copy content
                        show
                          and
                            > (.len messages) 0
                            :done? state
                            not is-viewing-history?
                          div
                            {} $ :class-name $ str-spaced css/row-middle css/gap8 style-reply-actions
                            button
                              {} (:role |button) (:aria-label |reply-message)
                                :class-name $ str-spaced css/button style-reply-button
                                :on-click $ fn (e d!)
                                  hint-fn $ Fn respo.schema/RespoEvent
                                    Fn DispatchOp $ -> Unit
                                    -> Unit
                                  .show reply-plugin
                                    fn (op)
                                      hint-fn $ Fn DispatchOp $ -> Unit
                                      d! op
                                      , &unit
                                    fn (text)
                                      hint-fn $ Fn String $ -> Unit
                                      submit-with-key! state (stream-text text) (:search? message-box-state) (:think? message-box-state) d!
                                      , &unit
                                  , &unit
                              <> |Reply
                            show
                              not $ :focus-mode? message-box-state
                              a $ {} (:class-name style-focus-link) (:inner-text |Focus) (:role |button) (:aria-label |focus-composer)
                                :on-click $ fn (e d!)
                                  let
                                      focused $ browser/document-active-element
                                    match focused
                                      (:none) &unit
                                      (:some element) (element .blur!)
                                    d! $ DispatchOp :widget-state
                                      decode-map-as
                                        .unwrap-or
                                          &map:get (>> states :message-box) :cursor
                                          []
                                        List respo.schema/CoordKey
                                      assoc message-box-state :focus-mode? true
                                  , &unit
                        show (:loading? state)
                          div ({}) (comp-abort |Loading...)
                        div
                          {} $ :class-name css/row-parted
                          div
                            {} $ :class-name $ str-spaced css/row-middle css/gap8
                            show
                              not $ :done? state
                              div
                                {} $ :style $ {} (:display :flex) (:justify-content :center) (:align-items :center)
                                comp-abort |Streaming...
                          show (:done? state)
                            div $ {} $ :class-name (str-spaced css/row-middle css/gap8)
                      space-y 200
                    comp-message-box
                      decode-map-as (>> states :message-box) (Map Tag Dynamic)
                      a $ {}
                        :inner-text $ or (to-string model) |-
                        :role |button
                        :aria-label $ str |model-picker: $ to-string model
                        :class-name $ str-spaced style-a-toggler
                        :style $ {} $ :opacity
                          if (= model :anthropic) 1 0.3
                        :on-click $ fn (e d!)
                          ; d! $ DispatchOp :change-model
                          .show model-plugin $ fn (op)
                            hint-fn $ Fn DispatchOp $ -> Unit
                            d! op
                            , &unit
                          , &unit
                      fn (text search? think? d!)
                        if (blank? text)
                          .show text-alert-plugin
                            fn (op)
                              hint-fn $ Fn DispatchOp $ -> Unit
                              d! op
                              , &unit
                            Some "|Please enter text"
                          do
                            when
                              and
                                > (.len messages) 0
                                :done? state
                                not $ .some? current-session-id
                              d! $ DispatchOp :save-session state
                            d! $ DispatchOp :session None
                            submit-with-key!
                              -> state
                                assoc :messages $ []
                                assoc :answer |
                                assoc :thinking |
                                assoc :done? false
                              , text search? think? d!
                        , &unit
                      , model
                model-plugin.render
                reply-plugin.render
                text-alert-plugin.render
                api-key-plugin.render
                sessions-plugin.render
                show dev? $ comp-typed-reel (>> states :reel) reel ({}) on-control
                show dev? $ comp-inspect |Store app-store $ {}
          :examples $ []
          :schema $ quote $ Fn (reel.typed/State DispatchOp Store)
            Fn reel.typed/Control $ -> Unit
            -> respo.schema/Component
            :features :js-ffi
        'comp-fill $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-fill (text)
            div
              {} (:class-name style-fill) (:role |button) (:aria-label |fill-extension)
                :on-click $ fn (e d!)
                  when chrome-extension? $ js/chrome.runtime.sendMessage $ js-object (:action |fill-text) (:text text)
                  , &unit
              comp-local-icon :send 12
          :examples $ []
          :schema $ quote $ Fn String (-> respo.schema/Component) (:features :js-ffi)
        'comp-local-icon $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-local-icon (icon size)
            span $ {} (:aria-hidden |true)
              :style $ {} (:display :inline-flex) (:align-items :center) (:justify-content :center)
                :width $ str size |px
                :height $ str size |px
                :line-height |0
              :innerHTML $ match icon
                :clock "|<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"100%\" height=\"100%\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\"><circle cx=\"12\" cy=\"12\" r=\"10\"></circle><polyline points=\"12 6 12 12 16 14\"></polyline></svg>"
                :send "|<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"100%\" height=\"100%\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\"><line x1=\"22\" y1=\"2\" x2=\"11\" y2=\"13\"></line><polygon points=\"22 2 15 22 11 13 2 9 22 2\"></polygon></svg>"
                _ |
          :examples $ []
          :schema $ quote $ Fn Tag Number (-> respo.schema/Component)
        'comp-message-box $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-message-box (states picker-el on-submit model)
            let
                cursor $ decode-map-as
                  .unwrap-or (get states :cursor) ([])
                  List respo.schema/CoordKey
                state $ let
                    raw-message-box-state $ .unwrap-or (get states :data)
                      {} (:content |) (:search? false) (:think? false) (:focus-mode? false)
                  if
                    and (struct? raw-message-box-state) (&struct:matches? raw-message-box-state MessageBoxState)
                    struct-match raw-message-box-state (MessageBoxState typed typed)
                      _ other $ raise "|Expected MessageBoxState"
                    decode-map-as
                      if (struct? raw-message-box-state)
                        if
                          = (&struct:get-name raw-message-box-state) :MessageBoxState
                          &struct:to-map raw-message-box-state
                          raise "|Expected MessageBoxState"
                        , raw-message-box-state
                      , 'app.schema/MessageBoxState
              [] (effect-focus) (on-fill cursor state on-submit)
                div
                  {} $ :class-name $ str-spaced css/center style-message-box-panel
                  div
                    {} $ :class-name $ str-spaced css/column style-message-box
                    if (:focus-mode? state)
                      div
                        {} (:role |button) (:aria-label |expand-prompt)
                          :class-name $ str-spaced css/font-code! style-focus-box style-textbox-compact
                          :on-click $ fn (e d!)
                            d! $ DispatchOp :widget-state cursor $ assoc state :focus-mode? false
                            js/setTimeout
                              fn () $ match (browser/query-selector |#message)
                                (:none) &unit
                                (:some input) (input .focus!)
                              , 0
                            , &unit
                        <> $ if
                          blank? $ :content state
                          , "|Click to expand and type..." $ :content state
                      textarea $ {}
                        :value $ :content state
                        :placeholder "|Prompt to try LLM..."
                        :id |message
                        :role |textbox
                        :aria-label |prompt-input
                        :class-name $ str-spaced css/textarea css/font-code! style-textbox
                        :on-input $ fn (e d!)
                          hint-fn $ Fn respo.schema/RespoEvent
                            Fn DispatchOp $ -> Unit
                            -> Unit
                          d! $ DispatchOp :widget-state cursor $ assoc state :content
                            decode-map-as (:value e) String
                          , &unit
                        :on-keydown $ fn (e d!)
                          hint-fn $ Fn respo.schema/RespoEvent
                            Fn DispatchOp $ -> Unit
                            -> Unit
                          when
                            and
                              = 13 $ .unwrap-or
                                js-nullish->option $ :keycode e
                                , 0
                              or
                                .unwrap-or
                                  js-nullish->option $ :meta? e
                                  , false
                                .unwrap-or
                                  js-nullish->option $ :ctrl? e
                                  , false
                            on-submit (:content state) (:search? state) (:think? state) d!
                          , &unit
                        :on-focus $ fn (e d!)
                          hint-fn $ Fn respo.schema/RespoEvent
                            Fn DispatchOp $ -> Unit
                            -> Unit
                          toggle-focus-within! e true
                          , &unit
                        :on-blur $ fn (e d!)
                          hint-fn $ Fn respo.schema/RespoEvent
                            Fn DispatchOp $ -> Unit
                            -> Unit
                          toggle-focus-within! e false
                          , &unit
                    show
                      not $ :focus-mode? state
                      do (space-y 4)
                        div
                          {} $ :class-name css/row-parted
                          if
                            not $ blank? $ :content state
                            span $ {} (:inner-text "|✕")
                              :class-name $ str-spaced style-close style-clear
                              :role |button
                              :aria-label |clear-prompt
                              :on-click $ fn (e d!)
                                d! $ DispatchOp :widget-state cursor $ assoc state :content |
                                match (browser/query-selector |#message)
                                  (:none) &unit
                                  (:some input) (input .focus!)
                                , &unit
                            span $ {} $ :class-name style-clear
                          div
                            {} $ :class-name $ str-spaced css/row style-gap12
                            , picker-el
                              show
                                contains? (#{} :gemini-flash :gemini-3.5-flash :gemini-3.1-flash-lite-preview) model
                                div
                                  {} (:role |group) (:aria-label |think-toggle)
                                    :class-name $ str-spaced css/row style-checkbox
                                    :on-click $ fn (e d!)
                                      d! $ DispatchOp :widget-state cursor $ assoc state :think?
                                        not $ :think? state
                                      , &unit
                                  input $ {}
                                    :checked $ :think? state
                                    :type |checkbox
                                    :role |checkbox
                                    :aria-label |think-toggle
                                  <> |Think css/font-fancy
                              div
                                {} (:role |group) (:aria-label |search-toggle)
                                  :class-name $ str-spaced css/row style-checkbox
                                  :on-click $ fn (e d!)
                                    d! $ DispatchOp :widget-state cursor $ assoc state :search?
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
                                  hint-fn $ Fn respo.schema/RespoEvent
                                    Fn DispatchOp $ -> Unit
                                    -> Unit
                                  on-submit (:content state) (:search? state) (:think? state) d!
                                  , &unit
          :examples $ []
          :schema $ quote $ Fn (Map Tag Dynamic) respo.schema/Element
            Fn String Bool Bool
              Fn DispatchOp $ -> Unit
              -> Unit
            , Tag (-> respo.schema/Component) (:features :js-ffi)
        'comp-sessions-modal $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-sessions-modal (sessions archived-count on-select on-close on-view-archive)
            let
                history-items $ .foldl sessions 0 $ fn (acc session)
                  hint-fn $ Fn Number ChatSession $ -> Number
                  + acc $ .len $ or (:messages session) ([])
              div
                {} $ :class-name $ str-spaced css/column css/gap8 style-sessions-list
                show (> archived-count 0)
                  div
                    {} $ :class-name style-archive-row
                    span $ {}
                      :style $ {} $ :color (hsl 0 0 50)
                      :inner-text $ str "|Archived: " archived-count "| sessions"
                    button
                      {} (:class-name css/button)
                        :style $ {} $ :cursor :pointer
                        :on-click $ fn (_event d!)
                          hint-fn $ Fn respo.schema/RespoEvent
                            Fn DispatchOp $ -> Unit
                            -> Unit
                          on-close d!
                          on-view-archive
                          , &unit
                      <> "|View Archive"
                if (empty? sessions)
                  div
                    {} $ :style $ {} (:padding |12px)
                      :color $ hsl 0 0 60
                    <> "|No history sessions"
                  respo.core/keyed->
                    {} $ :class-name css/column
                    -> sessions reverse $ map $ fn (session)
                      hint-fn $ Fn ChatSession $ -> respo.schema/ChildPair
                      let
                          session-id $ :id session
                          created-at $ :created-at session
                          preview $ :preview session
                          date-str $ ffi/date-local-string $ ffi/date-from-ms created-at
                        respo.core/keyed-element session-id $ div
                          {} $ :class-name style-session-item
                          div
                            {} (:role |button)
                              :aria-label $ str |session-select: preview
                              :style $ {} (:flex |1) (:cursor :pointer) (:min-width 0) (:overflow :hidden)
                              :on-click $ fn (_event d!)
                                hint-fn $ Fn respo.schema/RespoEvent
                                  Fn DispatchOp $ -> Unit
                                  -> Unit
                                on-select session-id d!
                                on-close d!
                                , &unit
                            div
                              {} $ :style $ {} (:font-size |12px)
                                :color $ hsl 0 0 60
                              <> date-str
                            div
                              {} $ :style $ {} (:margin-top |4px) (:white-space :nowrap) (:overflow :hidden) (:text-overflow :ellipsis) (:max-height |1.2em) (:line-height |1.2)
                              <> preview
                          div
                            {} (:class-name style-delete-button) (:role |button)
                              :aria-label $ str |session-delete: session-id
                              :on-click $ fn (e d!)
                                hint-fn $ Fn respo.schema/RespoEvent
                                  Fn DispatchOp $ -> Unit
                                  -> Unit
                                .stop-propagation! $ :event e
                                d! $ DispatchOp :remove-session session-id
                                , &unit
                            <> "|✕"
                show
                  > (.len sessions) 0
                  div
                    {}
                      :class-name $ str-spaced css/column css/gap8
                      :style $ {} $ :padding "|0 12px 12px 12px"
                    div
                      {} $ :class-name $ str-spaced css/row-parted
                      div
                        {} $ :class-name $ str-spaced css/row css/gap8
                        a $ {} (:class-name style-clear) (:inner-text |Data) (:role |button) (:aria-label |sessions-export-data)
                          :on-click $ fn (e d!)
                            tab-echo! sessions $ Some :edn
                            , &unit
                        a $ {} (:class-name style-clear) (:inner-text |Download) (:role |button) (:aria-label |sessions-download)
                          :on-click $ fn (e d!) (download-sessions! sessions) &unit
                      show
                        > (.len sessions) 0
                        a $ {} (:class-name style-clear) (:inner-text "|Archive all") (:role |button) (:aria-label |sessions-archive-all)
                          :on-click $ fn (e d!) (hint-fn Async)
                            let
                                proceed? $ js/confirm $ str "|Archive " (.len sessions) "| sessions and clear active view?"
                              when proceed? $ let
                                  archive-key $ :archive-key site
                                  raw $ let
                                      host-value $ js-await $ db-get archive-key
                                    if
                                      or (nil? host-value)
                                        = (js/typeof host-value) |undefined
                                      , | $ contract/expect-string "|Archive storage value" host-value
                                  old-archives $ if (blank? raw) (take sessions 0)
                                    map
                                      decode-map-as (parse-cirru-edn raw) (List Dynamic)
                                      fn (session) (app.schema/normalize-chat-session session)
                                  new-archives $ concat old-archives sessions
                                js-await $ db-set archive-key $ format-cirru-edn new-archives
                                d! $ DispatchOp :archive-sessions $ .len new-archives
                            , &unit
                        span $ {}
                    div $ {} $ :style
                      {} $ :height 200
          :examples $ []
          :schema $ quote $ Fn (List ChatSession) Number
            Fn String
              Fn DispatchOp $ -> Unit
              -> Unit
            Fn
              Fn DispatchOp $ -> Unit
              -> Unit
            Fn (-> Unit) (:features :js-ffi) (:async)
            -> respo.schema/Component
            :features :js-ffi
        'create-session $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn create-session (messages model)
            let
                id $ generate-session-id
                first-msg $ .fold
                  assert-type (first messages) (Option ChatMessage)
                  fn () |New-chat
                  fn (message)
                    hint-fn $ Fn ChatMessage $ -> String
                    :content message
              ChatSession :id id :created-at (ffi/now-ms) :messages messages :model model :preview
                let
                    len $ .len first-msg
                    end $ if (< len 100) len 100
                  slice first-msg 0 $ Some end
                , :is-history? false
          :examples $ []
          :schema $ quote $ Fn (List ChatMessage) Tag (-> ChatSession)
        'decode-genai-chunk $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-genai-chunk (chunk)
            let
                chunk-data $ contract/expect-object "|GenAI chunk" chunk
                candidates0 $ contract/object-field "|GenAI stream" chunk-data |candidates
                candidate0 $ if (js-present-dynamic? candidates0) (contract/object-field "|GenAI stream" candidates0 |0) js/undefined
                content0 $ if (js-present-dynamic? candidate0) (contract/object-field "|GenAI stream" candidate0 |content) js/undefined
                parts0 $ if (js-present-dynamic? content0) (contract/object-field "|GenAI stream" content0 |parts) js/undefined
                part0 $ if (js-present-dynamic? parts0) (contract/object-field "|GenAI stream" parts0 |0) js/undefined
                thought0 $ if (js-present-dynamic? part0) (contract/object-field "|GenAI stream" part0 |thought) js/undefined
                thinking? $ if (bool? thought0) (contract/expect-bool "|GenAI thought" thought0) false
                part-text $ if (js-present-dynamic? part0) (contract/object-field "|GenAI stream" part0 |text) js/undefined
                chunk-text $ contract/object-field "|GenAI stream" chunk-data |text
                primary-text $ if (js-present-dynamic? part-text) part-text chunk-text
                prompt-feedback $ contract/object-field "|GenAI stream" chunk-data |promptFeedback
                fallback-text $ if (js-present-dynamic? prompt-feedback) (contract/object-field "|GenAI stream" prompt-feedback |blockReason) js/undefined
                text0 $ if (js-present-dynamic? primary-text) primary-text fallback-text
                text $ stream-text text0
              StreamChunk :text text :thinking? thinking?
          :examples $ [] $ quote
            let
                feedback-only $ js-object $ :promptFeedback
                  js-object $ :blockReason |blocked
                decoded $ unsafe-coerce (decode-genai-chunk feedback-only) 'app.comp.container/StreamChunk
              assert= |blocked $ :text decoded
              assert= false $ :thinking? decoded
          :schema $ quote $ Fn T (-> StreamChunk) (:generics T) (:features :js-ffi)
        'download-sessions! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn download-sessions! (sessions)
            let
                content $ format-cirru-edn sessions
                blob $ js-cast
                  new js/Blob (js-array content)
                    js-object $ :type |application/edn;charset=utf-8
                  , 'js-ffi.browser/BlobHost
                url $ browser/object-url-create blob
                link $ browser/create-element |a
                clickable $ js-cast link 'app.comp.container/DownloadLinkHost
                filename $ str |sessions- (ffi/now-ms) |.cirru
              browser/element-set-attribute! link |href url
              browser/element-set-attribute! link |download filename
              browser/document-append-body! link
              .click! clickable
              browser/element-remove! link
              browser/set-timeout!
                fn () $ browser/object-url-revoke! url
                , 0
            , &unit
          :examples $ []
          :schema $ quote $ Fn (List ChatSession) (-> Unit) (:features :js-ffi)
        'effect-focus $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defeffect effect-focus () (action el at?)
            when (= action :mount)
              browser/set-timeout!
                fn () $ let
                    root $ browser/element-host el
                  match (browser/element-query-selector root |textarea)
                    (:none) &unit
                    (:some textarea)
                      browser/element-select! $ browser/selectable-element-host textarea
                , 0
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> respo.schema/Effect) (:features :js-ffi)
        'ensure-genai! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn ensure-genai! ()
            match @*gen-ai-new
              (:some client) &unit
              (:none)
                let
                    module $ contract/expect-object |GenAI.module $ js-await (js/import |@google/genai)
                    client $ js-cast
                      genai-new module $ get-gemini-key!
                      , 'app.comp.container/GenAIClientHost
                  reset! *gen-ai-new $ Some client
                  , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi) (:async)
        'ensure-openai! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn ensure-openai! (provider)
            let
                base-url $ match provider (:deepseek |https://api.deepseek.com) (:openrouter |https://openrouter.ai/api/v1)
                  _ $ raise |Unknown-OpenAI-compatible-provider
                api-key $ if (= provider :deepseek) (get-deepseek-key!) (get-openrouter-key!)
                replace? $ match @*openai
                  (:none) true
                  (:some client)
                    or
                      not= base-url $ .-base-url client
                      not= api-key $ .-api-key client
              when replace? $ let
                  module $ contract/expect-object |OpenAI.module $ js-await (js/import |openai)
                  client $ js-cast (openai-new module base-url api-key) 'app.comp.container/OpenAIClientHost
                reset! *openai $ Some client
              , &unit
          :examples $ []
          :schema $ quote $ Fn Tag (-> Unit) (:features :js-ffi) (:async)
        'first-line $ %{} 'CodeEntry
          :doc "|last message from error contains a line starts with \"data: \" and an extra error message. In order that JSON is parsed correctly, only first line is used now."
          :code $ quote $ defn first-line (tt)
            let
                lines $ filter (split-lines tt)
                  fn (line)
                    hint-fn $ Fn String $ -> Bool
                    not $ blank? line
              when
                > (.len lines) 1
                eprintln "|Dropping some unexpected lines:" $ slice lines 1
              .unwrap-or (first lines) |
          :examples $ []
          :schema $ quote $ Fn String (-> String)
        'genai-new $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn genai-new (module api-key) (raise "|JavaScript GenAI constructor")
          :examples $ []
          :ffi $ {} (:target :browser)
            :js $ {} $ :inline "|(module, apiKey) => new module.GoogleGenAI({apiKey})"
          :schema $ quote $ Fn JsObject String (-> JsObject) (:features :js-ffi)
        'generate-session-id $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn generate-session-id ()
            str $ ffi/now-ms
          :examples $ []
          :schema $ quote $ Fn (-> String)
        'get-anthropic-key! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn get-anthropic-key! () (required-key! |claude-key "|Required claude-key in localStorage")
          :examples $ []
          :schema $ quote $ Fn (-> String) (:features :js-ffi)
        'get-deepinfra-key! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn get-deepinfra-key! () (required-key! |deepinfra-key "|Required deepinfra-key in localStorage")
          :examples $ []
          :schema $ quote $ Fn (-> String) (:features :js-ffi)
        'get-deepseek-key! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn get-deepseek-key! ()
            let
                key $ required-key! |deepseek-key "|Required deepseek-key in localStorage"
              when chrome-extension? $ js/chrome.storage.local.set $ js-object (:deepseekKey key)
              , key
          :examples $ []
          :schema $ quote $ Fn (-> String) (:features :js-ffi)
        'get-gemini-key! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn get-gemini-key! ()
            let
                key $ required-key! |gemini-key "|Required gemini-key in localStorage"
              when chrome-extension? $ js/chrome.storage.local.set $ js-object (:geminiKey key)
              , key
          :examples $ []
          :schema $ quote $ Fn (-> String) (:features :js-ffi)
        'get-openrouter-key! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn get-openrouter-key! () (required-key! |openrouter-key "|Required openrouter-key in localStorage")
          :examples $ []
          :schema $ quote $ Fn (-> String) (:features :js-ffi)
        'js-present-dynamic? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn js-present-dynamic? (value)
            if (js/Boolean value) true false
          :examples $ []
          :schema $ quote $ Fn T (-> Bool) (:generics T) (:features :js-ffi)
        'json-pattern? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn json-pattern? (text)
            or (starts-with? text |{) (starts-with? text |[)
          :examples $ []
          :schema $ quote $ Fn String (-> Bool)
        'make-genai-tools $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn make-genai-tools (search? has-url?)
            cond
                and search? has-url?
                js-array
                  js-object $ :googleSearch $ js-object
                  js-object $ :urlContext $ js-object
              search? $ js-array $ js-object
                :googleSearch $ js-object
              has-url? $ js-array $ js-object
                :urlContext $ js-object
              true $ js-array
          :examples $ []
          :schema $ quote $ Fn Bool Bool (-> JsObject) (:features :js-ffi)
        'messages->anthropic $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn messages->anthropic (messages)
            js-array & $ map messages $ fn (m)
              hint-fn $ {} $ :args ([] 'app.schema/ChatMessage)
              js-object
                :role $ if
                  = :assistant $ :role m
                  , |assistant |user
                :content $ :content m
          :examples $ []
          :schema $ quote $ Fn (List ChatMessage) (-> JsObject) (:features :js-ffi)
        'messages->gemini $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn messages->gemini (messages)
            js-array & $ map messages $ fn (m)
              hint-fn $ {} $ :args ([] 'app.schema/ChatMessage)
              js-object
                :role $ if
                  = :assistant $ :role m
                  , |model |user
                :parts $ js-array $ js-object
                  :text $ :content m
          :examples $ []
          :schema $ quote $ Fn (List ChatMessage) (-> JsObject) (:features :js-ffi)
        'messages->openai $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn messages->openai (messages)
            js-array & $ map messages $ fn (m)
              hint-fn $ {} $ :args ([] 'app.schema/ChatMessage)
              js-object
                :role $ if
                  = :assistant $ :role m
                  , |assistant |user
                :content $ :content m
          :examples $ []
          :schema $ quote $ Fn (List ChatMessage) (-> JsObject) (:features :js-ffi)
        'model-storage-key $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn model-storage-key (model)
            match model (:claude-3.7 |claude-key) (:openrouter/anthropic/claude-sonnet-4 |openrouter-key) (:openrouter/anthropic/claude-sonnet-4.5 |openrouter-key) (:openrouter/anthropic/claude-opus-4 |openrouter-key) (:openrouter/anthropic/claude-3.7-sonnet:thinking |openrouter-key) (:openrouter/google/gemini-2.5-pro-preview |openrouter-key)
              :openrouter/google/gemini-2.5-flash-preview-05-20 |openrouter-key
              :openrouter/openai/gpt-5 |openrouter-key
              :openrouter/deepseek/deepseek-chat-v3.1 |openrouter-key
              :deepseek-v4-pro |deepseek-key
              :deepseek-v4-flash |deepseek-key
              _ |gemini-key
          :examples $ []
          :schema $ quote $ Fn Tag (-> String)
          :tests $ [] $ %{} 'TestEntry (:name |maps-provider-keys)
            :code $ quote $ do
              assert= |gemini-key $ model-storage-key :gemini
              assert= |openrouter-key $ model-storage-key :openrouter/openai/gpt-5
              assert= |deepseek-key $ model-storage-key :deepseek-v4-pro
              assert= |claude-key $ model-storage-key :claude-3.7
        'models-menu $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def models-menu
            [] (ModelMenuItem :model :gemini-3.5-flash-lite :label "|Gemini Flash Lite 3.5") (ModelMenuItem :model :gemini-3.6-flash :label "|Gemini Flash 3.6") (ModelMenuItem :model :gemini-3.7-flash :label "|Gemini Flash 3.7") (ModelMenuItem :model :gemini-3.8-flash :label "|Gemini Flash 3.8") (ModelMenuItem :model :gemini-flash :label "|Gemini Flash 3") (ModelMenuItem :model :gemini-3.5-flash :label "|Gemini Flash 3.5") (ModelMenuItem :model :gemini-pro :label "|Gemini Pro 3.1") (ModelMenuItem :model :gemini-3.1-flash-lite-preview :label "|Gemini Flash Lite 3.1") (ModelMenuItem :model :flash-imagen :label "|Flash Imagen") (ModelMenuItem :model :imagen-4 :label "|Imagen 4") (ModelMenuItem :model :gemma :label "|Gemma 3 27b") (ModelMenuItem :model :openrouter/anthropic/claude-sonnet-4.5 :label "|Openrouter Claude Sonnet 4.5") (ModelMenuItem :model :openrouter/anthropic/claude-opus-4 :label "|Openrouter Claude Opus 4") (ModelMenuItem :model :openrouter/google/gemini-2.5-pro-preview :label "|Openrouter Google Gemini 2.5 pro preview")
              ModelMenuItem :model :openrouter/google/gemini-2.5-flash-preview-05-20 :label "|Openrouter Google Gemini 2.5 flash preview"
              ModelMenuItem :model :openrouter/openai/gpt-5 :label "|Openrouter GPT 5"
              ModelMenuItem :model :openrouter/deepseek/deepseek-chat-v3.1 :label "|Openrouter deepseek-chat-v3.1"
              ModelMenuItem :model :deepseek-v4-pro :label "|DeepSeek V4 Pro"
              ModelMenuItem :model :deepseek-v4-flash :label "|DeepSeek V4 Flash"
              ; ModelMenuItem :model :claude-4.5 :label "|Claude 4.5"
          :examples $ []
          :schema $ quote $ List ModelMenuItem
        'normalize-chat-state $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn normalize-chat-state (raw)
            if
              and (struct? raw) (&struct:matches? raw ChatState)
              struct-match raw
                ChatState state $ if
                  match (struct-definition state)
                    (:none) false
                    (:some definition) (identical? definition ChatState)
                  , state $ app.schema/ChatState :answer
                    stream-text $ :answer state
                    , :loading? (:loading? state) :done? (:done? state) :messages
                      map (:messages state)
                        fn (message) (app.schema/normalize-chat-message message)
                      , :model
                        if
                          tag? $ :model state
                          :model state
                          , :gemini
                        , :thinking
                          stream-text $ :thinking state
                _ other $ raise "|Expected ChatState nominal value"
              let
                  input $ if (struct? raw)
                    if
                      = (&struct:get-name raw) :ChatState
                      &struct:to-map raw
                      raise "|Expected ChatState nominal value"
                    , raw
                let
                    data $ decode-map-as input $ Map Tag Dynamic
                    loading-value $ .unwrap-or (get data :loading?) false
                    done-value $ .unwrap-or (get data :done?) true
                    model-value $ .unwrap-or (get data :model) :gemini
                  app.schema/ChatState :answer
                    stream-text $ .unwrap-or (get data :answer) |
                    , :loading?
                      match loading-value (true true) (false false) (_ false)
                      , :done?
                        match done-value (true true) (false false) (_ true)
                        , :messages
                          let
                              raw-message-value $ .unwrap-or (get data :messages) ([])
                              raw-messages $ if (list? raw-message-value)
                                decode-map-as raw-message-value $ List Dynamic
                                []
                            map raw-messages $ fn (message) (app.schema/normalize-chat-message message)
                          , :model
                            if (tag? model-value) model-value :gemini
                            , :thinking $ stream-text $ .unwrap-or (get data :thinking) |
          :examples $ []
          :schema $ quote $ Fn T (-> ChatState) (:generics T) (:features :js-ffi)
          :tests $ [] $ %{} 'TestEntry (:name |legacy-nil-fields)
            :code $ quote $ let
                legacy $ normalize-chat-state $ {} (:answer nil) (:loading? false) (:done? true)
                  :messages $ []
                  :model :gemini
                  :thinking nil
                missing-done $ normalize-chat-state $ {} (:answer |) (:loading? false)
                  :messages $ []
                  :model :gemini
                  :thinking |
                invalid-done $ normalize-chat-state $ {} (:answer |) (:loading? false) (:done? nil)
                  :messages $ []
                  :model :gemini
                  :thinking |
              is $ = | $ :answer legacy
              is $ = | $ :thinking legacy
              is $ :done? missing-done
              is $ :done? invalid-done
            :tags $ #{} :regression :unit
        'on-fill $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-fill (cursor state on-submit)
            %{} respo.schema/RespoListener (:name :on-fill)
              :handler $ fn (event dispatch!)
                hint-fn $ Fn AnyEnum
                  Fn DispatchOp $ -> Unit
                  -> Unit
                match (try-decode-map-as event 'app.schema/FillEvent)
                  (:ok checked)
                    match checked $
                      :fill-text text submit?
                      do
                        dispatch! $ DispatchOp :widget-state cursor $ assoc state :content text
                        when submit? $ on-submit text (:search? state) (:think? state) dispatch!
                        , &unit
                  (:err _) &unit
          :examples $ []
          :schema $ quote $ Fn (List respo.schema/CoordKey) MessageBoxState
            Fn String Bool Bool
              Fn DispatchOp $ -> Unit
              -> Unit
            -> respo.schema/RespoListener
          :tests $ [] $ %{} 'TestEntry (:name |fills-draft-and-only-submits-when-requested)
            :code $ quote $ let
                state $ MessageBoxState :content |old :search? true :think? false :focus-mode? false
                cursor $ [] :message-box
                changes $ ref $ assert-type ([]) (List DispatchOp)
                submissions $ ref $ assert-type ([]) (List String)
                dispatch! $ fn (op)
                  hint-fn $ Fn DispatchOp $ -> Unit
                  swap! changes append op
                  , &unit
                submit! $ fn (text search? think? _dispatch!)
                  hint-fn $ Fn String Bool Bool
                    Fn DispatchOp $ -> Unit
                    -> Unit
                  assert= true search?
                  assert= false think?
                  swap! submissions append text
                  , &unit
                listener $ on-fill cursor state submit!
                handler $ :handler listener
              handler (app.schema/FillEvent :fill-text |draft false) dispatch!
              assert= ([]) @submissions
              handler (app.schema/FillEvent :fill-text |send true) dispatch!
              assert= ([] |send) @submissions
              assert=
                []
                  DispatchOp :widget-state cursor $ assoc state :content |draft
                  DispatchOp :widget-state cursor $ assoc state :content |send
                , @changes
        'openai-new $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn openai-new (module base-url api-key) (raise "|JavaScript OpenAI constructor")
          :examples $ []
          :ffi $ {} (:target :browser)
            :js $ {} $ :inline "|(module, baseURL, apiKey) => new module.default({baseURL, apiKey, defaultHeaders:{}, dangerouslyAllowBrowser:true})"
          :schema $ quote $ Fn JsObject String String (-> JsObject) (:features :js-ffi)
        'pick-model $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn pick-model (variant)
            match variant (:gemini-3.5-flash-lite |gemini-3.5-flash-lite) (:gemini-3.6-flash |gemini-3.6-flash) (:gemini-3.7-flash |gemini-3.7-flash) (:gemini-3.8-flash |gemini-3.8-flash) (:gemini-flash |gemini-3-flash-preview) (:gemini-3.5-flash |gemini-3.5-flash) (:gemini-3.1-flash-lite-preview |gemini-3.1-flash-lite) (:gemini-pro |gemini-3.1-pro-preview) (:gemma |gemma-3-27b-it) (_ |gemini-3.5-flash-lite)
          :examples $ []
          :schema $ quote $ Fn Tag (-> String)
          :tests $ [] $ %{} 'TestEntry (:name |routes-current-gemini-models)
            :code $ quote $ do
              assert= |gemini-3.5-flash-lite $ pick-model :gemini
              assert= |gemini-3.5-flash-lite $ pick-model :gemini-3.5-flash-lite
              assert= |gemini-3.6-flash $ pick-model :gemini-3.6-flash
              assert= |gemini-3-flash-preview $ pick-model :gemini-flash
              assert= |gemini-3.1-pro-preview $ pick-model :gemini-pro
        'required-key! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn required-key! (storage-key prompt-text)
            let
                stored $ browser/storage-get-or storage-key |
                key stored
              if (blank? key)
                raise $ new js/Error prompt-text
                , key
          :examples $ []
          :schema $ quote $ Fn String String (-> String) (:features :js-ffi)
        'save-current-session $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn save-current-session (store state)
            let
                messages $ :messages state
                model $ either (:model state) :gemini
              if
                > (.len messages) 0
                let
                    new-session $ create-session messages model
                    updated-session $ assoc new-session :is-history? true
                    sessions $ or (:sessions store) ([])
                  assoc store :sessions $ append sessions updated-session
                , store
          :examples $ []
          :schema $ quote $ Fn Store ChatState (-> Store)
        'stream-text $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn stream-text (value)
            if (string? value) value |
          :examples $ []
          :schema $ quote $ Fn T (-> String) (:generics T) (:features :js-ffi)
          :tests $ []
            %{} 'TestEntry (:name |keeps-string)
              :code $ quote $ is
                = |hello $ stream-text |hello
              :tags $ #{} :unit
            %{} 'TestEntry (:name |ignores-non-string)
              :code $ quote $ is
                = | $ stream-text nil
              :tags $ #{} :regression :unit
        'style-a-toggler $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-a-toggler
            {}
              |& $ {} (:cursor :pointer) (:background-color :white) (:color :black)
              "|.focus-within &" $ {} $ :color :black
          :examples $ []
          :schema $ quote String
        'style-abort-close $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-abort-close
            {} $ |& $ {} (:vertical-align :middle) (:font-size 10)
          :examples $ []
          :schema $ quote String
        'style-app-global $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-app-global
            {}
                str "|& ." style-code-block
                {} $ :max-width |90vw
              |& $ {} (:color |#999) (:transition-duration |300ms)
                :background-color $ hsl 0 0 98
                :touch-action :none
              |&:hover $ {} (:color |#777)
                :background-color $ hsl 0 0 100
          :examples $ []
          :schema $ quote String
        'style-archive-close $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-archive-close
            {}
              |& $ {} (:cursor :pointer) (:font-size 18)
                :color $ hsl 0 0 50
                :transition-duration |200ms
              |&:hover $ {} $ :color (hsl 0 0 20)
          :examples $ []
          :schema $ quote String
        'style-archive-header $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-archive-header
            {} $ |& $ {} (:padding "|12px 16px")
              :border-bottom $ str "|1px solid " $ hsl 0 0 90
              :background-color $ hsl 0 0 96
              :display :flex
              :flex-direction :row
              :align-items :center
              :justify-content :space-between
          :examples $ []
          :schema $ quote String
        'style-archive-row $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-archive-row
            {} $ |& $ {} (:padding |12px)
              :border-bottom $ str "|1px solid " $ hsl 0 0 90
              :display :flex
              :justify-content :space-between
              :align-items :center
          :examples $ []
          :schema $ quote String
        'style-checkbox $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-checkbox
            {} $ |& $ {} (:cursor :pointer) (:user-select :none) (:font-size 12) (:line-height |28px) (:vertical-align :middle)
          :examples $ []
          :schema $ quote String
        'style-clear $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-clear
            {} $ |& $ {} (:opacity 0.4) (:padding "|4px 8px") (:display :inline-block) (:height |24px)
          :examples $ []
          :schema $ quote String
        'style-code-content $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-code-content
            {} $ |& $ {} (:line-height |1.5) (:font-size 13)
          :examples $ []
          :schema $ quote String
        'style-delete-button $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-delete-button
            {}
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
          :schema $ quote String
        'style-fill $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-fill
            {}
              |& $ {} (:cursor :pointer) (:user-select :none) (:display :inline-flex) (:align-items :center) (:justify-content :center) (:transition-duration |200ms)
                :color $ hsl 0 0 80
                :margin "|0 4px 0 8px"
              |&:hover $ {}
                :color $ hsl 0 0 40
                :transform "|scale(1.06)"
          :examples $ []
          :schema $ quote String
        'style-focus-box $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-focus-box
            {} $ |& $ {} (:width |100%) (:border-radius 12) (:min-height 40) (:max-height 40) (:padding "|9px 12px") (:cursor :text) (:overflow :hidden) (:white-space :pre) (:text-overflow :ellipsis) (:background-color :transparent)
          :examples $ []
          :schema $ quote String
        'style-focus-link $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-focus-link
            {}
              |& $ {} (:cursor :pointer) (:font-size 13)
                :color $ hsl 200 80 40
                :text-decoration :none
                :padding "|4px 0"
              |&:hover $ {} $ :text-decoration :underline
          :examples $ []
          :schema $ quote String
        'style-gap12 $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-gap12
            {} $ |& $ {} (:gap 12)
          :examples $ []
          :schema $ quote String
        'style-history-button $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-history-button
            {} $ |& $ {} (:font-size |20px)
              :color $ hsl 200 80 60
              :height |14px
              :line-height |14px
              :display :flex
              :align-items :center
              :justify-content :center
              |&:hover $ {} $ :color (hsl 200 80 50)
          :examples $ []
          :schema $ quote String
        'style-history-count $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-history-count
            {} $ |& $ {}
              :color $ hsl 200 80 60
              :font-size |12px
              :display :inline-block
          :examples $ []
          :schema $ quote String
        'style-image $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-image
            {} $ |& $ {} (:max-width |100%) (:align-self :flex-start) (:border-radius |6px)
              :border $ str "|1px solid " $ hsl 0 0 90
          :examples $ []
          :schema $ quote String
        'style-md-content $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-md-content
            {} $ "|& .md-p" $ {} (:margin "|16px 0") (:line-height |1.6)
          :examples $ []
          :schema $ quote String
        'style-message-actions $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-message-actions
            {} $ |& $ {} (:margin-top 6) (:justify-content :flex-end) (:width |100%)
          :examples $ []
          :schema $ quote String
        'style-message-area $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-message-area
            {} $ |& $ {} (:flex 2) (:overflow :scroll)
          :examples $ []
          :schema $ quote String
        'style-message-assistant $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-message-assistant
            {} $ |& $ {} (:align-self :flex-start)
          :examples $ []
          :schema $ quote String
        'style-message-box $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-message-box
            {}
              |& $ {} (:width |100%) (:max-width 1200) (:right |50%) (:padding |8px) (:margin :auto) (:transition-duration |300ms) (; :transform "|translate(50%,0)") (:transition-property |height)
              |&:focus-within $ {} (:opacity 1) (; :transform "|translate(50%,0)")
          :examples $ []
          :schema $ quote String
        'style-message-box-panel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-message-box-panel
            {}
              |& $ {} (:position :absolute) (:bottom 0) (:opacity 1) (:width |100%)
                :background-color $ hsl 0 0 100 0.7
                :border-top $ str "|1px solid " $ hsl 0 0 80 0.6
              |&.focus-within $ {}
                :background-color $ hsl 0 0 100 0.9
                :box-shadow $ str "|0 0px 8px " $ hsl 0 0 0 0.3
          :examples $ []
          :schema $ quote String
        'style-message-item $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-message-item
            {} $ |& $ {} (:line-height |1.6)
          :examples $ []
          :schema $ quote String
        'style-message-list $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-message-list
            {} $ |& $ {} (:flex 2) (:padding "|40px 16px 20vh 16px") (:width |100%) (:max-width 1200) (:margin :auto) (:position :relative)
          :examples $ []
          :schema $ quote String
        'style-message-role $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-message-role
            {} $ |& $ {} (:font-size 12)
              :color $ hsl 0 0 50
              :margin-bottom 6
              :padding-right |16px
          :examples $ []
          :schema $ quote String
        'style-message-text $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-message-text
            {} $ |& $ {} (:white-space :pre-wrap) (:line-height |1.6) (:margin 0) (:padding-right |16px)
          :examples $ []
          :schema $ quote String
        'style-message-user $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-message-user
            {}
              |& $ {} (:align-self :flex-end)
                :background-color $ hsl 0 0 96
                :padding "|12px 0 12px 16px"
                :border-radius 10
                :max-height |240px
                :max-width |100%
                :overflow-y :auto
              |&::-webkit-scrollbar $ {} $ :width |4px
              |&::-webkit-scrollbar-thumb $ {}
                :background-color $ hsl 0 0 80
                :border-radius |2px
              |&::-webkit-scrollbar-track $ {} $ :background-color :transparent
          :examples $ []
          :schema $ quote String
        'style-more $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-more
            {}
              |& $ {} (:text-align :center) (:min-width 80)
                :background-color $ hsl 0 0 94
                :border-radius 16
                :padding "|4px 12px"
                :margin "|8px 0"
                :white-space :nowrap
                :display :inline-block
              |&:hover $ {} $ :box-shadow
                str "|1px 1px 4px " $ hsl 0 0 0 0.2
          :examples $ []
          :schema $ quote String
        'style-reply-actions $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-reply-actions
            {} $ |& $ {} (:margin-top 6) (:justify-content :flex-start) (:width |100%)
          :examples $ []
          :schema $ quote String
        'style-reply-button $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-reply-button
            {}
              |& $ {} (:text-align :center) (:min-width 80)
                :background-color $ hsl 0 0 100
                :border-radius 16
                :padding "|4px 12px"
                :margin "|8px 0"
                :white-space :nowrap
                :display :inline-block
              |&:hover $ {} $ :box-shadow
                str "|1px 1px 4px " $ hsl 0 0 0 0.2
          :examples $ []
          :schema $ quote String
        'style-session-item $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-session-item
            {} $ |& $ {} (:padding |12px)
              :border-bottom $ str "|1px solid " $ hsl 0 0 90
              :display :flex
              :flex-direction :row
              :align-items :center
              :gap |12px
              |:hover $ {} $ :background-color (hsl 0 0 96)
          :examples $ []
          :schema $ quote String
        'style-sessions-list $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-sessions-list
            {} $ |& $ {} (:flex |1) (:overflow-y :auto) (:min-width |300px)
          :examples $ []
          :schema $ quote String
        'style-submit $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-submit
            {} $ |& $ {}
          :examples $ []
          :schema $ quote String
        'style-textbox $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-textbox
            {}
              |& $ {} (:border-radius 12) (:height "|max(100px,15vh)") (:width |100%) (:transition-duration |320ms) (:border :none) (:background-color :transparent)
              |&.focus-within $ {} (:height "|max(240px,32vh)") (:border :none) (:box-shadow :none)
          :examples $ []
          :schema $ quote String
        'style-textbox-compact $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-textbox-compact
            {}
              |& $ {} (:height 40) (:min-height 40) (:max-height 40) (:overflow :hidden)
              |&.focus-within $ {} (:height "|max(240px,32vh)") (:min-height |unset) (:max-height |unset)
          :examples $ []
          :schema $ quote String
        'style-thinking $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-thinking
            {}
              |& $ {} (:max-height 200) (:overflow :auto) (:padding "|12px 16px")
                :background-color $ hsl 0 0 96
                :font-size 12
                :line-height |1.8
                :color $ hsl 0 0 50
                :border-radius 8
                :margin-bottom 12
                :border $ str "|1px solid " $ hsl 0 0 90
              "|& .md-p" $ {} $ :margin "|4px 0"
          :examples $ []
          :schema $ quote String
        'submit-message! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn submit-message! (cursor state prompt-text search? think? model d!)
            let
                state1 $ assoc state :messages $ append-user-message (:messages state) prompt-text
                *text $ ref |
                *thinking-text $ ref |
                model $ :model state
              d! $ DispatchOp :widget-state cursor state1
              try
                match model
                  :gemini-3.1-flash-lite-preview $ js-await $ call-genai-msg! model cursor state1 prompt-text search? think? d! *text *thinking-text
                  :gemini-pro $ js-await $ call-genai-msg! model cursor state1 prompt-text search? true d! *text *thinking-text
                  :flash-imagen $ js-await $ call-flash-imagen-msg! model cursor state1 prompt-text d!
                  :imagen-4 $ js-await $ call-imagen-4-msg! model cursor state1 prompt-text d!
                  :gemini-thinking $ js-await $ call-genai-msg! model cursor state1 prompt-text search? think? d! *text *thinking-text
                  :gemini-flash-thinking $ js-await $ call-genai-msg! model cursor state1 prompt-text search? think? d! *text *thinking-text
                  :gemini-flash-lite $ js-await $ call-genai-msg! model cursor state1 prompt-text search? think? d! *text *thinking-text
                  :gemini-flash $ js-await $ call-genai-msg! model cursor state1 prompt-text search? think? d! *text *thinking-text
                  :gemini-learnlm $ js-await $ call-genai-msg! model cursor state1 prompt-text search? think? d! *text *thinking-text
                  :claude-3.7 $ js-await $ call-anthropic-msg! cursor state1 prompt-text |claude-3-7-sonnet-20250219 false d!
                  :openrouter/anthropic/claude-sonnet-4 $ js-await $ call-openrouter! cursor state1 prompt-text :openrouter |anthropic/claude-sonnet-4 true d! *text
                  :openrouter/anthropic/claude-sonnet-4.5 $ js-await $ call-openrouter! cursor state1 prompt-text :openrouter |anthropic/claude-sonnet-4.5 true d! *text
                  :openrouter/anthropic/claude-opus-4 $ js-await $ call-openrouter! cursor state1 prompt-text :openrouter |anthropic/claude-opus-4 true d! *text
                  :openrouter/anthropic/claude-3.7-sonnet:thinking $ js-await $ call-openrouter! cursor state1 prompt-text :openrouter |anthropic/claude-3.7-sonnet:thinking true d! *text
                  :openrouter/google/gemini-2.5-pro-preview $ js-await $ call-openrouter! cursor state1 prompt-text :openrouter |google/gemini-2.5-pro-preview true d! *text
                  :openrouter/google/gemini-2.5-flash-preview-05-20 $ js-await $ call-openrouter! cursor state1 prompt-text :openrouter |google/gemini-2.5-flash-preview-05-20 true d! *text
                  :openrouter/openai/gpt-5 $ js-await $ call-openrouter! cursor state1 prompt-text :openrouter |openai/gpt-5 true d! *text
                  :openrouter/deepseek/deepseek-chat-v3.1 $ js-await $ call-openrouter! cursor state1 prompt-text :openrouter |deepseek/deepseek-chat-v3.1 true d! *text
                  :deepseek-v4-pro $ js-await $ call-openrouter! cursor state1 prompt-text :deepseek |deepseek-v4-pro true d! *text
                  :deepseek-v4-flash $ js-await $ call-openrouter! cursor state1 prompt-text :deepseek |deepseek-v4-flash true d! *text
                  _ $ js-await $ call-genai-msg! model cursor state1 prompt-text search? think? d! *text *thinking-text
                fn (e) (js/console.error :msg-buffer-request-failed e)
                  let
                      err-text $ str |Failed-to-load: e
                    d! $ DispatchOp :widget-state cursor $ -> state1 (assoc :answer err-text) (assoc :loading? false) (assoc :done? true)
                      assoc :messages $ upsert-assistant-message (:messages state1) err-text |
          :examples $ []
          :schema $ quote $ Fn (List respo.schema/CoordKey) ChatState String Bool Bool Tag
            Fn DispatchOp $ -> Unit
            -> Unit
            :features :js-ffi
            :async
        'toggle-focus-within! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn toggle-focus-within! (respo-event active?)
            when-let
              element $ js-nullish->option $ .-target (:event respo-event)
              let
                  target $ browser/element-host element
                when-let
                  parent $ js-nullish->option $ .-parent-element target
                  when-let
                    box $ js-nullish->option $ .-parent-element parent
                    if active?
                      do (browser/element-class-add! target |focus-within) (browser/element-class-add! box |focus-within)
                      do (browser/element-class-remove! target |focus-within) (browser/element-class-remove! box |focus-within)
            , &unit
          :examples $ []
          :schema $ quote $ Fn respo.schema/RespoEvent Bool (-> Unit) (:features :js-ffi)
        'upsert-assistant-message $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn upsert-assistant-message (messages content thinking)
            let
                size $ .len messages
              .fold
                assert-type (last messages) (Option ChatMessage)
                fn ()
                  hint-fn $ {} $ :return (:: 'List 'app.schema/ChatMessage)
                  conj messages $ ChatMessage :role :assistant :content content :thinking thinking
                fn (last-msg)
                  hint-fn $ Fn ChatMessage $ -> (List ChatMessage)
                  if
                    = :assistant $ :role last-msg
                    assoc messages (dec size)
                      -> last-msg (assoc :content content) (assoc :thinking thinking)
                    conj messages $ ChatMessage :role :assistant :content content :thinking thinking
          :examples $ []
          :schema $ quote $ Fn (List ChatMessage) String String
            -> $ List ChatMessage
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.container
          :require (respo-ui.css :as css)
            respo.css :refer $ defstyle
            respo.util.format :refer $ hsl
            respo.core :refer $ defcomp defeffect show <> >> list-> div button textarea span input a pre img memo-comp-by
            respo.comp.space :refer $ space-x space-y
            respo.comp.inspect :refer $ comp-inspect
            reel.comp.reel :refer $ comp-typed-reel
            app.config :refer $ dev? chrome-extension? site
            respo-md.comp.md :refer $ comp-md-block style-code-block
            respo-ui.comp :refer $ comp-copy style-close
            |../extension/get-selected :refer $ get-selected
            |../lib/db :refer $ db-get db-set
            |../lib/image :refer $ base64ToBlob
            respo-alerts.core :refer $ use-modal-menu use-prompt use-drawer use-alert
            respo-ui.util :refer $ tab-echo!
            app.schema :refer $ Store ChatState ChatSession ChatMessage MessageBoxState DispatchOp store
            calcit.test :refer $ is
            js-ffi.browser :as browser
            js-ffi.shared :as ffi
            js-ffi.contract :as contract
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'Site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Site (:storage-key String) (:archive-key String)
          :examples $ []
          :schema $ quote StructDef
        'chrome-extension? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def chrome-extension? (detect-chrome-extension?)
          :examples $ []
          :schema $ quote Bool
        'detect-chrome-extension? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn detect-chrome-extension? () (raise "|Browser-only Chrome runtime detection")
          :examples $ []
          :ffi $ {} (:target :browser)
            :js $ {} $ :inline "|() => window.chrome?.runtime?.id != null"
          :schema $ quote $ Fn (-> Bool) (:features :js-ffi)
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $ .unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ quote Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ Site :storage-key |msg-buffer :archive-key |msg-buffer-archive
          :examples $ []
          :schema $ quote Site
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
    'app.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *reel (typed/new-reel schema/store)
          :examples $ []
          :schema $ quote $ Ref (typed/State schema/DispatchOp schema/Store)
        'ChromeDisconnectEventHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait ChromeDisconnectEventHost
            .add-listener! $ Fn app.main/ChromeDisconnectEventHost
              Fn Dynamic $ -> Unit
              -> Unit
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} $ :add-listener! |addListener
          :schema $ quote Trait
        'ChromePortHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait ChromePortHost
            :onDisconnect $ JsNullish app.main/ChromeDisconnectEventHost
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ quote Trait
        'DocumentHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait DocumentHost
            :visibilityState $ JsNullish String
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ quote Trait
        'ExtensionMessageHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait ExtensionMessageHost
            :action $ JsNullish String
            :content $ JsNullish String
            :text $ JsNullish String
            :submit? $ JsNullish Bool
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ quote Trait
        'connect-to-worker! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn connect-to-worker! ()
            when config/chrome-extension? $ let
                port $ unsafe-coerce
                  js/chrome.runtime.connect $ js-object $ :name |mySidepanel
                  , 'app.main/ChromePortHost
              let
                  on-disconnect $ .-onDisconnect port
                when (js-present? on-disconnect)
                  let
                      listener $ assert-type on-disconnect ChromeDisconnectEventHost
                    listener .add-listener! $ fn (event) (println |Worker-disconnected-retrying) (js/setTimeout connect-to-worker! 500) &unit
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            when config/dev? $ js/console.log |Dispatch: op
            reset! *reel $ match op
              (app.schema/DispatchOp action)
                typed/record-op updater @*reel action (generate-id!) (ffi/now-ms)
              (reel.typed/Control control) (typed/apply-control updater @*reel control)
            , &unit
          :examples $ []
          :schema $ quote $ Fn schema/ResolvedOp (-> Unit) (:features :js-ffi)
        'dispatch-event! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch-event! (event)
            dispatch! $ normalize-event event
          :examples $ []
          :schema $ quote $ Fn AnyEnum (-> Unit) (:features :js-ffi) (:open :decode)
        'extension-action $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn extension-action (message)
            js-nullish->option $ .-action message
          :examples $ []
          :schema $ quote $ Fn ExtensionMessageHost
            -> $ Option String
            :features :js-ffi
        'hydrate-storage-later! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn hydrate-storage-later! (on-ready)
            browser/set-timeout!
              fn ()
                let
                    storage $ browser/window-local-storage
                  match
                    js-nullish->option $ storage .get-item $ :storage-key config/site
                    (:none) &unit
                    (:some serialized)
                      let
                          t-start $ ffi/now-ms
                        dispatch! $ schema/DispatchOp :hydrate-storage $ schema/normalize-store (parse-cirru-edn serialized)
                        println |Hydrated-in $ - (ffi/now-ms) t-start
                on-ready
              , 0
            , &unit
          :examples $ []
          :schema $ quote $ Fn
            Fn $ -> Unit
            -> Unit
            :features :js-ffi
        'listen-extension! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn listen-extension! ()
            js/chrome.runtime.onMessage.addListener $ fn (raw-message sender respond!)
              let
                  message $ unsafe-coerce raw-message ExtensionMessageHost
                  action $ .unwrap-or (extension-action message) |
                when (= |menu-summary action)
                  let
                      source $ .unwrap-or
                        js-nullish->option $ .-content message
                        , |
                      content $ str "|你扮演一个专业的工程师, 对以下内容做一下讲解, 用中文, 注意要简略, 内容注意分块.\n\n" &newline &newline source
                      event-tuple $ schema/FillEvent :fill-text content true
                    send-to-component! event-tuple
                when (= |fill-text action)
                  let
                      content $ .unwrap-or
                        js-nullish->option $ .-text message
                        , |
                      submit? $ .unwrap-or
                        js-nullish->option $ .-submit? message
                        , true
                      event-tuple $ schema/FillEvent :fill-text content submit?
                    send-to-component! event-tuple
                when (= |menu-translate action)
                  let
                      source $ .unwrap-or
                        js-nullish->option $ .-content message
                        , |
                      content $ str "|请将以下内容翻译成中文, 保持简洁分段:\n\n" &newline &newline source
                      event-tuple $ schema/FillEvent :fill-text content true
                    send-to-component! event-tuple
                when (= |menu-custom action)
                  let
                      content $ .unwrap-or
                        js-nullish->option $ .-content message
                        , |
                      event-tuple $ schema/FillEvent :fill-text content false
                    send-to-component! event-tuple
              , &unit
            connect-to-worker!
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            let
                t0 $ unsafe-coerce (ffi/now-ms) Number
              println "|Starting main! at" t0
              println "|Running mode:" $ if config/dev? |dev |release
              if config/dev? $ load-console-formatter!
              render-app!
              add-watch! *reel :changes $ fn (reel prev) (render-app!)
              add-watch! *archived-sessions :changes $ fn (s prev) (render-app!)
              add-watch! *viewing-archive-session :changes $ fn (s prev) (render-app!)
              listen-devtools! |k on-control!
              js/window.addEventListener |dblclick $ fn (event) (.!preventDefault event)
              js/window.addEventListener |wheel
                fn (event)
                  if (.-ctrlKey event) (.!preventDefault event)
                js-object $ :passive false
              hydrate-storage-later! $ fn ()
                js/window.addEventListener |beforeunload $ fn (event) (persist-storage!)
                js/window.addEventListener |visibilitychange $ fn (event)
                  let
                      document $ unsafe-coerce js/document DocumentHost
                      visibility-state $ .unwrap-or
                        js-nullish->option $ .-visibilityState document
                        , |
                    if (= |hidden visibility-state) (persist-storage!)
                , &unit
              if config/chrome-extension? $ listen-extension!
              sync-gemini-key!
              let
                  t1 $ unsafe-coerce (ffi/now-ms) Number
                println "|App started at" t1 |cost (- t1 t0) |ms
              , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn mount-target ()
            let
                document $ js-cast js/document 'respo.dom/DomDocument
              document .query-selector |.app
          :examples $ []
          :schema $ quote $ Fn
            -> $ JsNullish respo.dom/DomElement
            :features :js-ffi
        'normalize-event $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn normalize-event (raw)
            if
              = (enum-definition raw) (Some schema/DispatchOp)
              decode-map-as raw app.schema/DispatchOp
              match raw
                (:states cursor data)
                  schema/DispatchOp :states
                    decode-map-as cursor $ List respo.schema/CoordKey
                    , data
                _ $ do (eprintln "|unknown op:" raw) (schema/DispatchOp :unhandled)
          :examples $ []
          :schema $ quote $ Fn AnyEnum (-> schema/DispatchOp) (:open :decode)
        'on-control! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-control! (control) (dispatch! control)
          :examples $ []
          :schema $ quote $ Fn typed/Control (-> Unit) (:features :js-ffi)
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-storage! ()
            println "|Saved at" $ :iso $ ffi/date-now-snapshot
            let
                storage $ browser/window-local-storage
                store $ :store @*reel
              storage .set-item! (:storage-key config/site) (schema/encode-store store)
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if
              not $ if (js/Boolean build-errors) true false
              do (remove-watch! *reel :changes) (remove-watch! *archived-sessions :changes) (remove-watch! *viewing-archive-session :changes) (clear-cache!)
                add-watch! *reel :changes $ fn (reel prev) (render-app!)
                add-watch! *archived-sessions :changes $ fn (s prev) (render-app!)
                add-watch! *viewing-archive-session :changes $ fn (s prev) (render-app!)
                reset! *reel $ typed/refresh updater @*reel schema/store
                hud! |ok~ |Ok
              hud! |error $ unsafe-coerce build-errors Dynamic
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            let
                t_start $ ffi/now-ms
              println "|Rendering app..."
              render-with! (mount-target)
                fn () $ comp-container @*reel on-control!
                fn (event)
                  hint-fn $ Fn *dispatch-op $ -> Unit
                  dispatch-event! event
              println "|Rendered in"
                - (ffi/now-ms) t_start
                , |ms
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'sync-gemini-key! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn sync-gemini-key! ()
            when config/chrome-extension? $ do
              let
                  gemini-key $ js/localStorage.getItem |gemini-key
                when (js-present? gemini-key)
                  js/chrome.runtime.sendMessage $ js-object (:action |sync-gemini-key) (:key gemini-key)
                  js/chrome.storage.local.set $ js-object $ :geminiKey gemini-key
              let
                  deepseek-key $ js/localStorage.getItem |deepseek-key
                when (js-present? deepseek-key)
                  js/chrome.runtime.sendMessage $ js-object (:action |sync-deepseek-key) (:key deepseek-key)
                  js/chrome.storage.local.set $ js-object $ :deepseekKey deepseek-key
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require
            respo.core :refer $ render-with! clear-cache!
            app.comp.container :refer $ comp-container submit-message! *archived-sessions *viewing-archive-session
            app.updater :refer $ updater
            app.schema :as schema
            reel.util :refer $ listen-devtools!
            app.config :as config
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
            respo.controller.client :refer $ send-to-component!
            js-ffi.shared :as ffi
            js-ffi.browser :as browser
            reel.typed :as typed
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'ChatMessage $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct ChatMessage (:role Tag) (:content String) (:thinking String)
          :examples $ []
          :schema $ quote StructDef
        'ChatPatchValue $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defunion ChatPatchValue String Bool Tag (List app.schema/ChatMessage)
          :examples $ []
          :schema $ quote UnionDef
        'ChatSession $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct ChatSession (:id String) (:created-at Number)
            :messages $ List app.schema/ChatMessage
            :model Tag
            :preview String
            :is-history? Bool
          :examples $ []
          :schema $ quote StructDef
        'ChatState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct ChatState (:answer String) (:loading? Bool) (:done? Bool)
            :messages $ List app.schema/ChatMessage
            :model Tag
            :thinking String
          :examples $ []
          :schema $ quote StructDef
        'DispatchOp $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum DispatchOp (:unhandled)
            :states (List respo.schema/CoordKey) Dynamic
            :widget-state (List respo.schema/CoordKey) WidgetState
            :states-merge (List respo.schema/CoordKey) app.schema/ChatState $ Map Tag ChatPatchValue
            :hydrate-storage app.schema/Store
            :change-model
            :save-session app.schema/ChatState
            :session $ Option String
            :load-session (List respo.schema/CoordKey) app.schema/ChatState app.schema/ChatSession
            :remove-session String
            :archive-sessions Number
            :update-archived-count Number
            :clear-sessions
          :examples $ []
          :schema $ quote EnumDef
        'FillEvent $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum FillEvent (:fill-text String Bool)
          :examples $ []
          :schema $ quote EnumDef
        'MessageBoxState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct MessageBoxState (:content String) (:search? Bool) (:think? Bool) (:focus-mode? Bool)
          :examples $ []
          :schema $ quote StructDef
        'ResolvedOp $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defunion ResolvedOp app.schema/DispatchOp reel.typed/Control
          :examples $ []
          :schema $ quote UnionDef
        'Store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Store (:states Map)
            :sessions $ List app.schema/ChatSession
            :current-session-id $ Option String
            :model $ Option Tag
            :archived-count Number
          :examples $ []
          :schema $ quote StructDef
        'WidgetState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defunion WidgetState ChatState MessageBoxState
          :examples $ []
          :schema $ quote UnionDef
        'encode-store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn encode-store (store)
            let
                fields $ &struct:to-map store
                with-selection $ match (:current-session-id store)
                  (:some id) (assoc fields :current-session-id id)
                  (:none) (assoc fields :current-session-id nil)
              format-cirru-edn $ match (:model store)
                (:some model) (assoc with-selection :model model)
                (:none) (assoc with-selection :model nil)
          :examples $ []
          :schema $ quote $ Fn Store (-> String)
          :tests $ [] $ %{} 'TestEntry (:name |keeps-legacy-selection-fields)
            :code $ quote $ let
                selected $ -> store
                  assoc :current-session-id $ Some |legacy
                  assoc :model $ Some :anthropic
                selected-wire $ parse-cirru-edn $ encode-store selected
                empty-wire $ parse-cirru-edn $ encode-store store
              assert= (Some |legacy) (get selected-wire :current-session-id)
              assert= (Some :anthropic) (get selected-wire :model)
              assert= true $ nil? $ .unwrap (get empty-wire :current-session-id)
              assert= true $ nil? $ .unwrap (get empty-wire :model)
              assert= selected $ normalize-store selected-wire
              assert= store $ normalize-store empty-wire
        'normalize-chat-message $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn normalize-chat-message (raw)
            hint-fn $ Fn T (-> ChatMessage) (:generics T) (:features :js-ffi)
            if
              and (struct? raw) (&struct:matches? raw ChatMessage)
              struct-match raw
                ChatMessage typed $ if
                  match (struct-definition typed)
                    (:none) false
                    (:some definition) (identical? definition ChatMessage)
                  , typed $ ChatMessage :content (:content typed) :role (:role typed) :thinking (:thinking typed)
                _ other $ raise "|Unexpected nominal value for ChatMessage"
              let
                  input $ if (struct? raw)
                    if
                      = (&struct:get-name raw) :ChatMessage
                      &struct:to-map raw
                      raise "|Unexpected nominal value for ChatMessage"
                    , raw
                if (map? input)
                  let
                      data $ decode-map-as input $ Map Tag Dynamic
                      thinking-value $ .unwrap-or (get data :thinking) |
                      normalized-thinking $ if (string? thinking-value) (assert-type thinking-value String) |
                    decode-map-as (assoc data :thinking normalized-thinking) 'app.schema/ChatMessage
                  raise "|Expected chat message map"
          :examples $ []
          :schema $ quote $ Fn T (-> ChatMessage) (:generics T) (:features :js-ffi)
        'normalize-chat-session $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn normalize-chat-session (raw)
            hint-fn $ Fn T (-> ChatSession) (:generics T) (:features :js-ffi)
            if
              and (struct? raw) (&struct:matches? raw ChatSession)
              struct-match raw
                ChatSession typed $ if
                  match (struct-definition typed)
                    (:none) false
                    (:some definition) (identical? definition ChatSession)
                  , typed $ ChatSession :id (:id typed) :created-at (:created-at typed) :messages
                    map (:messages typed)
                      fn (message) (normalize-chat-message message)
                    , :model (:model typed) :preview (:preview typed) :is-history? (:is-history? typed)
                _ other $ raise "|Unexpected nominal value for ChatSession"
              let
                  input $ if (struct? raw)
                    if
                      = (&struct:get-name raw) :ChatSession
                      &struct:to-map raw
                      raise "|Unexpected nominal value for ChatSession"
                    , raw
                if (map? input)
                  let
                      data $ decode-map-as input $ Map Tag Dynamic
                      raw-message-value $ .unwrap-or (get data :messages) ([])
                      raw-messages $ if (list? raw-message-value)
                        assert-type raw-message-value $ List Dynamic
                        []
                      messages $ map raw-messages $ fn (message) (normalize-chat-message message)
                      base $ decode-map-as
                        assoc data :messages $ []
                        , 'app.schema/ChatSession
                    ChatSession :id (:id base) :created-at (:created-at base) :messages messages :model (:model base) :preview (:preview base) :is-history? $ :is-history? base
                  raise "|Expected chat session map"
          :examples $ []
          :schema $ quote $ Fn T (-> ChatSession) (:generics T) (:features :js-ffi)
          :tests $ [] $ %{} 'TestEntry (:name |accepts-typed-and-map)
            :code $ quote $ let
                typed $ ChatSession :id |typed :created-at 1 :messages ([]) :model :gemini :preview |Typed :is-history? true
                typed-result $ normalize-chat-session typed
                decoded $ normalize-chat-session $ {} (:id |decoded) (:created-at 2)
                  :messages $ []
                  :model :anthropic
                  :preview |Decoded
                  :is-history? false
              is $ = |typed $ :id typed-result
              is $ = |decoded $ :id decoded
              is $ = :anthropic $ :model decoded
            :tags $ #{} :regression :unit
        'normalize-store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn normalize-store (raw)
            hint-fn $ Fn T (-> Store) (:generics T) (:features :js-ffi)
            if
              and (struct? raw)
                match (struct-definition raw)
                  (:some definition) (identical? definition Store)
                  (:none) false
              struct-match raw (Store typed typed)
                _ other $ raise "|Unexpected nominal value for Store"
              let
                  input $ if (struct? raw)
                    if
                      = (&struct:get-name raw) :Store
                      &struct:to-map raw
                      raise "|Unexpected nominal value for Store"
                    , raw
                  data $ decode-map-as input $ Map Tag Dynamic
                  raw-session-value $ .unwrap-or (get data :sessions) ([])
                  raw-sessions $ if (list? raw-session-value)
                    assert-type raw-session-value $ List Dynamic
                    []
                  sessions $ map raw-sessions $ fn (session) (normalize-chat-session session)
                  patched $ -> data (dissoc :current-chapter-id) (assoc :sessions sessions)
                    assoc :current-session-id $ match (get data :current-session-id)
                      (:none) None
                      (:some session-id)
                        cond
                            nil? session-id
                            , None
                          (string? session-id) (Some session-id)
                          true $ match session-id
                            (:some id)
                              Some $ decode-map-as id 'String
                            (:none) None
                            _ $ raise "|Invalid saved session ID"
                    assoc :model $ match (get data :model)
                      (:none) None
                      (:some model)
                        cond
                            tag? model
                            Some model
                          (enum? model)
                            match model
                              (:some tag)
                                Some $ decode-map-as tag 'Tag
                              (:none) None
                              _ $ raise "|Invalid saved model"
                          true None
                decode-map-as patched 'app.schema/Store
          :examples $ []
          :schema $ quote $ Fn T (-> Store) (:generics T) (:features :js-ffi)
          :tests $ []
            %{} 'TestEntry (:name |migrates-legacy-message-thinking)
              :code $ quote $ let
                  legacy $ {}
                    :states $ {} $ :cursor ([])
                    :sessions $ [] $ {} (:id |legacy) (:created-at 1)
                      :messages $ [] $ {} (:role :user) (:content |hello)
                      :model :gemini
                      :preview |hello
                      :is-history? true
                    :current-session-id nil
                    :model nil
                    :archived-count 0
                  normalized $ assert-type (normalize-store legacy) Store
                  sessions $ assert-type (:sessions normalized) (List ChatSession)
                  fallback-session $ ChatSession :id |fallback :created-at 0 :messages ([]) :model :gemini :preview | :is-history? false
                  session $ .unwrap-or
                    assert-type (first sessions) (Option ChatSession)
                    , fallback-session
                  messages $ assert-type (:messages session) (List ChatMessage)
                  fallback-message $ ChatMessage :role :user :content | :thinking |fallback
                  message $ .unwrap-or
                    assert-type (first messages) (Option ChatMessage)
                    , fallback-message
                is $ = | $ :thinking message
              :tags $ #{} :regression :unit
            %{} 'TestEntry (:name |optional-selection-roundtrip)
              :code $ quote $ let
                  old $ &struct:to-map store
                  restored $ normalize-store $ assoc (assoc old :current-session-id |legacy) :model :anthropic
                  round-tripped $ normalize-store $ parse-cirru-edn (format-cirru-edn restored)
                assert= (Some |legacy) (:current-session-id restored)
                assert= (Some :anthropic) (:model restored)
                assert= restored round-tripped
                assert= store $ normalize-store $ parse-cirru-edn (format-cirru-edn store)
        'store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            Store :states
              {} $ :cursor $ []
              , :sessions ([]) :current-session-id None :model None :archived-count 0
          :examples $ []
          :schema $ quote Store
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
          :require $ calcit.test :refer $ is
    'app.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (raw-store op op-id op-time)
            let
                store raw-store
              match op
                (:states cursor s)
                  assoc store :states $ decode-map-as
                    assoc-in (:states store)
                      concat cursor $ [] :data
                      , s
                    Map Dynamic Dynamic
                (:widget-state cursor s)
                  assoc store :states $ decode-map-as
                    assoc-in (:states store)
                      concat cursor $ [] :data
                      , s
                    Map Dynamic Dynamic
                (:states-merge cursor s changes)
                  let
                      path $ concat cursor $ [] :data
                      state $ .unwrap-or
                        get-in (:states store) path
                        , s
                      updated-states $ assoc-in (:states store) path $ if (map? state)
                        .merge
                          decode-map-as state $ Map Tag Dynamic
                          , changes
                        if (struct? state)
                          let
                              raw-base state
                            let
                                base $ app.comp.container/normalize-chat-state raw-base
                              ChatState :answer
                                match (get changes :answer)
                                  (:none) (:answer base)
                                  (:some value) (decode-map-as value 'String)
                                , :loading?
                                  match (get changes :loading?)
                                    (:none) (:loading? base)
                                    (:some value) (decode-map-as value 'Bool)
                                  , :done?
                                    match (get changes :done?)
                                      (:none) (:done? base)
                                      (:some value) (decode-map-as value 'Bool)
                                    , :messages
                                      match (get changes :messages)
                                        (:none) (:messages base)
                                        (:some value)
                                          match value
                                            (List messages)
                                              map messages $ fn (message) (app.schema/normalize-chat-message message)
                                            _ $ raise "|Chat patch :messages expects a list of ChatMessage"
                                      , :model
                                        match (get changes :model)
                                          (:none) (:model base)
                                          (:some value) (decode-map-as value 'Tag)
                                        , :thinking $ match (get changes :thinking)
                                          (:none) (:thinking base)
                                          (:some value) (decode-map-as value 'String)
                          do (eprintln |unknown-state-to-merge state) state
                    assoc store :states $ decode-map-as updated-states $ Map Dynamic Dynamic
                (:hydrate-storage data) data
                (:change-model)
                  assoc store :model $ if
                    = (:model store) (Some :anthropic)
                    Some :gemini
                    Some :anthropic
                (:save-session state)
                  assoc (save-current-session store state) :current-session-id None
                (:session id) (assoc store :current-session-id id)
                (:load-session cursor state session)
                  let
                      typed-session session
                      store1 $ assoc store :states $ decode-map-as
                        assoc-in (:states store)
                          concat cursor $ [] :data
                          -> state
                            assoc :messages $ :messages typed-session
                            assoc :done? true
                        Map Dynamic Dynamic
                    assoc store1 :current-session-id $ Some $ :id typed-session
                (:remove-session id)
                  assoc store :sessions $ filter (:sessions store)
                    fn (s)
                      hint-fn $ Fn ChatSession $ -> Bool
                      not $ = (:id s) id
                (:archive-sessions new-count)
                  -> store
                    assoc :sessions $ []
                    assoc :archived-count new-count
                    assoc :current-session-id None
                (:update-archived-count new-count)
                  -> store $ assoc :archived-count new-count
                (:clear-sessions)
                  -> store
                    assoc :sessions $ []
                    assoc :current-session-id None
                _ $ do (eprintln "|unknown op:" op) store
          :examples $ []
          :schema $ quote $ Fn Store app.schema/DispatchOp String Number (-> Store)
          :tests $ [] $ %{} 'TestEntry (:name |mixed-cursor-latest-state-merge)
            :code $ quote $ let
                cursor $ [] :panel |draft 7
                stale $ app.comp.container/normalize-chat-state $ {}
                message $ app.schema/normalize-chat-message $ {} (:role :user) (:content |synthetic) (:thinking |)
                latest $ -> stale (assoc :answer |latest)
                  assoc :messages $ [] message
                initial $ updater app.schema/store (app.schema/DispatchOp :states cursor latest) |synthetic 0
                changed $ updater initial
                  app.schema/DispatchOp :states-merge cursor stale $ {} $ :thinking |thought
                  , |synthetic 1
                restored $ app.comp.container/normalize-chat-state $ match
                  get-in (:states changed)
                    concat cursor $ [] :data
                  (:ok value) value
                  (:err error)
                    raise $ str |Expected-test-state: error
                roundtrip $ app.schema/normalize-store $ parse-cirru-edn (format-cirru-edn changed)
                updated-again $ updater roundtrip
                  app.schema/DispatchOp :states-merge cursor stale $ {} $ :answer |after-restore
                  , |synthetic 3
                restored-again $ app.comp.container/normalize-chat-state $ match
                  get-in (:states updated-again)
                    concat cursor $ [] :data
                  (:ok value) value
                  (:err error)
                    raise $ str |Expected-test-state: error
              assert= |latest $ :answer restored
              assert= |thought $ :thinking restored
              assert= (:messages latest) (:messages restored)
              assert= (:done? latest) (:done? restored)
              assert= |after-restore $ :answer restored-again
              assert= |thought $ :thinking restored-again
              assert= ([] message) (:messages restored-again)
              assert= true $ identical? changed $ app.schema/normalize-store changed
              assert= true $ identical? message $ app.schema/normalize-chat-message message
              assert= true $ identical? restored-again $ app.comp.container/normalize-chat-state restored-again
              assert= true $ try
                do
                  updater changed
                    app.schema/DispatchOp :states-merge cursor stale $ {} $ :done? |not-a-bool
                    , |synthetic 2
                  , false
                fn (error) true
            :tags $ #{} :regression :unit
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
          :require
            app.comp.container :refer $ save-current-session generate-session-id
            app.schema :refer $ Store ChatState ChatSession
