
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :js) (:reload-fn 'app.main/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |respo-ui.calcit/ |reel.calcit/ |respo-markdown.calcit/ |alerts.calcit/
      :type-slots $ {}
  :files $ {}
    'app.comp.container $ %{} 'FileEntry
      :defs $ {}
        '*abort-control $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *abort-control false
          :examples $ []
          :schema $ :: 'Ref
        '*archived-sessions $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *archived-sessions nil
          :examples $ []
          :schema $ :: 'Ref $ :: 'JsNullish (:: 'List 'app.schema/ChatSession)
        '*gen-ai-new $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *gen-ai-new (Option :none)
          :examples $ []
          :schema $ :: 'Ref $ :: 'Option 'app.comp.container/GenAIClientHost
        '*image-cache $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *image-cache (Option :none)
          :examples $ []
          :schema $ :: 'Ref $ :: 'Option 'String
        '*openai $ %{} 'CodeEntry
          :doc "|OpenAI-compatible SDK cache; reused only when provider base URL and current in-memory API key match. Never serialized."
          :code $ quote $ defref *openai (Option :none)
          :examples $ []
          :schema $ :: 'Ref $ :: 'Option 'app.comp.container/OpenAIClientHost
        '*viewing-archive-session $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *viewing-archive-session nil
          :examples $ []
          :schema $ :: 'Ref $ :: 'JsNullish 'app.schema/ChatSession
        'AxiosStreamResponseHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait AxiosStreamResponseHost (:data 'app.comp.container/ByteStreamHost)
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ :: 'Trait
        'ByteStreamHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait ByteStreamHost
            .pipe-through $ :: 'Fn $ {}
              :args $ [] 'app.comp.container/ByteStreamHost 'JsObject
              :return 'app.comp.container/DecodedTextStreamHost
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} $ :pipe-through |pipeThrough
          :schema $ :: 'Trait
        'DecodedTextStreamHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait DecodedTextStreamHost
            .get-reader $ :: 'Fn $ {}
              :args $ [] 'app.comp.container/DecodedTextStreamHost
              :return 'app.comp.container/TextReaderHost
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} $ :get-reader |getReader
          :schema $ :: 'Trait
        'DomTokenListHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait DomTokenListHost
            .contains? $ :: 'Fn $ {}
              :args $ [] 'app.comp.container/DomTokenListHost 'String
              :return 'Bool
            .add! $ :: 'Fn $ {}
              :args $ [] 'app.comp.container/DomTokenListHost 'String
              :return 'Unit
            .remove! $ :: 'Fn $ {}
              :args $ [] 'app.comp.container/DomTokenListHost 'String
              :return 'Unit
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} (:add! |add) (:contains? |contains) (:remove! |remove)
          :schema $ :: 'Trait
        'DownloadLinkHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait DownloadLinkHost
            .click! $ :: 'Fn $ {}
              :args $ [] 'app.comp.container/DownloadLinkHost
              :return 'Unit
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} $ :click! |click
          :schema $ :: 'Trait
        'FocusEventHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait FocusEventHost
            :target $ :: 'JsNullish 'app.comp.container/FocusTargetHost
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ :: 'Trait
        'FocusTargetHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait FocusTargetHost
            :parentElement $ :: 'JsNullish 'app.comp.container/FocusTargetHost
            :classList 'app.comp.container/DomTokenListHost
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ :: 'Trait
        'GenAIClientHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait GenAIClientHost (:models 'app.comp.container/GenAIModelsHost)
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ :: 'Trait
        'GenAIModelsHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait GenAIModelsHost
            .generate-content $ :: 'Fn $ {}
              :args $ [] 'app.comp.container/GenAIModelsHost 'JsObject
              :return 'JsObject
            .generate-content-stream $ :: 'Fn $ {}
              :args $ [] 'app.comp.container/GenAIModelsHost 'JsObject
              :return 'JsObject
            .generate-images $ :: 'Fn $ {}
              :args $ [] 'app.comp.container/GenAIModelsHost 'JsObject
              :return 'JsObject
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} (:generate-content |generateContent) (:generate-content-stream |generateContentStream) (:generate-images |generateImages)
          :schema $ :: 'Trait
        'GenAIPartsHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait GenAIPartsHost
            .for-each! $ :: 'Fn $ {}
              :args $ [] 'app.comp.container/GenAIPartsHost $ :: 'Fn
                {}
                  :args $ [] (:: 'JsNullish 'JsObject) 'Number 'app.comp.container/GenAIPartsHost
                  :return 'Unit
              :return 'Unit
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} $ :for-each! |forEach
          :schema $ :: 'Trait
        'OpenAIChatHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait OpenAIChatHost (:completions 'app.comp.container/OpenAICompletionsHost)
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ :: 'Trait
        'OpenAIClientHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait OpenAIClientHost (:base-url 'String) (:api-key 'String) (:chat 'app.comp.container/OpenAIChatHost)
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} (:api-key |apiKey) (:base-url |baseURL)
          :schema $ :: 'Trait
        'OpenAICompletionsHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait OpenAICompletionsHost
            .create $ :: 'Fn $ {}
              :args $ [] 'app.comp.container/OpenAICompletionsHost 'JsObject 'JsObject
              :return 'JsObject
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ :: 'Trait
        'StreamChunk $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct StreamChunk (:text 'String) (:thinking? 'Bool)
          :examples $ []
          :schema $ :: 'StructDef
        'TextReadResultHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait TextReadResultHost (:done 'Bool)
            :value $ :: 'JsNullish 'String
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ :: 'Trait
        'TextReaderHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait TextReaderHost
            .read $ :: 'Fn $ {}
              :args $ [] 'app.comp.container/TextReaderHost
              :return 'JsObject
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ :: 'Trait
        'abort-dynamic! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn abort-dynamic! (value)
            ffi/abort! $ unsafe-coerce value 'js-ffi.shared/AbortControllerHost
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'append-user-message $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn append-user-message (messages content)
            conj messages $ ChatMessage :role :user :content content :thinking |
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'List 'app.schema/ChatMessage) 'String
            :return $ :: 'List 'app.schema/ChatMessage
        'axios-post $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn axios-post (module url body config) (raise "|JavaScript Axios binding")
          :examples $ []
          :ffi $ {} (:target :browser)
            :js $ {} $ :inline "|(module, url, body, config) => module.default.post(url, body, config)"
          :schema $ :: 'Fn $ {} (:return 'JsObject)
            :args $ [] 'JsObject 'String 'JsObject 'JsObject
            :features $ #{} :js-ffi
        'call-anthropic-msg! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn call-anthropic-msg! (cursor state prompt-text model thinking? d!)
            let
                abort $ deref *abort-control
              when (js-present-dynamic? abort)
                do (ffi/console-warn! |Aborting-prev) (abort-dynamic! abort)
            d! $ :: :change-model
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
                        abort $ ffi/abort-controller-create
                      reset! *abort-control abort
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
                  d! $ :: :states-merge cursor state $ {} (:answer |) (:thinking |) (:loading? true) (:done? false) (:messages messages1)
                  , &unit
                , 0
              loop
                  pending |
                hint-fn $ {} (:async true)
                  :args $ [] 'String
                  :return 'Unit
                  :features $ #{} :js-ffi
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
                          :: 'Map 'String 'Dynamic
                  loop
                      xs events
                    match (destruct-list xs)
                      (:none) &unit
                      (:some event rest-events)
                        if
                          = |message_stop $ stream-text $ .unwrap-or (get event |type) |
                          d! $ :: :states-merge cursor state $ {} (:answer @*text) (:loading? false) (:done? true)
                            :messages $ upsert-assistant-message messages1 @*text |
                          match
                            get-in event $ [] |delta |text
                            (:none) (recur rest-events)
                            (:some fragment)
                              let
                                  text $ stream-text fragment
                                swap! *text str text
                                d! $ :: :states-merge cursor state $ {} (:answer @*text) (:loading? false) (:done? false)
                                  :messages $ upsert-assistant-message messages1 @*text |
                                recur rest-events
                  if done? &unit $ recur remainder
          :examples $ []
          :schema $ :: 'Fn $ {} (:async true) (:return 'Unit)
            :args $ [] (:: 'List 'Dynamic) 'app.schema/ChatState 'String 'String 'Bool 'Dynamic
            :features $ #{} :js-ffi
        'call-flash-imagen-msg! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn call-flash-imagen-msg! (variant cursor state prompt-text d!)
            js-await $ ensure-genai!
            match (browser/query-selector |.show-image)
              (:none) &unit
              (:some preview) (browser/element-set-attribute! preview |src |)
            let
                abort $ deref *abort-control
              when (js-present-dynamic? abort)
                do (ffi/console-warn! |Aborting-prev) (abort-dynamic! abort)
            clear-image-cache!
            d! $ :: :states cursor $ -> state (assoc :answer |) (assoc :loading? true)
            let
                selected $ let
                    selected0 $ js-await $ get-selected
                  if (js-present-dynamic? selected0) (stream-text selected0) "|<未找到选中内容>"
                gen-ai $ .unwrap @*gen-ai-new
                content $ &str:replace prompt-text |{{selected}} selected
                abort-signal $ let
                    abort $ ffi/abort-controller-create
                  reset! *abort-control abort
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
                hint-fn $ {}
                  :args $ [] (:: 'JsNullish 'JsObject) 'Number 'app.comp.container/GenAIPartsHost
                  :return 'Unit
                  :features $ #{} :js-ffi
                if (js-present-dynamic? chunk)
                  let
                      chunk-data $ contract/expect-object "|GenAI image part" chunk
                      text0 $ contract/object-field "|GenAI image response" chunk-data |text
                    if (js-present-dynamic? text0)
                      let
                          text $ contract/expect-string "|GenAI image text" text0
                        swap! *text str text
                        d! $ :: :states cursor $ -> state (assoc :answer @*text) (assoc :loading? false) (assoc :done? false)
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
                            reset! *image-cache $ Option :some url
                            swap! *text str | "|(image ready)"
                            d! $ :: :states cursor $ -> state (assoc :answer @*text) (assoc :loading? false) (assoc :done? false)
                  d! $ :: :states cursor $ -> state (assoc :answer @*text) (assoc :loading? false) (assoc :done? false)
                d! $ :: :states cursor $ -> state (assoc :answer @*text) (assoc :loading? false) (assoc :done? false)
                , &unit
              d! $ :: :states cursor $ -> state (assoc :answer @*text) (assoc :loading? false) (assoc :done? true)
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:async true) (:return 'Unit)
            :args $ [] 'Tag (:: 'List 'Dynamic) 'app.schema/ChatState 'String 'Dynamic
            :features $ #{} :js-ffi
        'call-genai-msg! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn call-genai-msg!
            variant cursor state prompt-text search? think? d! *text *thinking-text
            js-await $ ensure-genai!
            let
                abort $ deref *abort-control
              when (js-present-dynamic? abort)
                do (ffi/console-warn! |Aborting-prev) (abort-dynamic! abort)
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
                  reset! *abort-control abort
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
                :: :states-merge cursor state $ {} (:answer |) (:thinking |) (:loading? true) (:done? false) (:messages messages1)
              js-await $ js-for-await sdk-result $ fn (chunk)
                if (js-present-dynamic? chunk)
                  let
                      stream-chunk $ decode-genai-chunk chunk
                      is-thinking? $ :thinking? stream-chunk
                      text $ :text stream-chunk
                    if is-thinking? (swap! *thinking-text str text) (swap! *text str text)
                    d! $ :: :states-merge cursor state $ {} (:answer @*text) (:thinking @*thinking-text) (:loading? false) (:done? false)
                      :messages $ upsert-assistant-message messages1 @*text @*thinking-text
                  d! $ :: :states-merge cursor state $ {} (:answer @*text) (:thinking @*thinking-text) (:loading? false) (:done? false)
                    :messages $ upsert-assistant-message messages1 @*text @*thinking-text
              d! $ :: :states-merge cursor state $ {} (:answer @*text) (:thinking @*thinking-text) (:loading? false) (:done? true)
                :messages $ upsert-assistant-message messages1 @*text @*thinking-text
          :examples $ []
          :schema $ :: 'Fn $ {} (:async true) (:return 'Dynamic)
            :args $ [] 'Tag (:: 'List 'Dynamic) 'app.schema/ChatState 'String 'Bool 'Bool 'Dynamic (:: 'Ref 'String) (:: 'Ref 'String)
            :features $ #{} :js-ffi
        'call-imagen-4-msg! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn call-imagen-4-msg! (variant cursor state prompt-text d!)
            js-await $ ensure-genai!
            match (browser/query-selector |.show-image)
              (:none) &unit
              (:some preview) (browser/element-remove-attribute! preview |src)
            let
                abort $ deref *abort-control
              when (js-present-dynamic? abort)
                do (ffi/console-warn! |Aborting-prev) (abort-dynamic! abort)
            clear-image-cache!
            d! $ :: :states cursor $ -> state (assoc :answer |) (assoc :loading? true)
            let
                gen-ai $ .unwrap @*gen-ai-new
                abort-signal $ let
                    abort $ ffi/abort-controller-create
                  reset! *abort-control abort
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
                    reset! *image-cache $ Option :some url
                    match target
                      (:none) &unit
                      (:some preview) (browser/element-set-attribute! preview |src url)
                    swap! *text str | "|(image ready)"
                    d! $ :: :states cursor $ -> state (assoc :answer @*text) (assoc :loading? false) (assoc :done? false)
              d! $ :: :states cursor $ -> state (assoc :answer @*text) (assoc :loading? false) (assoc :done? true)
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:async true) (:return 'Unit)
            :args $ [] 'Tag (:: 'List 'Dynamic) 'app.schema/ChatState 'String 'Dynamic
            :features $ #{} :js-ffi
        'call-openrouter! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn call-openrouter! (cursor state prompt-text provider variant thinking? d! *text)
            js-await $ ensure-openai! provider
            let
                abort $ deref *abort-control
              when (js-present-dynamic? abort)
                do (ffi/console-warn! |Aborting-prev) (abort-dynamic! abort)
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
                    reset! *abort-control abort
                    ffi/abort-signal abort
              browser/set-timeout!
                fn ()
                  d! $ :: :states-merge cursor state $ {} (:answer |) (:thinking |) (:loading? true) (:done? false) (:messages messages1)
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
                      swap! *char-buf + $ count text
                      when
                        or (> @*char-buf 80) (includes? text &newline)
                        do (reset! *char-buf 0)
                          d! $ :: :states-merge cursor state $ {} (:answer @*text) (:thinking @*thinking-text) (:loading? false) (:done? false)
                            :messages $ upsert-assistant-message messages1 @*text @*thinking-text
                  d! $ :: :states-merge cursor state $ {} (:answer @*text) (:thinking @*thinking-text) (:loading? false) (:done? false)
                    :messages $ upsert-assistant-message messages1 @*text @*thinking-text
                d! $ :: :states-merge cursor state $ {} (:answer @*text) (:thinking @*thinking-text) (:loading? false) (:done? true)
                  :messages $ upsert-assistant-message messages1 @*text @*thinking-text
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:async true) (:return 'Unit)
            :args $ [] (:: 'List 'Dynamic) 'app.schema/ChatState 'String 'Tag 'String 'Bool 'Dynamic $ :: 'Ref 'String
            :features $ #{} :js-ffi
        'clear-image-cache! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn clear-image-cache! ()
            match @*image-cache
              (:none) &unit
              (:some url)
                do (browser/object-url-revoke! url)
                  reset! *image-cache $ Option :none
                  , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'comp-abort $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-abort (t)
            span
              {} (:role |button)
                :aria-label $ str |abort- t
                :class-name $ str-spaced css/font-fancy css/row-middle style-more
                :style $ {} $ :cursor :pointer
                :on-click $ fn (e d!)
                  let
                      abort $ deref *abort-control
                    when (js-present-dynamic? abort)
                      do (js/console.warn |Aborting-prev) (abort-dynamic! abort)
                  , &unit
              <> t
              =< 8 nil
              <> "|✕" style-abort-close
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Element)
            :args $ [] 'String
            :features $ #{} :js-ffi
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (reel)
            let
                app-store $ option:fold (get reel :store)
                  fn () store
                  fn (raw-store) (app.schema/normalize-store raw-store)
                sessions $ :sessions app-store
                archived-count $ :archived-count app-store
                current-session-id $ :current-session-id app-store
                states $ :states app-store
                cursor $ decode-map-as
                  option:unwrap-or (get states :cursor) ([])
                  :: 'List 'Dynamic
                state $ let
                    raw-chat-state $ option:unwrap-or (get states :data)
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
                is-viewing-history? $ and (js-present-dynamic? current-session-id)
                  option:fold
                    assert-type
                      first $ filter sessions $ fn (s)
                        hint-fn $ {}
                          :args $ [] 'app.schema/ChatSession
                          :return 'Bool
                        = (:id s) (decode-map-as current-session-id 'String)
                      :: 'Option 'app.schema/ChatSession
                    fn ()
                      hint-fn $ {} $ :return 'Bool
                      , false
                    fn (session)
                      hint-fn $ {}
                        :args $ [] 'app.schema/ChatSession
                        :return 'Bool
                      :is-history? session
                last-assistant $ option:fold
                  assert-type (last messages) (:: 'Option 'app.schema/ChatMessage)
                  fn ()
                    hint-fn $ {} $ :return 'String
                    :answer state
                  fn (last-msg)
                    hint-fn $ {}
                      :args $ [] 'app.schema/ChatMessage
                      :return 'String
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
                    :items models-menu
                    :on-result $ fn (result d!)
                      d! cursor $ assoc state :model $ decode-map-as
                        option:unwrap-or (nth result 1) :gemini
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
                  hint-fn $ {}
                    :args $ [] 'app.schema/ChatState 'String 'Bool 'Bool 'Dynamic
                    :features $ #{} :js-ffi
                  if (blank? text) (.show text-alert-plugin d! "|Please enter text")
                    let
                        storage-key $ model-storage-key model
                        stored $ browser/storage-get-or storage-key |
                      if (blank? stored)
                        .show api-key-plugin d! $ fn (key)
                          browser/storage-set! storage-key $ decode-map-as key 'String
                          submit-message! cursor submit-state text search? think? model d!
                        submit-message! cursor submit-state text search? think? model d!
                message-box-state $ let
                    raw-message-box-state $ option:unwrap-or
                      get (>> states :message-box) :data
                      {} (:content |) (:search? false) (:think? false) (:focus-mode? false)
                  if (struct? raw-message-box-state)
                    struct-match raw-message-box-state (MessageBoxState typed typed)
                      _ other $ raise "|Expected MessageBoxState"
                    decode-map-as raw-message-box-state 'app.schema/MessageBoxState
                sessions-plugin $ use-drawer (>> states :sessions-modal)
                  {} (:title "|History Sessions")
                    :style $ {} (:min-width "||max(320px,30vw)\"") (:max-width |80vw)
                    :render $ fn (on-close)
                      comp-sessions-modal sessions archived-count
                        fn (session-id d!)
                          hint-fn $ {} $ :args ([] 'String 'Dynamic)
                          when
                            and
                              > (count messages) 0
                              :done? state
                              not $ js-present-dynamic? current-session-id
                            d! $ :: :save-session state
                          d! $ :: :load-session cursor state $ -> sessions
                            filter $ fn (s)
                              hint-fn $ {}
                                :args $ [] 'app.schema/ChatSession
                                :return 'Bool
                              = (:id s) session-id
                            , first option:unwrap
                          on-close d!
                        , on-close $ fn (d!)
                          hint-fn $ {} $ :async true
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
                                    decode-map-as (parse-cirru-edn raw) (:: 'List 'Dynamic)
                                    fn (session) (app.schema/normalize-chat-session session)
                                reset! *archived-sessions parsed
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
                            assert-type (app.schema/normalize-chat-session @*viewing-archive-session) 'app.schema/ChatSession
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
                            :messages $ assert-type (app.schema/normalize-chat-session @*viewing-archive-session) 'app.schema/ChatSession
                            map-indexed $ fn (idx msg)
                              hint-fn $ {}
                                :args $ [] 'Number 'app.schema/ChatMessage
                                :return $ :: 'List 'Dynamic
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
                                  if
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
                                hint-fn $ {}
                                  :args $ [] 'app.schema/ChatSession
                                  :return $ :: 'List 'Dynamic
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
                                        :on-click $ fn (e d!)
                                          hint-fn $ {} $ :async true
                                          let
                                              proceed? $ js/confirm "|Delete this archived session?"
                                            when proceed? $ let
                                                new-archives $ filter
                                                  let
                                                      cached @*archived-sessions
                                                    if (js-nullish? cached) ([]) cached
                                                  fn (s)
                                                    hint-fn $ {}
                                                      :args $ [] 'app.schema/ChatSession
                                                      :return 'Bool
                                                    not= (:id s) session-id
                                              reset! *archived-sessions new-archives
                                              let
                                                  archive-key $ :archive-key site
                                                js-await $ db-set archive-key $ format-cirru-edn new-archives
                                                d! $ :: :update-archived-count $ count new-archives
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
                            :on-click $ fn (e d!) (.show sessions-plugin d!) &unit
                          div
                            {} $ :class-name style-history-button
                            comp-local-icon :clock 14
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
                          img $ {} $ :class-name (str-spaced style-image |show-image)
                        list->
                          {} $ :class-name $ str-spaced css/column css/gap8
                          -> messages $ map-indexed $ fn (idx msg)
                            hint-fn $ {}
                              :args $ [] 'Number 'app.schema/ChatMessage
                              :return $ :: 'List 'Dynamic
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
                                if
                                  not $ blank? thinking
                                  div
                                    {} $ :class-name style-thinking
                                    memo-comp-by thinking comp-md-block thinking $ {} $ :class-name style-md-content
                                if (= role :assistant)
                                  if (json-pattern? content)
                                    pre $ {} (:class-name style-code-content) (:inner-text content)
                                    memo-comp-by content comp-md-block content $ {} $ :class-name style-md-content
                                  pre $ {} (:class-name style-message-text) (:inner-text content)
                                if
                                  and (= role :assistant)
                                    or done? $ not= idx $ dec (count messages)
                                  div
                                    {} $ :class-name $ str-spaced css/row-middle css/gap8 style-message-actions
                                    if chrome-extension? (comp-fill content) nil
                                    comp-copy content
                                  , nil
                        if
                          and
                            > (count messages) 0
                            :done? state
                            not is-viewing-history?
                          div
                            {} $ :class-name $ str-spaced css/row-middle css/gap8 style-reply-actions
                            button
                              {} (:role |button) (:aria-label |reply-message)
                                :class-name $ str-spaced css/button style-reply-button
                                :on-click $ fn (e d!)
                                  .show reply-plugin d! $ fn (text)
                                    submit-with-key! state (stream-text text) (:search? message-box-state) (:think? message-box-state) d!
                                  , &unit
                              <> |Reply
                            if (:focus-mode? message-box-state) nil $ a $ {} (:class-name style-focus-link) (:inner-text |Focus) (:role |button) (:aria-label |focus-composer)
                              :on-click $ fn (e d!)
                                let
                                    focused $ browser/document-active-element
                                  match focused
                                    (:none) &unit
                                    (:some element) (element .blur!)
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
                            {} $ :class-name $ str-spaced css/row-middle css/gap8
                            if (:done? state) nil $ div
                              {} $ :style $ {} (:display :flex) (:justify-content :center) (:align-items :center)
                              comp-abort |Streaming...
                          if (:done? state)
                            div $ {} $ :class-name (str-spaced css/row-middle css/gap8)
                      =< nil 200
                    comp-message-box
                      decode-map-as (>> states :message-box) (:: 'Map 'Tag 'Dynamic)
                      a $ {}
                        :inner-text $ or (to-string model) |-
                        :role |button
                        :aria-label $ str |model-picker: $ to-string model
                        :class-name $ str-spaced style-a-toggler
                        :style $ {} $ :opacity
                          if (= model :anthropic) 1 0.3
                        :on-click $ fn (e d!)
                          ; d! $ :: :change-model
                          .show model-plugin d!
                          , &unit
                      fn (text search? think? d!)
                        if (blank? text) (.show text-alert-plugin d! "|Please enter text")
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
                        , &unit
                      , model
                model-plugin.render
                reply-plugin.render
                text-alert-plugin.render
                api-key-plugin.render
                sessions-plugin.render
                if dev? $ comp-reel (>> states :reel) reel $ {}
                if dev? $ comp-inspect |Store app-store nil
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] $ :: 'Map 'Tag 'Dynamic
            :features $ #{} :js-ffi
        'comp-fill $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-fill (text)
            div
              {} (:class-name style-fill) (:role |button) (:aria-label |fill-extension)
                :on-click $ fn (e d!)
                  when chrome-extension? $ js/chrome.runtime.sendMessage $ js-object (:action |fill-text) (:text text)
                  , &unit
              comp-local-icon :send 12
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'String
            :features $ #{} :js-ffi
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
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Tag 'Number
        'comp-message-box $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-message-box (states picker-el on-submit model)
            let
                cursor $ decode-map-as
                  option:unwrap-or (get states :cursor) ([])
                  :: 'List 'Dynamic
                state $ let
                    raw-message-box-state $ option:unwrap-or (get states :data)
                      {} (:content |) (:search? false) (:think? false) (:focus-mode? false)
                  if (struct? raw-message-box-state)
                    struct-match raw-message-box-state (MessageBoxState typed typed)
                      _ other $ raise "|Expected MessageBoxState"
                    decode-map-as raw-message-box-state 'app.schema/MessageBoxState
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
                            d! cursor $ assoc state :focus-mode? false
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
                          d! cursor $ assoc state :content $ decode-map-as
                            option:unwrap-or (get e :value) |
                            , 'String
                          , &unit
                        :on-keydown $ fn (e d!)
                          if
                            and
                              = 13 $ decode-map-as
                                option:unwrap-or (get e :keycode) 0
                                , 'Number
                              or
                                decode-map-as
                                  option:unwrap-or (get e :meta?) false
                                  , 'Bool
                                decode-map-as
                                  option:unwrap-or (get e :ctrl?) false
                                  , 'Bool
                            on-submit (:content state) (:search? state) (:think? state) d!
                          , &unit
                        :on-focus $ fn (e d!)
                          toggle-focus-within!
                            decode-map-as e $ :: 'Map 'Tag 'Dynamic
                            , true
                          , &unit
                        :on-blur $ fn (e d!)
                          toggle-focus-within!
                            decode-map-as e $ :: 'Map 'Tag 'Dynamic
                            , false
                          , &unit
                    if
                      not $ :focus-mode? state
                      do (=< nil 4)
                        div
                          {} $ :class-name css/row-parted
                          if
                            not $ blank? $ :content state
                            span $ {} (:inner-text "|✕")
                              :class-name $ str-spaced style-close style-clear
                              :role |button
                              :aria-label |clear-prompt
                              :on-click $ fn (e d!)
                                d! cursor $ assoc state :content |
                                match (browser/query-selector |#message)
                                  (:none) &unit
                                  (:some input) (input .focus!)
                                , &unit
                            span $ {} $ :class-name style-clear
                          div
                            {} $ :class-name $ str-spaced css/row style-gap12
                            , picker-el
                              if
                                contains? (#{} :gemini-flash :gemini-3.5-flash :gemini-3.1-flash-lite-preview) model
                                div
                                  {} (:role |group) (:aria-label |think-toggle)
                                    :class-name $ str-spaced css/row style-checkbox
                                    :on-click $ fn (e d!)
                                      d! cursor $ assoc state :think? $ not (:think? state)
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
                                    d! cursor $ assoc state :search? $ not (:search? state)
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
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'respo.schema/Element
              :: 'Fn $ {} (:return 'Unit)
                :args $ [] 'String 'Bool 'Bool 'Dynamic
              , 'Tag
            :features $ #{} :js-ffi
        'comp-sessions-modal $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-sessions-modal (sessions archived-count on-select on-close on-view-archive)
            let
                history-items $ foldl sessions 0 $ fn (acc session)
                  hint-fn $ {} $ :args ([] 'Number 'app.schema/ChatSession)
                  + acc $ count $ or (:messages session) ([])
              div
                {} $ :class-name $ str-spaced css/column css/gap8 style-sessions-list
                if (> archived-count 0)
                  div
                    {} $ :class-name style-archive-row
                    span $ {}
                      :style $ {} $ :color (hsl 0 0 50)
                      :inner-text $ str "|Archived: " archived-count "| sessions"
                    button
                      {} (:class-name css/button)
                        :style $ {} $ :cursor :pointer
                        :on-click $ fn (e d!) (on-close d!) (on-view-archive d!) &unit
                      <> "|View Archive"
                if (empty? sessions)
                  div
                    {} $ :style $ {} (:padding |12px)
                      :color $ hsl 0 0 60
                    <> "|No history sessions"
                  list->
                    {} $ :class-name css/column
                    -> sessions reverse $ map $ fn (session)
                      hint-fn $ {}
                        :args $ [] 'app.schema/ChatSession
                        :return $ :: 'List 'Dynamic
                      let
                          session-id $ :id session
                          created-at $ :created-at session
                          preview $ :preview session
                          date-str $ ffi/date-local-string $ ffi/date-from-ms created-at
                        [] session-id $ div
                          {} $ :class-name style-session-item
                          div
                            {} (:role |button)
                              :aria-label $ str |session-select: preview
                              :style $ {} (:flex |1) (:cursor :pointer) (:min-width 0) (:overflow :hidden)
                              :on-click $ fn (e d!) (on-select session-id d!) (on-close d!) &unit
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
                                let
                                    event $ js-cast
                                      option:unwrap-or (get e :event) js/undefined
                                      , 'js-ffi.browser/EventHost
                                  browser/event-stop-propagation! event
                                d! $ :: :remove-session session-id
                                , &unit
                            <> "|✕"
                if
                  > (count sessions) 0
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
                            tab-echo! sessions $ Option :some :edn
                            , &unit
                        a $ {} (:class-name style-clear) (:inner-text |Download) (:role |button) (:aria-label |sessions-download)
                          :on-click $ fn (e d!) (download-sessions! sessions) &unit
                      if
                        > (count sessions) 0
                        a $ {} (:class-name style-clear) (:inner-text "|Archive all") (:role |button) (:aria-label |sessions-archive-all)
                          :on-click $ fn (e d!)
                            hint-fn $ {} $ :async true
                            let
                                proceed? $ js/confirm $ str "|Archive " (count sessions) "| sessions and clear active view?"
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
                                      decode-map-as (parse-cirru-edn raw) (:: 'List 'Dynamic)
                                      fn (session) (app.schema/normalize-chat-session session)
                                  new-archives $ concat old-archives sessions
                                js-await $ db-set archive-key $ format-cirru-edn new-archives
                                d! $ :: :archive-sessions $ count new-archives
                            , &unit
                        span $ {}
                    div $ {} $ :style
                      {} $ :height 200
                  , nil
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] (:: 'List 'app.schema/ChatSession) 'Number 'Dynamic 'Dynamic 'Dynamic
            :features $ #{} :js-ffi
        'create-session $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn create-session (messages model)
            let
                id $ generate-session-id
                first-msg $ option:fold
                  assert-type (first messages) (:: 'Option 'app.schema/ChatMessage)
                  fn () |New-chat
                  fn (message)
                    hint-fn $ {}
                      :args $ [] 'app.schema/ChatMessage
                      :return 'String
                    :content message
              ChatSession :id id :created-at (ffi/now-ms) :messages messages :model model :preview
                let
                    len $ count first-msg
                    end $ if (< len 100) len 100
                  slice first-msg 0 end
                , :is-history? false
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/ChatSession)
            :args $ [] (:: 'List 'app.schema/ChatMessage) 'Tag
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
          :schema $ :: 'Fn $ {} (:return 'app.comp.container/StreamChunk)
            :args $ [] 'T
            :features $ #{} :js-ffi
            :generics $ [] 'T
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
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] $ :: 'List 'app.schema/ChatSession
            :features $ #{} :js-ffi
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
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Effect)
            :args $ []
            :features $ #{} :js-ffi
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
                  reset! *gen-ai-new $ Option :some client
                  , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:async true) (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
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
                reset! *openai $ Option :some client
              , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:async true) (:return 'Unit)
            :args $ [] 'Tag
            :features $ #{} :js-ffi
        'first-line $ %{} 'CodeEntry
          :doc "|last message from error contains a line starts with \"data: \" and an extra error message. In order that JSON is parsed correctly, only first line is used now."
          :code $ quote $ defn first-line (tt)
            let
                lines $ filter (split-lines tt)
                  fn (line)
                    hint-fn $ {}
                      :args $ [] 'String
                      :return 'Bool
                    not $ blank? line
              when
                > (count lines) 1
                eprintln "|Dropping some unexpected lines:" $ slice lines 1
              option:unwrap-or (first lines) |
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'String
        'genai-new $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn genai-new (module api-key) (raise "|JavaScript GenAI constructor")
          :examples $ []
          :ffi $ {} (:target :browser)
            :js $ {} $ :inline "|(module, apiKey) => new module.GoogleGenAI({apiKey})"
          :schema $ :: 'Fn $ {} (:return 'JsObject)
            :args $ [] 'JsObject 'String
            :features $ #{} :js-ffi
        'generate-session-id $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn generate-session-id ()
            str $ ffi/now-ms
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ []
        'get-anthropic-key! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn get-anthropic-key! () (required-key! |claude-key "|Required claude-key in localStorage")
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ []
            :features $ #{} :js-ffi
        'get-deepinfra-key! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn get-deepinfra-key! () (required-key! |deepinfra-key "|Required deepinfra-key in localStorage")
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ []
            :features $ #{} :js-ffi
        'get-deepseek-key! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn get-deepseek-key! ()
            let
                key $ required-key! |deepseek-key "|Required deepseek-key in localStorage"
              when chrome-extension? $ js/chrome.storage.local.set $ js-object (:deepseekKey key)
              , key
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ []
            :features $ #{} :js-ffi
        'get-gemini-key! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn get-gemini-key! ()
            let
                key $ required-key! |gemini-key "|Required gemini-key in localStorage"
              when chrome-extension? $ js/chrome.storage.local.set $ js-object (:geminiKey key)
              , key
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ []
            :features $ #{} :js-ffi
        'get-openrouter-key! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn get-openrouter-key! () (required-key! |openrouter-key "|Required openrouter-key in localStorage")
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ []
            :features $ #{} :js-ffi
        'js-present-dynamic? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn js-present-dynamic? (value)
            if (js/Boolean value) true false
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'json-pattern? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn json-pattern? (text)
            or (starts-with? text |{) (starts-with? text |[)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ [] 'String
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
          :schema $ :: 'Fn $ {} (:return 'JsObject)
            :args $ [] 'Bool 'Bool
            :features $ #{} :js-ffi
        'messages->anthropic $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn messages->anthropic (messages)
            to-js-data $ map messages $ fn (m)
              hint-fn $ {} $ :args ([] 'app.schema/ChatMessage)
              {}
                :role $ if
                  = :assistant $ :role m
                  , |assistant |user
                :content $ :content m
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] $ :: 'List 'app.schema/ChatMessage
            :features $ #{} :js-ffi
        'messages->gemini $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn messages->gemini (messages)
            to-js-data $ map messages $ fn (m)
              hint-fn $ {} $ :args ([] 'app.schema/ChatMessage)
              {}
                :role $ if
                  = :assistant $ :role m
                  , |model |user
                :parts $ [] $ {}
                  :text $ :content m
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] $ :: 'List 'app.schema/ChatMessage
            :features $ #{} :js-ffi
        'messages->openai $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn messages->openai (messages)
            to-js-data $ map messages $ fn (m)
              hint-fn $ {} $ :args ([] 'app.schema/ChatMessage)
              {}
                :role $ if
                  = :assistant $ :role m
                  , |assistant |user
                :content $ :content m
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] $ :: 'List 'app.schema/ChatMessage
            :features $ #{} :js-ffi
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
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'Tag
          :tests $ [] $ %{} 'TestEntry (:name |maps-provider-keys)
            :code $ quote $ do
              assert= |gemini-key $ model-storage-key :gemini
              assert= |openrouter-key $ model-storage-key :openrouter/openai/gpt-5
              assert= |deepseek-key $ model-storage-key :deepseek-v4-pro
              assert= |claude-key $ model-storage-key :claude-3.7
        'models-menu $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def models-menu
            [] (:: :item :gemini-3.5-flash-lite "|Gemini Flash Lite 3.5") (:: :item :gemini-3.6-flash "|Gemini Flash 3.6") (:: :item :gemini-3.7-flash "|Gemini Flash 3.7") (:: :item :gemini-3.8-flash "|Gemini Flash 3.8") (:: :item :gemini-flash "|Gemini Flash 3") (:: :item :gemini-3.5-flash "|Gemini Flash 3.5") (:: :item :gemini-pro "|Gemini Pro 3.1") (:: :item :gemini-3.1-flash-lite-preview "|Gemini Flash Lite 3.1") (:: :item :flash-imagen "|Flash Imagen") (:: :item :imagen-4 "|Imagen 4") (:: :item :gemma "|Gemma 3 27b") (:: :item :openrouter/anthropic/claude-sonnet-4.5 "|Openrouter Claude Sonnet 4.5") (:: :item :openrouter/anthropic/claude-opus-4 "|Openrouter Claude Opus 4") (:: :item :openrouter/google/gemini-2.5-pro-preview "|Openrouter Google Gemini 2.5 pro preview")
              :: :item :openrouter/google/gemini-2.5-flash-preview-05-20 "|Openrouter Google Gemini 2.5 flash preview"
              :: :item :openrouter/openai/gpt-5 "|Openrouter GPT 5"
              :: :item :openrouter/deepseek/deepseek-chat-v3.1 "|Openrouter deepseek-chat-v3.1"
              :: :item :deepseek-v4-pro "|DeepSeek V4 Pro"
              :: :item :deepseek-v4-flash "|DeepSeek V4 Flash"
              ; :: :item :claude-4.5 "|Claude 4.5"
          :examples $ []
          :schema $ :: 'List
        'normalize-chat-state $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn normalize-chat-state (raw)
            if (struct? raw)
              struct-match raw
                ChatState state $ app.schema/ChatState :answer
                  stream-text $ :answer state
                  , :loading? (:loading? state) :done? (:done? state) :messages
                    map (:messages state)
                      fn (message) (app.schema/normalize-chat-message message)
                    , :model
                      if
                        tag? $ :model state
                        :model state
                        , :gemini
                      , :thinking $ stream-text (:thinking state)
                _ other $ raise "|Expected ChatState nominal value"
              let
                  data $ decode-map-as raw $ :: 'Map 'Tag 'Dynamic
                  loading-value $ option:unwrap-or (get data :loading?) false
                  done-value $ option:unwrap-or (get data :done?) true
                  model-value $ option:unwrap-or (get data :model) :gemini
                app.schema/ChatState :answer
                  stream-text $ option:unwrap-or (get data :answer) |
                  , :loading?
                    match loading-value (true true) (false false) (_ false)
                    , :done?
                      match done-value (true true) (false false) (_ true)
                      , :messages
                        let
                            raw-message-value $ option:unwrap-or (get data :messages) ([])
                            raw-messages $ if (list? raw-message-value)
                              decode-map-as raw-message-value $ :: 'List 'Dynamic
                              []
                          map raw-messages $ fn (message) (app.schema/normalize-chat-message message)
                        , :model
                          if (tag? model-value) model-value :gemini
                          , :thinking $ stream-text $ option:unwrap-or (get data :thinking) |
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/ChatState)
            :args $ [] 'T
            :features $ #{} :js-ffi
            :generics $ [] 'T
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
                match event $
                  :fill-text info
                  let
                      info-data $ decode-map-as info $ :: 'Map 'Tag 'Dynamic
                      submit? $ decode-map-as
                        option:unwrap-or (get info-data :submit?) true
                        , 'Bool
                      text $ decode-map-as
                        option:unwrap-or (get info-data :text) |
                        , 'String
                    dispatch! (:: :states cursor) (assoc state :content text)
                    if submit?
                      on-submit text (:search? state) (:think? state) dispatch!
                      , nil
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'Dynamic 'app.schema/MessageBoxState 'Dynamic
        'openai-new $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn openai-new (module base-url api-key) (raise "|JavaScript OpenAI constructor")
          :examples $ []
          :ffi $ {} (:target :browser)
            :js $ {} $ :inline "|(module, baseURL, apiKey) => new module.default({baseURL, apiKey, defaultHeaders:{}, dangerouslyAllowBrowser:true})"
          :schema $ :: 'Fn $ {} (:return 'JsObject)
            :args $ [] 'JsObject 'String 'String
            :features $ #{} :js-ffi
        'pick-model $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn pick-model (variant)
            match variant (:gemini-3.5-flash-lite |gemini-3.5-flash-lite) (:gemini-3.6-flash |gemini-3.6-flash) (:gemini-3.7-flash |gemini-3.7-flash) (:gemini-3.8-flash |gemini-3.8-flash) (:gemini-flash |gemini-3-flash-preview) (:gemini-3.5-flash |gemini-3.5-flash) (:gemini-3.1-flash-lite-preview |gemini-3.1-flash-lite) (:gemini-pro |gemini-3.1-pro-preview) (:gemma |gemma-3-27b-it) (_ |gemini-3.5-flash-lite)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'Tag
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
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'String 'String
            :features $ #{} :js-ffi
        'save-current-session $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn save-current-session (store state)
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
          :schema $ :: 'Fn $ {} (:return 'app.schema/Store)
            :args $ [] 'app.schema/Store 'app.schema/ChatState
        'stream-text $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn stream-text (value)
            hint-fn $ {}
              :generics $ [] 'T
              :args $ [] 'T
              :return 'String
              :features $ #{} :js-ffi
            if (string? value) value |
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
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
          :schema $ :: 'Map 'Tag 'Dynamic
        'style-abort-close $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-abort-close
            {} $ |& $ {} (:vertical-align :middle) (:font-size 10)
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
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
          :schema $ :: 'Map 'Tag 'Dynamic
        'style-archive-close $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-archive-close
            {}
              |& $ {} (:cursor :pointer) (:font-size 18)
                :color $ hsl 0 0 50
                :transition-duration |200ms
              |&:hover $ {} $ :color (hsl 0 0 20)
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
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
          :schema $ :: 'Map 'Tag 'Dynamic
        'style-archive-row $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-archive-row
            {} $ |& $ {} (:padding |12px)
              :border-bottom $ str "|1px solid " $ hsl 0 0 90
              :display :flex
              :justify-content :space-between
              :align-items :center
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'style-checkbox $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-checkbox
            {} $ |& $ {} (:cursor :pointer) (:user-select :none) (:font-size 12) (:line-height |28px) (:vertical-align :middle)
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'style-clear $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-clear
            {} $ |& $ {} (:opacity 0.4) (:padding "|4px 8px") (:display :inline-block) (:height |24px)
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'style-code-content $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-code-content
            {} $ |& $ {} (:line-height |1.5) (:font-size 13)
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
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
          :schema $ :: 'Map 'Tag 'Dynamic
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
          :schema $ :: 'Map 'Tag 'Dynamic
        'style-focus-box $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-focus-box
            {} $ |& $ {} (:width |100%) (:border-radius 12) (:min-height 40) (:max-height 40) (:padding "|9px 12px") (:cursor :text) (:overflow :hidden) (:white-space :pre) (:text-overflow :ellipsis) (:background-color :transparent)
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'style-focus-link $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-focus-link
            {}
              |& $ {} (:cursor :pointer) (:font-size 13)
                :color $ hsl 200 80 40
                :text-decoration :none
                :padding "|4px 0"
              |&:hover $ {} $ :text-decoration :underline
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'style-gap12 $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-gap12
            {} $ |& $ {} (:gap 12)
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
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
          :schema $ :: 'Map 'Tag 'Dynamic
        'style-history-count $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-history-count
            {} $ |& $ {}
              :color $ hsl 200 80 60
              :font-size |12px
              :display :inline-block
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'style-image $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-image
            {} $ |& $ {} (:max-width |100%) (:align-self :flex-start) (:border-radius |6px)
              :border $ str "|1px solid " $ hsl 0 0 90
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'style-md-content $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-md-content
            {} $ "|& .md-p" $ {} (:margin "|16px 0") (:line-height |1.6)
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'style-message-actions $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-message-actions
            {} $ |& $ {} (:margin-top 6) (:justify-content :flex-end) (:width |100%)
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'style-message-area $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-message-area
            {} $ |& $ {} (:flex 2) (:overflow :scroll)
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'style-message-assistant $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-message-assistant
            {} $ |& $ {} (:align-self :flex-start)
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'style-message-box $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-message-box
            {}
              |& $ {} (:width |100%) (:max-width 1200) (:right |50%) (:padding |8px) (:margin :auto) (:transition-duration |300ms) (; :transform "|translate(50%,0)") (:transition-property |height)
              |&:focus-within $ {} (:opacity 1) (; :transform "|translate(50%,0)")
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
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
          :schema $ :: 'Map 'Tag 'Dynamic
        'style-message-item $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-message-item
            {} $ |& $ {} (:line-height |1.6)
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'style-message-list $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-message-list
            {} $ |& $ {} (:flex 2) (:padding "|40px 16px 20vh 16px") (:width |100%) (:max-width 1200) (:margin :auto) (:position :relative)
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'style-message-role $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-message-role
            {} $ |& $ {} (:font-size 12)
              :color $ hsl 0 0 50
              :margin-bottom 6
              :padding-right |16px
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'style-message-text $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-message-text
            {} $ |& $ {} (:white-space :pre-wrap) (:line-height |1.6) (:margin 0) (:padding-right |16px)
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
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
          :schema $ :: 'Map 'Tag 'Dynamic
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
          :schema $ :: 'Map 'Tag 'Dynamic
        'style-reply-actions $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-reply-actions
            {} $ |& $ {} (:margin-top 6) (:justify-content :flex-start) (:width |100%)
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
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
          :schema $ :: 'Map 'Tag 'Dynamic
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
          :schema $ :: 'Map 'Tag 'Dynamic
        'style-sessions-list $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-sessions-list
            {} $ |& $ {} (:flex |1) (:overflow-y :auto) (:min-width |300px)
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'style-submit $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-submit
            {} $ |& $ {}
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'style-textbox $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-textbox
            {}
              |& $ {} (:border-radius 12) (:height "|max(100px,15vh)") (:width |100%) (:transition-duration |320ms) (:border :none) (:background-color :transparent)
              |&.focus-within $ {} (:height "|max(240px,32vh)") (:border :none) (:box-shadow :none)
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'style-textbox-compact $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-textbox-compact
            {}
              |& $ {} (:height 40) (:min-height 40) (:max-height 40) (:overflow :hidden)
              |&.focus-within $ {} (:height "|max(240px,32vh)") (:min-height |unset) (:max-height |unset)
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
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
          :schema $ :: 'Map 'Tag 'Dynamic
        'submit-message! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn submit-message! (cursor state prompt-text search? think? model d!)
            let
                state1 $ assoc state :messages $ append-user-message (:messages state) prompt-text
                *text $ ref |
                *thinking-text $ ref |
                model $ :model state
              d! cursor state1
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
                    d! cursor $ -> state1 (assoc :answer err-text) (assoc :loading? false) (assoc :done? true)
                      assoc :messages $ upsert-assistant-message (:messages state1) err-text |
          :examples $ []
          :schema $ :: 'Fn $ {} (:async true) (:return 'Dynamic)
            :args $ [] (:: 'List 'Dynamic) 'app.schema/ChatState 'String 'Bool 'Bool 'Tag 'Dynamic
            :features $ #{} :js-ffi
        'toggle-focus-within! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn toggle-focus-within! (respo-event active?)
            let
                raw-event $ option:unwrap-or (get respo-event :event) js/undefined
              when (js-present-dynamic? raw-event)
                let
                    event $ unsafe-coerce raw-event FocusEventHost
                    target0 $ .-target event
                  when (js-present-dynamic? target0)
                    let
                        target $ unsafe-coerce target0 FocusTargetHost
                        parent0 $ .-parentElement target
                      when (js-present-dynamic? parent0)
                        let
                            parent $ unsafe-coerce parent0 FocusTargetHost
                            box0 $ .-parentElement parent
                          when (js-present-dynamic? box0)
                            let
                                box $ unsafe-coerce box0 FocusTargetHost
                                class-list $ .-classList target
                                box-class $ .-classList box
                              if active?
                                do
                                  when
                                    not $ class-list .contains? |focus-within
                                    class-list .add! |focus-within
                                  when
                                    not $ box-class .contains? |focus-within
                                    box-class .add! |focus-within
                                do
                                  when (class-list .contains? |focus-within) (class-list .remove! |focus-within)
                                  when (box-class .contains? |focus-within) (box-class .remove! |focus-within)
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Bool
            :features $ #{} :js-ffi
        'upsert-assistant-message $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn upsert-assistant-message (messages content thinking)
            let
                size $ count messages
              option:fold
                assert-type (last messages) (:: 'Option 'app.schema/ChatMessage)
                fn ()
                  hint-fn $ {} $ :return (:: 'List 'app.schema/ChatMessage)
                  conj messages $ ChatMessage :role :assistant :content content :thinking thinking
                fn (last-msg)
                  hint-fn $ {}
                    :args $ [] 'app.schema/ChatMessage
                    :return $ :: 'List 'app.schema/ChatMessage
                  if
                    = :assistant $ :role last-msg
                    assoc messages (dec size)
                      -> last-msg (assoc :content content) (assoc :thinking thinking)
                    conj messages $ ChatMessage :role :assistant :content content :thinking thinking
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'List 'app.schema/ChatMessage) 'String 'String
            :return $ :: 'List 'app.schema/ChatMessage
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.container
          :require (respo-ui.css :as css)
            respo.css :refer $ defstyle
            respo.util.format :refer $ hsl
            respo.core :refer $ defcomp defeffect <> >> list-> div button textarea span input a pre img memo-comp-by
            respo.comp.space :refer $ =<
            respo.comp.inspect :refer $ comp-inspect
            reel.comp.reel :refer $ comp-reel
            app.config :refer $ dev? chrome-extension? site
            respo-md.comp.md :refer $ comp-md-block style-code-block
            respo-ui.comp :refer $ comp-copy style-close
            |../extension/get-selected :refer $ get-selected
            |../lib/db :refer $ db-get db-set
            |../lib/image :refer $ base64ToBlob
            respo-alerts.core :refer $ use-modal-menu use-prompt use-drawer use-alert
            respo-ui.util :refer $ tab-echo!
            app.schema :refer $ Store ChatState ChatSession ChatMessage MessageBoxState store
            calcit.test :refer $ is
            js-ffi.browser :as browser
            js-ffi.shared :as ffi
            js-ffi.contract :as contract
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'Site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Site (:storage-key 'String) (:archive-key 'String)
          :examples $ []
          :schema $ :: 'StructDef
        'chrome-extension? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def chrome-extension? (detect-chrome-extension?)
          :examples $ []
          :schema $ :: 'Bool
        'detect-chrome-extension? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn detect-chrome-extension? () (raise "|Browser-only Chrome runtime detection")
          :examples $ []
          :ffi $ {} (:target :browser)
            :js $ {} $ :inline "|() => window.chrome?.runtime?.id != null"
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ []
            :features $ #{} :js-ffi
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $ option:unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ :: 'Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ Site :storage-key |msg-buffer :archive-key |msg-buffer-archive
          :examples $ []
          :schema $ :: 'app.config/Site
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
    'app.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *reel
            -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
          :examples $ []
          :schema $ :: 'Ref $ :: 'Map 'Tag 'Dynamic
        'ChromeDisconnectEventHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait ChromeDisconnectEventHost
            .add-listener! $ :: 'Fn $ {} (:return 'Unit)
              :args $ [] 'app.main/ChromeDisconnectEventHost $ :: 'Fn
                {} (:return 'Unit)
                  :args $ [] 'Dynamic
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} $ :add-listener! |addListener
          :schema $ :: 'Trait
        'ChromePortHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait ChromePortHost
            :onDisconnect $ :: 'JsNullish 'app.main/ChromeDisconnectEventHost
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ :: 'Trait
        'DocumentHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait DocumentHost
            :visibilityState $ :: 'JsNullish 'String
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ :: 'Trait
        'ExtensionMessageHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait ExtensionMessageHost
            :action $ :: 'JsNullish 'String
            :content $ :: 'JsNullish 'String
            :text $ :: 'JsNullish 'String
            :submit? $ :: 'JsNullish 'Bool
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ :: 'Trait
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
                      listener $ assert-type on-disconnect 'app.main/ChromeDisconnectEventHost
                    listener .add-listener! $ fn (event) (println |Worker-disconnected-retrying) (js/setTimeout connect-to-worker! 500) &unit
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (raw-op)
            let
                op $ if (enum? raw-op) raw-op $ raise "|Expected operation Enum"
              when config/dev? $ js/console.log |Dispatch: op
              reset! *reel $ reel-updater
                fn (raw-store raw-op raw-id raw-time)
                  updater (schema/normalize-store raw-store)
                    if (enum? raw-op) raw-op $ raise "|Expected operation Enum"
                    decode-map-as raw-id 'String
                    decode-map-as raw-time 'Number
                , @*reel op
              , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'T
            :features $ #{} :js-ffi
            :generics $ [] 'T
        'extension-action $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn extension-action (message)
            js-nullish->option $ .-action message
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'app.main/ExtensionMessageHost
            :features $ #{} :js-ffi
            :return $ :: 'calcit.core/Option 'String
        'hydrate-storage-later! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn hydrate-storage-later! ()
            browser/set-timeout!
              fn () $ let
                  storage $ browser/window-local-storage
                match
                  js-nullish->option $ storage .get-item $ :storage-key config/site
                  (:none) &unit
                  (:some serialized)
                    let
                        t-start $ ffi/now-ms
                      dispatch! $ :: :hydrate-storage $ parse-cirru-edn serialized
                      println |Hydrated-in $ - (ffi/now-ms) t-start
              , 0
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'listen-extension! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn listen-extension! ()
            js/chrome.runtime.onMessage.addListener $ fn (raw-message sender respond!)
              let
                  message $ unsafe-coerce raw-message ExtensionMessageHost
                  action $ option:unwrap-or (extension-action message) |
                when (= |menu-summary action)
                  let
                      source $ option:unwrap-or
                        js-nullish->option $ .-content message
                        , |
                      content $ str "|你扮演一个专业的工程师, 对以下内容做一下讲解, 用中文, 注意要简略, 内容注意分块.\n\n" &newline &newline source
                      event-tuple $ :: :fill-text $ {} (:text content) (:submit? true)
                    send-to-component! event-tuple
                when (= |fill-text action)
                  let
                      content $ option:unwrap-or
                        js-nullish->option $ .-text message
                        , |
                      submit? $ option:unwrap-or
                        js-nullish->option $ .-submit? message
                        , true
                      event-tuple $ :: :fill-text $ {} (:text content) (:submit? submit?)
                    send-to-component! event-tuple
                when (= |menu-translate action)
                  let
                      source $ option:unwrap-or
                        js-nullish->option $ .-content message
                        , |
                      content $ str "|请将以下内容翻译成中文, 保持简洁分段:\n\n" &newline &newline source
                      event-tuple $ :: :fill-text $ {} (:text content) (:submit? true)
                    send-to-component! event-tuple
                when (= |menu-custom action)
                  let
                      content $ option:unwrap-or
                        js-nullish->option $ .-content message
                        , |
                      event-tuple $ :: :fill-text $ {} (:text content) (:submit? false)
                    send-to-component! event-tuple
              , &unit
            connect-to-worker!
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            let
                t0 $ unsafe-coerce (ffi/now-ms) 'Number
              println "|Starting main! at" t0
              println "|Running mode:" $ if config/dev? |dev |release
              if config/dev? $ load-console-formatter!
              render-app!
              add-watch! *reel :changes $ fn (reel prev) (render-app!)
              add-watch! *archived-sessions :changes $ fn (s prev) (render-app!)
              add-watch! *viewing-archive-session :changes $ fn (s prev) (render-app!)
              listen-devtools! |k dispatch!
              js/window.addEventListener |beforeunload $ fn (event) (persist-storage!)
              js/window.addEventListener |visibilitychange $ fn (event)
                let
                    document $ unsafe-coerce js/document DocumentHost
                    visibility-state $ option:unwrap-or
                      js-nullish->option $ .-visibilityState document
                      , |
                  if (= |hidden visibility-state) (persist-storage!)
              js/window.addEventListener |dblclick $ fn (event) (.!preventDefault event)
              js/window.addEventListener |wheel
                fn (event)
                  if (.-ctrlKey event) (.!preventDefault event)
                js-object $ :passive false
              hydrate-storage-later!
              if config/chrome-extension? $ listen-extension!
              sync-gemini-key!
              let
                  t1 $ unsafe-coerce (ffi/now-ms) 'Number
                println "|App started at" t1 |cost (- t1 t0) |ms
              , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn mount-target ()
            let
                document $ js-cast js/document 'respo.dom/DomDocument
              document .query-selector |.app
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ []
            :features $ #{} :js-ffi
            :return $ :: 'JsNullish 'respo.dom/DomElement
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-storage! ()
            println "|Saved at" $ :iso $ ffi/date-now-snapshot
            let
                storage $ browser/window-local-storage
                store $ match (get @*reel :store)
                  (:none) schema/store
                  (:some value) (schema/normalize-store value)
              storage .set-item! (:storage-key config/site) (format-cirru-edn store)
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if
              not $ if (js/Boolean build-errors) true false
              do (remove-watch! *reel :changes) (remove-watch! *archived-sessions :changes) (remove-watch! *viewing-archive-session :changes) (clear-cache!)
                add-watch! *reel :changes $ fn (reel prev) (render-app!)
                add-watch! *archived-sessions :changes $ fn (s prev) (render-app!)
                add-watch! *viewing-archive-session :changes $ fn (s prev) (render-app!)
                reset! *reel $ decode-map-as (refresh-reel @*reel schema/store updater) (:: 'Map 'Tag 'Dynamic)
                hud! |ok~ |Ok
              hud! |error $ unsafe-coerce build-errors 'Dynamic
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            let
                t_start $ ffi/now-ms
              println "|Rendering app..."
              render-with! (mount-target)
                fn () $ comp-container @*reel
                , dispatch!
              println "|Rendered in"
                - (ffi/now-ms) t_start
                , |ms
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
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
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ []
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require
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
            js-ffi.shared :as ffi
            js-ffi.browser :as browser
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'ChatMessage $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct ChatMessage (:role 'Tag) (:content 'String) (:thinking 'String)
          :examples $ []
          :schema $ :: 'StructDef
        'ChatSession $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct ChatSession (:id 'String) (:created-at 'Number)
            :messages $ :: 'List 'app.schema/ChatMessage
            :model 'Tag
            :preview 'String
            :is-history? 'Bool
          :examples $ []
          :schema $ :: 'StructDef
        'ChatState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct ChatState (:answer 'String) (:loading? 'Bool) (:done? 'Bool)
            :messages $ :: 'List 'app.schema/ChatMessage
            :model 'Tag
            :thinking 'String
          :examples $ []
          :schema $ :: 'StructDef
        'MessageBoxState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct MessageBoxState (:content 'String) (:search? 'Bool) (:think? 'Bool) (:focus-mode? 'Bool)
          :examples $ []
          :schema $ :: 'StructDef
        'Store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Store (:states 'Map)
            :sessions $ :: 'List 'app.schema/ChatSession
            :current-session-id 'Dynamic
            :model 'Dynamic
            :archived-count 'Number
          :examples $ []
          :schema $ :: 'StructDef
        'normalize-chat-message $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn normalize-chat-message (raw)
            hint-fn $ {}
              :args $ [] 'T
              :return 'app.schema/ChatMessage
              :features $ #{} :js-ffi
              :generics $ [] 'T
            if (struct? raw)
              struct-match raw
                ChatMessage typed $ ChatMessage :content (:content typed) :role (:role typed) :thinking $ :thinking typed
                _ other $ raise "|Unexpected nominal value for ChatMessage"
              if (map? raw)
                let
                    data $ decode-map-as raw $ :: 'Map 'Tag 'Dynamic
                    thinking-value $ option:unwrap-or (get data :thinking) |
                    normalized-thinking $ if (string? thinking-value) (assert-type thinking-value 'String) |
                  decode-map-as (assoc data :thinking normalized-thinking) 'app.schema/ChatMessage
                raise "|Expected chat message map"
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/ChatMessage)
            :args $ [] 'T
            :features $ #{} :js-ffi
            :generics $ [] 'T
        'normalize-chat-session $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn normalize-chat-session (raw)
            hint-fn $ {}
              :args $ [] 'T
              :return 'app.schema/ChatSession
              :features $ #{} :js-ffi
              :generics $ [] 'T
            if (struct? raw)
              struct-match raw
                ChatSession typed $ ChatSession :id (:id typed) :created-at (:created-at typed) :messages
                  map (:messages typed)
                    fn (message) (normalize-chat-message message)
                  , :model (:model typed) :preview (:preview typed) :is-history? $ :is-history? typed
                _ other $ raise "|Unexpected nominal value for ChatSession"
              if (map? raw)
                let
                    data $ decode-map-as raw $ :: 'Map 'Tag 'Dynamic
                    raw-message-value $ option:unwrap-or (get data :messages) ([])
                    raw-messages $ if (list? raw-message-value)
                      assert-type raw-message-value $ :: 'List 'Dynamic
                      []
                    messages $ map raw-messages $ fn (message) (normalize-chat-message message)
                    base $ decode-map-as
                      assoc data :messages $ []
                      , 'app.schema/ChatSession
                  ChatSession :id (:id base) :created-at (:created-at base) :messages messages :model (:model base) :preview (:preview base) :is-history? $ :is-history? base
                raise "|Expected chat session map"
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/ChatSession)
            :args $ [] 'T
            :features $ #{} :js-ffi
            :generics $ [] 'T
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
            hint-fn $ {}
              :args $ [] 'T
              :return 'app.schema/Store
              :features $ #{} :js-ffi
              :generics $ [] 'T
            if (struct? raw)
              struct-match raw
                Store typed $ Store :states (:states typed) :sessions
                  map (:sessions typed)
                    fn (session) (normalize-chat-session session)
                  , :current-session-id (:current-session-id typed) :model (:model typed) :archived-count $ :archived-count typed
                _ other $ raise "|Unexpected nominal value for Store"
              if (map? raw)
                let
                    data $ decode-map-as raw $ :: 'Map 'Tag 'Dynamic
                    raw-session-value $ option:unwrap-or (get data :sessions) ([])
                    raw-sessions $ if (list? raw-session-value)
                      assert-type raw-session-value $ :: 'List 'Dynamic
                      []
                    sessions $ map raw-sessions $ fn (session) (normalize-chat-session session)
                    patched $ dissoc data :current-chapter-id
                    base $ decode-map-as
                      assoc patched :sessions $ []
                      , 'app.schema/Store
                  Store :states (:states base) :sessions sessions :current-session-id (:current-session-id base) :model (:model base) :archived-count $ :archived-count base
                raise "|Expected store map"
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Store)
            :args $ [] 'T
            :features $ #{} :js-ffi
            :generics $ [] 'T
          :tests $ [] $ %{} 'TestEntry (:name |migrates-legacy-message-thinking)
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
                normalized $ assert-type (normalize-store legacy) 'app.schema/Store
                sessions $ assert-type (:sessions normalized) (:: 'List 'app.schema/ChatSession)
                fallback-session $ ChatSession :id |fallback :created-at 0 :messages ([]) :model :gemini :preview | :is-history? false
                session $ option:unwrap-or
                  assert-type (first sessions) (:: 'Option 'app.schema/ChatSession)
                  , fallback-session
                messages $ assert-type (:messages session) (:: 'List 'app.schema/ChatMessage)
                fallback-message $ ChatMessage :role :user :content | :thinking |fallback
                message $ option:unwrap-or
                  assert-type (first messages) (:: 'Option 'app.schema/ChatMessage)
                  , fallback-message
              is $ = | $ :thinking message
            :tags $ #{} :regression :unit
        'store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            Store :states
              {} $ :cursor $ []
              , :sessions ([]) :current-session-id nil :model nil :archived-count 0
          :examples $ []
          :schema $ :: 'app.schema/Store
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
                      concat
                        decode-map-as cursor $ :: 'List 'Dynamic
                        [] :data
                      , s
                    :: 'Map 'Dynamic 'Dynamic
                (:states-merge cursor s changes)
                  let
                      path $ concat
                        decode-map-as cursor $ :: 'List 'Dynamic
                        [] :data
                      state $ option:unwrap-or
                        get-in (:states store) path
                        , s
                      updated-states $ assoc-in (:states store) path $ if (map? state)
                        merge
                          decode-map-as state $ :: 'Map 'Tag 'Dynamic
                          decode-map-as changes $ :: 'Map 'Tag 'Dynamic
                        if (struct? state)
                          struct-match state
                            ChatState raw-base $ let
                                base $ app.comp.container/normalize-chat-state raw-base
                                typed-changes $ decode-map-as changes $ :: 'Map 'Tag 'Dynamic
                              ChatState :answer
                                match (get typed-changes :answer)
                                  (:none) (:answer base)
                                  (:some value) (decode-map-as value 'String)
                                , :loading?
                                  match (get typed-changes :loading?)
                                    (:none) (:loading? base)
                                    (:some value) (decode-map-as value 'Bool)
                                  , :done?
                                    match (get typed-changes :done?)
                                      (:none) (:done? base)
                                      (:some value) (decode-map-as value 'Bool)
                                    , :messages
                                      match (get typed-changes :messages)
                                        (:none) (:messages base)
                                        (:some value)
                                          map
                                            decode-map-as value $ :: 'List 'Dynamic
                                            fn (message) (app.schema/normalize-chat-message message)
                                      , :model
                                        match (get typed-changes :model)
                                          (:none) (:model base)
                                          (:some value) (decode-map-as value 'Tag)
                                        , :thinking $ match (get typed-changes :thinking)
                                          (:none) (:thinking base)
                                          (:some value) (decode-map-as value 'String)
                            _ other $ raise "|Unsupported state Struct in states-merge"
                          do (eprintln |unknown-state-to-merge state) state
                    assoc store :states $ decode-map-as updated-states $ :: 'Map 'Dynamic 'Dynamic
                (:hydrate-storage data) (app.schema/normalize-store data)
                (:change-model)
                  if
                    let
                        model $ :model store
                      if (tag? model) (= model :anthropic) false
                    assoc store :model :gemini
                    assoc store :model :anthropic
                (:save-session state)
                  let
                      store1 $ save-current-session store $ app.comp.container/normalize-chat-state state
                    assoc store1 :current-session-id nil
                (:session session-id id)
                  assoc store :current-session-id $ if (nil? id) id $ decode-map-as id 'String
                (:load-session cursor state session)
                  let
                      typed-session $ app.schema/normalize-chat-session session
                      store1 $ assoc store :states $ decode-map-as
                        assoc-in (:states store)
                          concat
                            decode-map-as cursor $ :: 'List 'Dynamic
                            [] :data
                          -> (app.comp.container/normalize-chat-state state)
                            assoc :messages $ :messages typed-session
                            assoc :done? true
                        :: 'Map 'Dynamic 'Dynamic
                    assoc store1 :current-session-id $ :id typed-session
                (:remove-session id)
                  assoc store :sessions $ filter (:sessions store)
                    fn (s)
                      hint-fn $ {}
                        :args $ [] 'app.schema/ChatSession
                        :return 'Bool
                      not $ = (:id s) (decode-map-as id 'String)
                (:archive-sessions new-count)
                  -> store
                    assoc :sessions $ []
                    assoc :archived-count $ decode-map-as new-count 'Number
                    assoc :current-session-id nil
                (:update-archived-count new-count)
                  -> store $ assoc :archived-count $ decode-map-as new-count 'Number
                (:clear-sessions)
                  -> store
                    assoc :sessions $ []
                    assoc :current-session-id nil
                _ $ do (eprintln "|unknown op:" op) store
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Store)
            :args $ [] 'app.schema/Store 'Enum 'String 'Number
          :tests $ [] $ %{} 'TestEntry (:name |mixed-cursor-latest-state-merge)
            :code $ quote $ let
                cursor $ [] :panel |draft 7
                stale $ app.comp.container/normalize-chat-state $ {}
                message $ app.schema/normalize-chat-message $ {} (:role :user) (:content |synthetic) (:thinking |)
                latest $ -> stale (assoc :answer |latest)
                  assoc :messages $ [] message
                initial $ updater app.schema/store (:: :states cursor latest) |synthetic 0
                changed $ updater initial
                  :: :states-merge cursor stale $ {} $ :thinking |thought
                  , |synthetic 1
                restored $ app.comp.container/normalize-chat-state $ .unwrap
                  get-in (:states changed)
                    concat cursor $ [] :data
                roundtrip $ app.schema/normalize-store $ parse-cirru-edn (format-cirru-edn changed)
                updated-again $ updater roundtrip
                  :: :states-merge cursor stale $ {} $ :answer |after-restore
                  , |synthetic 3
                restored-again $ app.comp.container/normalize-chat-state $ .unwrap
                  get-in (:states updated-again)
                    concat cursor $ [] :data
              assert= |latest $ :answer restored
              assert= |thought $ :thinking restored
              assert= (:messages latest) (:messages restored)
              assert= (:done? latest) (:done? restored)
              assert= |after-restore $ :answer restored-again
              assert= |thought $ :thinking restored-again
              assert= ([] message) (:messages restored-again)
              assert= true $ try
                do
                  updater changed
                    :: :states-merge cursor stale $ {} $ :done? |not-a-bool
                    , |synthetic 2
                  , false
                fn (error) true
            :tags $ #{} :regression :unit
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
          :require
            app.comp.container :refer $ save-current-session generate-session-id
            app.schema :refer $ Store ChatState ChatSession
