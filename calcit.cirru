
{} (:about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `cr query` to inspect and `cr edit`/`cr tree` to modify. Run `cr docs agents --full` first. Manual edits must follow format and schema conventions, then run `cr edit format`.") (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!) (:version |0.0.1)
    :modules $ [] |respo.calcit/ |memof/ |respo-ui.calcit/ |reel.calcit/ |respo-markdown.calcit/ |alerts.calcit/ |respo-feather.calcit/ |genai.calcit/
  :entries $ {}
  :files $ {}
    |app.comp.container $ %{} :FileEntry
      :defs $ {}
        |*abort-control $ %{} :CodeEntry (:doc |) (:schema :ref)
          :code $ quote (defatom *abort-control nil)
          :examples $ []
        |*archived-sessions $ %{} :CodeEntry (:doc |) (:schema :ref)
          :code $ quote (defatom *archived-sessions nil)
          :examples $ []
        |*gen-ai-new $ %{} :CodeEntry (:doc |) (:schema :ref)
          :code $ quote (defatom *gen-ai-new nil)
          :examples $ []
        |*image-cache $ %{} :CodeEntry (:doc |) (:schema :ref)
          :code $ quote (defatom *image-cache nil)
          :examples $ []
        |*openai $ %{} :CodeEntry (:doc "|called openai sdk, but actually for openrouter") (:schema :ref)
          :code $ quote (defatom *openai nil)
          :examples $ []
        |*viewing-archive-session $ %{} :CodeEntry (:doc |) (:schema :ref)
          :code $ quote (defatom *viewing-archive-session nil)
          :examples $ []
        |append-user-message $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn append-user-message (messages content)
              let
                  messages0 $ if (some? messages) messages ([])
                conj messages0 $ {} (:role :user) (:content content)
          :examples $ []
          :schema $ :: :fn
            {}
              :args $ []
                :: :optional $ :: :list (:: :map :tag :dynamic)
                , :string
              :return $ :: :list (:: :map :tag :dynamic)
        |call-anthropic-msg! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn call-anthropic-msg! (cursor state prompt-text model thinking? d!)
              hint-fn $ {} (:async true)
              if-let
                abort $ deref *abort-control
                do (js/console.warn "|Aborting prev") (.!abort abort)
              d! $ :: :change-model
              let
                  selected $ js-await (get-selected)
                  content $ .replace prompt-text |{{selected}} (or selected "|<未找到内容>")
                  messages0 $ append-user-message (:messages state) content
                  messages1 $ upsert-assistant-message messages0 | nil
                  result $ js-await
                    .!post axios (str |https://sa.chenyong.life/v1/messages)
                      js-object
                        :model $ get-env |claude-model (or model |claude-3-5-sonnet-latest)
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
                  stream $ .-data result
                  reader $ ->
                    .!pipeThrough stream $ new js/TextDecoderStream
                    .!getReader
                  *text $ atom (str "|Claude AI:" &newline &newline)
                js/setTimeout $ fn ()
                  d! $ :: :states-merge cursor state
                    {} (:answer nil) (:thinking nil) (:loading? true) (:done? false) (:messages messages1)
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
                                () $ ;nil println "|no thing to handle in this Loop"
                                (x0 xss)
                                  let
                                      stop? $ = (get x0 |type) |message_stop
                                    wo-js-log x0
                                    if stop?
                                      d! $ :: :states-merge cursor state
                                        {} (:answer @*text) (:loading? false) (:done? true)
                                          :messages $ upsert-assistant-message messages1 @*text nil
                                      let
                                          content $ get-in x0 ([] |delta |text)
                                        if (nil? content)
                                          do
                                            ;nil d! $ :: :states cursor
                                              -> state
                                                assoc :answer $ str @*text &newline "|[STOPPED: " (.-finishReason candidate0) |]
                                                assoc :loading? false
                                                assoc :done? true
                                            println "|content is nil"
                                            recur xss
                                          let () (swap! *text str content)
                                            d! $ :: :states-merge cursor state
                                              {} (:answer @*text) (:loading? false) (:done? false)
                                                :messages $ upsert-assistant-message messages1 @*text nil
                                            recur xss
                        recur
          :examples $ []
          :schema $ :: :fn
            {} (:return :dynamic)
              :args $ [] :list (:: :map :tag :dynamic) :string :string :bool :dynamic
              :features $ #{} :js-ffi
        |call-flash-imagen-msg! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn call-flash-imagen-msg! (variant cursor state prompt-text d!)
              hint-fn $ {} (:async true)
              if (nil? @*gen-ai-new)
                let
                    mod $ js-await (js/import |@google/genai)
                    GoogleGenAI $ .-GoogleGenAI mod
                  reset! *gen-ai-new $ new GoogleGenAI
                    js-object $ :apiKey (get-gemini-key!)
              if-let
                target $ js/document.querySelector |.show-image
                .!setAttribute target |src |
              if-let
                abort $ deref *abort-control
                do (js/console.warn "|Aborting prev") (.!abort abort)
              clear-image-cache!
              d! $ :: :states cursor
                -> state (assoc :answer nil) (assoc :loading? true)
              let
                  selected $ js-await (get-selected)
                  gen-ai @*gen-ai-new
                  content $ .!replace prompt-text |{{selected}} (or selected "|<未找到选中内容>")
                  abort-signal $ let
                      abort $ new js/AbortController
                    reset! *abort-control abort
                    .-signal abort
                  sdk-result $ js-await
                    .!generateContent (.-models gen-ai)
                      js-object (:model |gemini-2.5-flash-image) (:contents content)
                        :config $ js-object (:abortSignal abort-signal)
                          :httpOptions $ js-object (:baseUrl |https://ja.chenyong.life)
                          :responseModalities $ js-array |TEXT |IMAGE
                  parts $ -> sdk-result .-candidates .-0 .-content .-parts
                  *text $ atom |
                js-await $ .!forEach parts
                  fn (? chunk _a _b)
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
                              target $ js/document.querySelector |.show-image
                            -> target $ .!setAttribute |src url
                            reset! *image-cache url
                            do (swap! *text str "|(image ready)")
                              d! $ :: :states cursor
                                -> state (assoc :answer @*text) (assoc :loading? false) (assoc :done? false)
                    d! $ :: :states cursor
                      -> state (assoc :answer @*text) (assoc :loading? false) (assoc :done? false)
                d! $ :: :states cursor
                  -> state (assoc :answer @*text) (assoc :loading? false) (assoc :done? true)
          :examples $ []
          :schema $ :: :fn
            {} (:return :dynamic)
              :args $ [] :tag :list (:: :map :tag :dynamic) :string :dynamic
              :features $ #{} :js-ffi
        |call-genai-msg! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn call-genai-msg! (variant cursor state prompt-text search? think? d! *text *thinking-text)
              hint-fn $ {} (:async true)
              if (nil? @*gen-ai-new)
                let
                    mod $ js-await (js/import |@google/genai)
                    GoogleGenAI $ .-GoogleGenAI mod
                  reset! *gen-ai-new $ new GoogleGenAI
                    js-object $ :apiKey (get-gemini-key!)
              if-let
                abort $ deref *abort-control
                do (js/console.warn "|Aborting prev") (.!abort abort)
              let
                  selected $ if (.includes? prompt-text |{{selected}})
                    js-await $ get-selected
                  gen-ai @*gen-ai-new
                  model $ pick-model variant
                  content $ .!replace prompt-text |{{selected}} (or selected "|<未找到选中内容>")
                  json? $ or (.!includes prompt-text |{{json}}) (.!includes prompt-text |{{JSON}})
                  pro? $ .!includes model |pro
                  has-url? $ or (.!includes prompt-text |http://) (.!includes prompt-text |https://)
                  messages0 $ or (:messages state) ([])
                  messages1 $ upsert-assistant-message messages0 | nil
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
                    .!generateContentStream (.-models gen-ai)
                      js-object (:model model)
                        :contents $ messages->gemini messages0
                        :config $ js-object
                          :thinkingConfig $ if think?
                            js-object
                              :thinkingBudget $ get-env |think-budget (if pro? 3200 800)
                              :includeThoughts true
                            js-object (:thinkingBudget 0) (:includeThoughts false)
                          :tools $ if
                            > (.-length tools) 0
                            , tools js/undefined
                          :abortSignal abort-signal
                          :httpOptions $ js-object (:baseUrl |https://ja.chenyong.life)
                          :responseMimeType $ if json? |application/json js/undefined
                do
                  js/setTimeout $ fn ()
                    d! $ :: :states-merge cursor state
                      {} (:answer nil) (:thinking nil) (:loading? true) (:done? false) (:messages messages1)
                  js-await $ js-for-await sdk-result
                    fn (? chunk)
                      if (some? chunk)
                        let
                            part $ -> chunk .-candidates .-0 .-content .-parts .-0
                            is-thinking? $ if (some? part) (.-thought part) false
                            text $ or
                              if (some? part) (.-text part) (.-text chunk)
                              -> chunk .-promptFeedback .-blockReason
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
          :schema $ :: :fn
            {} (:return :dynamic)
              :args $ [] :tag :list (:: :map :tag :dynamic) :string :bool :bool :dynamic :ref :ref
              :features $ #{} :js-ffi
        |call-imagen-4-msg! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn call-imagen-4-msg! (variant cursor state prompt-text d!)
              hint-fn $ {} (:async true)
              if (nil? @*gen-ai-new)
                let
                    mod $ js-await (js/import |@google/genai)
                    GoogleGenAI $ .-GoogleGenAI mod
                  reset! *gen-ai-new $ new GoogleGenAI
                    js-object $ :apiKey (get-gemini-key!)
              if-let
                target $ js/document.querySelector |.show-image
                .!removeAttribute target |src
              if-let
                abort $ deref *abort-control
                do (js/console.warn "|Aborting prev") (.!abort abort)
              clear-image-cache!
              d! $ :: :states cursor
                -> state (assoc :answer nil) (assoc :loading? true)
              let
                  selected $ js-await (get-selected)
                  gen-ai @*gen-ai-new
                  abort-signal $ let
                      abort $ new js/AbortController
                    reset! *abort-control abort
                    .-signal abort
                  response $ js-await
                    .!generateImages (.-models gen-ai)
                      js-object (:model |imagen-4.0-generate-001) (:prompt prompt-text)
                        :config $ js-object (:numberOfImages 1) (:includeRaiReason true)
                          :httpOptions $ js-object (:baseUrl |https://ja.chenyong.life)
                          :signal abort-signal
                  *text $ atom |
                if-let
                  image-data $ -> response .-generatedImages .-0 .-image .-imageBytes
                  let
                      image-blob $ base64ToBlob image-data
                      url $ js/URL.createObjectURL image-blob
                      target $ js/document.querySelector |.show-image
                    reset! *image-cache url
                    -> target $ .!setAttribute |src url
                    do (swap! *text str "|(image ready)")
                      d! $ :: :states cursor
                        -> state (assoc :answer @*text) (assoc :loading? false) (assoc :done? false)
                d! $ :: :states cursor
                  -> state (assoc :answer @*text) (assoc :loading? false) (assoc :done? true)
          :examples $ []
          :schema $ :: :fn
            {} (:return :dynamic)
              :args $ [] :tag :list (:: :map :tag :dynamic) :string :dynamic
              :features $ #{} :js-ffi
        |call-openrouter! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn call-openrouter! (cursor state prompt-text variant thinking? d! *text)
              hint-fn $ {} (:async true)
              if (nil? @*openai)
                let
                    mod $ js-await (js/import |openai)
                    OpenAI $ .-default mod
                    deepseek? $ .!includes variant |deepseek
                    base-url $ if deepseek? |https://api.deepseek.com |https://openrouter.ai/api/v1
                    key-fn $ if deepseek? get-deepseek-key! get-openrouter-key!
                  reset! *openai $ new OpenAI
                    js-object (:baseURL base-url)
                      :apiKey $ key-fn
                      :defaultHeaders $ js-object
                      :dangerouslyAllowBrowser true
              if-let
                abort $ deref *abort-control
                do (js/console.warn "|Aborting prev") (.!abort abort)
              let
                  selected $ js-await (get-selected)
                  openai $ let
                      ai @*openai
                    , ai
                  content $ .!replace prompt-text |{{selected}} (or selected "|<未找到选中内容>")
                  json? $ or (.!includes prompt-text |{{json}}) (.!includes prompt-text |{{JSON}})
                  messages0 $ or (:messages state) ([])
                  messages1 $ upsert-assistant-message messages0 | nil
                  sdk-result $ js-await
                    -> openai .-chat .-completions $ .!create
                      js-object (:model variant)
                        :messages $ messages->openai messages0
                        ; :generationConfig $ if json?
                          js-object $ |responseMimeType |application/json
                          , js/undefined
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
                      {} (:answer nil) (:thinking nil) (:loading? true) (:done? false) (:messages messages1)
                  let
                      *thinking-text $ atom |
                    js-await $ js-for-await sdk-result
                      fn (? chunk)
                        if (some? chunk)
                          let
                              choice $ -> chunk .-choices .-0 .-delta
                              reason $ -> choice .-reasoning_content (or |)
                              text $ -> choice .-content (or |)
                            if
                              not $ blank? reason
                              swap! *thinking-text str reason
                            if
                              not $ blank? text
                              swap! *text str text
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
          :schema $ :: :fn
            {} (:return :dynamic)
              :args $ [] :list (:: :map :tag :dynamic) :string :string :bool :dynamic :ref
              :features $ #{} :js-ffi
        |clear-image-cache! $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn clear-image-cache! () $ if-let (url @*image-cache)
              do (js/URL.revokeObjectURL url) (reset! *image-cache nil)
          :examples $ []
        |comp-abort $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn comp-abort (t)
              span
                {} (:role |button)
                  :aria-label $ str |abort- t
                  :class-name $ str-spaced css/font-fancy css/row-middle style-more
                  :style $ {} (:cursor :pointer)
                  :on-click $ fn (e d!)
                    if-let
                      abort $ deref *abort-control
                      do (js/console.warn "|Aborting prev") (.!abort abort)
                <> t
                =< 8 nil
                <> "|✕" style-abort-close
          :examples $ []
        |comp-container $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-container (reel)
              let
                  store $ :store reel
                  sessions $ or (:sessions store) ([])
                  archived-count $ or (:archived-count store) 0
                  current-session-id $ :current-session-id store
                  states $ :states store
                  cursor $ or (:cursor states) ([])
                  state $ or (:data states)
                    {} (:answer nil) (:loading? false) (:done? false)
                      :messages $ []
                  done? $ :done? state
                  messages $ or (:messages state) ([])
                  model $ either (:model state) :gemini
                  is-viewing-history? $ and (some? current-session-id)
                    let
                        current-session $ -> sessions
                          filter $ fn (s)
                            = (:id s) current-session-id
                          , first
                      if (some? current-session) (:is-history? current-session) false
                  last-assistant $ let
                      size $ count messages
                      last-msg $ if (> size 0) (last messages) nil
                    if
                      and (some? last-msg)
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
                        d! cursor $ assoc state :model (nth result 1)
                  reply-plugin $ use-prompt (>> states :reply-prompt)
                    {} (:text |Follow-up) (:placeholder "|Enter your follow-up") (:multiline? true) (:button-text |Send)
                      :validator $ fn (text)
                        if (blank? text) "|Please enter text" nil
                  message-box-state $ either
                    :data $ >> states :message-box
                    {} (:search? false) (:think? false)
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
                                nil? current-session-id
                              d! $ :: :save-session state
                            d! $ :: :load-session cursor state
                              -> sessions
                                filter $ fn (s)
                                  = (:id s) session-id
                                , first $ either ({})
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
                  if (some? @*archived-sessions)
                    if (some? @*viewing-archive-session) (; Render specific read-only archived session)
                      div
                        {} $ :class-name (str-spaced css/expand style-message-area)
                        div
                          {} $ :class-name style-archive-header
                          div $ {}
                            :style $ {} (:font-weight :bold)
                            :inner-text $ str "|Archived: " (:preview @*viewing-archive-session)
                          div
                            {} (:class-name style-archive-close)
                              :on-click $ fn (e d!) (reset! *viewing-archive-session nil)
                            <> "|✕"
                        ; Messages list $ read only
                        div
                          {} (:role |region) (:aria-label |message-list)
                            :class-name $ str-spaced css/column style-message-list
                          list->
                            {} $ :class-name (str-spaced css/column css/gap8)
                            -> (:messages @*viewing-archive-session)
                              map-indexed $ fn (idx msg)
                                [] idx $ let
                                    role $ :role msg
                                    content $ :content msg
                                    thinking $ :thinking msg
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
                                        memof1-call comp-md-block
                                          -> thinking $ either |
                                          {} $ :class-name style-md-content
                                    if (= role :assistant)
                                      if (json-pattern? content)
                                        pre $ {} (:class-name style-code-content) (:inner-text content)
                                        memof1-call comp-md-block
                                          -> content $ either |
                                          {} $ :class-name style-md-content
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
                              :on-click $ fn (e d!) (reset! *archived-sessions nil) (reset! *viewing-archive-session nil)
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
                                -> current-archives .reverse $ map
                                  fn (session)
                                    let
                                        session-id $ :id session
                                        created-at $ :created-at session
                                        preview $ :preview session
                                        date-str $ .!toLocaleString (new js/Date created-at)
                                      [] session-id $ div
                                        {} $ :class-name style-session-item
                                        div
                                          {} (:role |button)
                                            :style $ {} (:flex |1) (:cursor :pointer) (:min-width 0) (:overflow :hidden)
                                            :on-click $ fn (e d!) (reset! *viewing-archive-session session)
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
                                                        not= (:id s) session-id
                                                  reset! *archived-sessions new-archives
                                                  let
                                                      archive-key $ :archive-key site
                                                    js-await $ db-set archive-key (format-cirru-edn new-archives)
                                                    d! $ :: :update-archived-count (count new-archives)
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
                              :on-click $ fn (e d!) (.show sessions-plugin d!)
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
                                [] idx $ let
                                    role $ :role msg
                                    content $ :content msg
                                    thinking $ :thinking msg
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
                                        memof1-call comp-md-block
                                          -> thinking $ either |
                                          {} $ :class-name style-md-content
                                    if (= role :assistant)
                                      if (json-pattern? content)
                                        pre $ {} (:class-name style-code-content) (:inner-text content)
                                        memof1-call comp-md-block
                                          -> content $ either |
                                          {} $ :class-name style-md-content
                                      pre $ {} (:class-name style-message-text) (:inner-text content)
                                    if
                                      and (= role :assistant)
                                        or done? $ not= idx
                                          dec $ count messages
                                      div
                                        {} $ :class-name (str-spaced css/row-middle css/gap8 style-message-actions)
                                        if chrome-extension?
                                          comp-fill $ either content |
                                          , nil
                                        comp-copy $ either content |
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
                                      submit-message! cursor state text (:search? message-box-state) (:think? message-box-state) model d!
                                <> |Reply
                              if (:focus-mode? message-box-state) nil $ a
                                {} (:class-name style-focus-link) (:inner-text |Focus) (:role |button) (:aria-label |focus-composer)
                                  :on-click $ fn (e d!)
                                    let
                                        focused $ .-activeElement js/document
                                      do
                                        if (some? focused) (.!blur focused)
                                        d!
                                          :cursor $ >> states :message-box
                                          assoc message-box-state :focus-mode? true
                            , nil
                          if (:loading? state)
                            div ({}) (memof1-call-by :abort-loading comp-abort |Loading...)
                          div
                            {} $ :class-name css/row-parted
                            div
                              {} $ :class-name (str-spaced css/row-middle css/gap8)
                              if (:done? state) nil $ div
                                {} $ :style
                                  {} (:display :flex) (:justify-content :center) (:align-items :center)
                                memof1-call-by :abort-streaming comp-abort |Streaming...
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
                        fn (text search? think? d!)
                          do
                            when
                              and
                                > (count messages) 0
                                :done? state
                                nil? current-session-id
                              d! $ :: :save-session state
                            d! cursor $ -> state
                              assoc :messages $ []
                              assoc :answer nil
                              assoc :thinking nil
                              assoc :done? false
                            d! $ :: :session :session-id nil
                            submit-message! cursor
                              -> state
                                assoc :messages $ []
                                assoc :answer nil
                                assoc :thinking nil
                                assoc :done? false
                              , text search? think? model d!
                        , model
                  model-plugin.render
                  reply-plugin.render
                  sessions-plugin.render
                  if dev? $ comp-reel (>> states :reel) reel ({})
                  if dev? $ comp-inspect |Store store nil
          :examples $ []
          :schema $ :: :fn
            {} (:return :dynamic)
              :args $ [] (:: :map :tag :dynamic)
              :features $ #{} :js-ffi
        |comp-fill $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defcomp comp-fill (text)
              div
                {} (:class-name style-fill) (:role |button) (:aria-label |fill-extension)
                  :on-click $ fn (e d!)
                    when chrome-extension? $ js/chrome.runtime.sendMessage
                      js-object (:action |fill-text) (:text text)
                comp-i :send 12 :currentColor
          :examples $ []
        |comp-message-box $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defcomp comp-message-box (states picker-el on-submit model)
              let
                  cursor $ :cursor states
                  state $ either (:data states)
                    {} (:content |) (:search? false) (:think? false) (:focus-mode? false)
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
                                  fn () $ -> (js/document.querySelector |#message) (.!focus)
                                  , 0
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
                              str $ :value e
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
                                not $ .!contains class-list |focus-within
                                .!add class-list |focus-within
                              if
                                not $ .!contains box-class |focus-within
                                .!add box-class |focus-within
                          :on-blur $ fn (e d!)
                            let
                                target $ .-target (:event e)
                                box $ .-parentElement (.-parentElement target)
                                class-list $ .-classList target
                                box-class $ .-classList box
                              if (.!contains class-list |focus-within) (.!remove class-list |focus-within)
                              if (.!contains box-class |focus-within) (.!remove box-class |focus-within)
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
                                  -> (js/document.querySelector |#message) (.!focus)
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
                        , nil
          :examples $ []
        |comp-sessions-modal $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-sessions-modal (sessions archived-count on-select on-close on-view-archive)
              let
                  history-items $ foldl sessions 0
                    fn (acc session)
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
                          :on-click $ fn (e d!) (on-close d!) (on-view-archive d!)
                        <> "|View Archive"
                  if (empty? sessions)
                    div
                      {} $ :style
                        {} (:padding |12px)
                          :color $ hsl 0 0 60
                      <> "|No history sessions"
                    list->
                      {} $ :class-name css/column
                      -> sessions (.!reverse)
                        map $ fn (session)
                          let
                              session-id $ :id session
                              created-at $ :created-at session
                              preview $ :preview session
                              date-str $ .!toLocaleString (new js/Date created-at)
                            [] session-id $ div
                              {} $ :class-name style-session-item
                              div
                                {} (:role |button)
                                  :aria-label $ str |session-select: preview
                                  :style $ {} (:flex |1) (:cursor :pointer) (:min-width 0) (:overflow :hidden)
                                  :on-click $ fn (e d!) (on-select session-id d!) (on-close d!)
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
                                  :on-click $ fn (e d!) (-> e :event .!stopPropagation)
                                    d! $ :: :remove-session session-id
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
                            :on-click $ fn (e d!) (tab-echo! sessions :edn)
                          a $ {} (:class-name style-clear) (:inner-text |Download) (:role |button) (:aria-label |sessions-download)
                            :on-click $ fn (e d!) (download-sessions! sessions)
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
                          span $ {}
                      div $ {}
                        :style $ {} (:height 200)
                    , nil
          :examples $ []
          :schema $ :: :fn
            {} (:return :dynamic)
              :args $ []
                :: :list $ :: :map :tag :dynamic
                , :number :dynamic :dynamic :dynamic
              :features $ #{} :js-ffi
        |create-session $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn create-session (messages model)
              let
                  id $ generate-session-id
                  first-msg $ if
                    > (count messages) 0
                    :content $ first messages
                    , "|New chat"
                {} (:id id)
                  :created-at $ js/Date.now
                  :messages messages
                  :model model
                  :preview $ let
                      len $ count first-msg
                      end $ if (< len 100) len 100
                    .!slice first-msg 0 end
                  :is-history? false
          :examples $ []
          :schema $ :: :fn
            {}
              :args $ []
                :: :list $ :: :map :tag :dynamic
                , :tag
              :return $ :: :map :tag :dynamic
        |download-sessions! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn download-sessions! (sessions)
              let
                  content $ format-cirru-edn sessions
                  blob $ new js/Blob (js-array content)
                    js-object $ :type |application/edn;charset=utf-8
                  url $ js/URL.createObjectURL blob
                  link $ js/document.createElement |a
                  filename $ str |sessions- (js/Date.now) |.cirru
                do (.!setAttribute link |href url) (.!setAttribute link |download filename) (.!appendChild js/document.body link) (.!click link) (.!remove link)
                  js/setTimeout
                    fn () $ js/URL.revokeObjectURL url
                    , 0
          :examples $ []
          :schema $ :: :fn
            {} (:return :dynamic)
              :args $ []
                :: :list $ :: :map :tag :dynamic
              :features $ #{} :js-ffi
        |effect-focus $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defeffect effect-focus () (action el at?)
              when (= action :mount)
                js/setTimeout $ fn ()
                  .!select $ .!querySelector el |textarea
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
                  js/console.warn "|Droping some unexpected lines:" $ .!slice lines 1
                .-0 lines
          :examples $ []
          :schema $ :: :fn
            {} (:return :string)
              :args $ [] :string
        |generate-session-id $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn generate-session-id () $ str (js/Date.now)
          :examples $ []
          :schema $ :: :fn
            {} (:return :string)
              :args $ []
        |get-anthropic-key! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn get-anthropic-key! () $ let
                key $ js/localStorage.getItem |claude-key
              if (blank? key)
                let
                    v $ js/prompt "|Required claude-key in localStorage"
                  if (blank? v)
                    raise $ new js/Error "|key is empty"
                  js/localStorage.setItem |claude-key v
                  , v
                , key
          :examples $ []
          :schema $ :: :fn
            {} (:return :dynamic)
              :args $ []
              :features $ #{} :js-ffi
        |get-deepinfra-key! $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn get-deepinfra-key! () $ let
                key $ js/localStorage.getItem |deepinfra-key
              if (blank? key)
                let
                    v $ js/prompt "|Required deepinfra-key in localStorage"
                  if (blank? v)
                    raise $ new js/Error "|key is empty"
                  js/localStorage.setItem |deepinfra-key v
                  , v
                , key
          :examples $ []
        |get-deepseek-key! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn get-deepseek-key! () $ let
                key $ js/localStorage.getItem |deepseek-key
              if (blank? key)
                let
                    v $ js/prompt "|Required deepseek-key in localStorage"
                  if (blank? v)
                    raise $ new js/Error "|key is empty"
                  js/localStorage.setItem |deepseek-key v
                  js/chrome.storage.local.set $ js-object (:deepseekKey v)
                  , v
                , key
          :examples $ []
          :schema $ :: :fn
            {} (:return :dynamic)
              :args $ []
              :features $ #{} :js-ffi
        |get-gemini-key! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn get-gemini-key! () $ let
                key $ js/localStorage.getItem |gemini-key
              if (blank? key)
                let
                    v $ js/prompt "|Required gemini-key in localStorage"
                  if (blank? v)
                    raise $ new js/Error "|key is empty"
                  js/localStorage.setItem |gemini-key v
                  js/chrome.storage.local.set $ js-object (:geminiKey v)
                  , v
                , key
          :examples $ []
          :schema $ :: :fn
            {} (:return :dynamic)
              :args $ []
              :features $ #{} :js-ffi
        |get-openrouter-key! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn get-openrouter-key! () $ let
                key $ js/localStorage.getItem |openrouter-key
              if (blank? key)
                let
                    v $ js/prompt "|Required openrouter-key in localStorage"
                  if (blank? v)
                    raise $ new js/Error "|key is empty"
                  js/localStorage.setItem |openrouter-key v
                  , v
                , key
          :examples $ []
          :schema $ :: :fn
            {} (:return :dynamic)
              :args $ []
              :features $ #{} :js-ffi
        |json-pattern? $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn json-pattern? (text)
              or (.!startsWith text |{) (.!startsWith text |[)
          :examples $ []
          :schema $ :: :fn
            {} (:return :bool)
              :args $ [] :string
        |messages->anthropic $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn messages->anthropic (messages)
              to-js-data $ map (or messages [])
                fn (m)
                  {}
                    :role $ if
                      = :assistant $ :role m
                      , |assistant |user
                    :content $ :content m
          :examples $ []
          :schema $ :: :fn
            {} (:return :dynamic)
              :args $ []
                :: :optional $ :: :list (:: :map :tag :dynamic)
              :features $ #{} :js-ffi
        |messages->gemini $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn messages->gemini (messages)
              let
                  messages0 $ if (some? messages) messages ([])
                to-js-data $ map messages0
                  fn (m)
                    {}
                      :role $ if
                        = :assistant $ :role m
                        , |model |user
                      :parts $ []
                        {} $ :text (:content m)
          :examples $ []
          :schema $ :: :fn
            {}
              :args $ []
                :: :list $ :: :map :tag :dynamic
              :features $ #{} :js-ffi
              :return $ :: :map :tag :dynamic
        |messages->openai $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn messages->openai (messages)
              let
                  messages0 $ if (some? messages) messages ([])
                to-js-data $ map messages0
                  fn (m)
                    {}
                      :role $ if
                        = :assistant $ :role m
                        , |assistant |user
                      :content $ :content m
          :examples $ []
          :schema $ :: :fn
            {} (:return :dynamic)
              :args $ []
                :: :optional $ :: :list (:: :map :tag :dynamic)
              :features $ #{} :js-ffi
        |models-menu $ %{} :CodeEntry (:doc |) (:schema :list)
          :code $ quote
            def models-menu $ [] (:: :item :gemini-flash "|Gemini Flash 3") (:: :item :gemini-3.5-flash "|Gemini Flash 3.5") (:: :item :gemini-pro "|Gemini Pro 3.1") (:: :item :gemini-3.1-flash-lite-preview "|Gemini Flash Lite 3.1") (:: :item :flash-imagen "|Flash Imagen") (:: :item :imagen-4 "|Imagen 4") (:: :item :gemma "|Gemma 3 27b") (:: :item :openrouter/anthropic/claude-sonnet-4.5 "|Openrouter Claude Sonnet 4.5") (:: :item :openrouter/anthropic/claude-opus-4 "|Openrouter Claude Opus 4") (:: :item :openrouter/google/gemini-2.5-pro-preview "|Openrouter Google Gemini 2.5 pro preview") (:: :item :openrouter/google/gemini-2.5-flash-preview-05-20 "|Openrouter Google Gemini 2.5 flash preview") (:: :item :openrouter/openai/gpt-5 "|Openrouter GPT 5") (:: :item :openrouter/deepseek/deepseek-chat-v3.1 "|Openrouter deepseek-chat-v3.1") (:: :item :deepseek-v4-pro "|DeepSeek V4 Pro") (:: :item :deepseek-v4-flash "|DeepSeek V4 Flash") (; :: :item :claude-4.5 "|Claude 4.5")
          :examples $ []
        |on-fill $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn on-fill (cursor state on-submit)
              %{} respo.schema/RespoListener (:name :on-fill)
                :handler $ fn (event dispatch!)
                  tag-match event $
                    :fill-text info
                    let
                        submit? $ either (:submit? info) true
                      do
                        dispatch! $ :: :states cursor
                          assoc state :content $ :text info
                        if submit?
                          on-submit (:text info) (:search? state) (:think? state) dispatch!
                          , nil
          :examples $ []
        |pattern-spaced-code $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def pattern-spaced-code $ noted "|temp fix of nested code block" (&raw-code "|/\\n\\s+```/g")
          :examples $ []
        |pick-model $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn pick-model (variant)
              case-default variant |gemini-3-flash-preview (:gemini-3.5-flash |gemini-3.5-flash) (:gemini-3.1-flash-lite-preview |gemini-3.1-flash-lite-preview) (:gemini-pro |gemini-3.1-pro-preview) (:gemma |gemma-3-27b-it)
          :examples $ []
          :schema $ :: :fn
            {} (:return :string)
              :args $ [] :tag
        |save-current-session $ %{} :CodeEntry (:doc |)
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
          :schema $ :: :fn
            {}
              :args $ [] (:: :map :tag :dynamic) (:: :map :tag :dynamic)
              :return $ :: :map :tag :dynamic
        |style-a-toggler $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defstyle style-a-toggler $ {}
              |& $ {} (:cursor :pointer) (:background-color :white) (:color :black)
              "|.focus-within &" $ {} (:color :black)
          :examples $ []
        |style-abort-close $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defstyle style-abort-close $ {}
              |& $ {} (:vertical-align :middle) (:font-size 10)
          :examples $ []
        |style-app-global $ %{} :CodeEntry (:doc |) (:schema :dynamic)
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
        |style-archive-close $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defstyle style-archive-close $ {}
              |& $ {} (:cursor :pointer) (:font-size 18)
                :color $ hsl 0 0 50
                :transition-duration |200ms
              |&:hover $ {}
                :color $ hsl 0 0 20
          :examples $ []
        |style-archive-header $ %{} :CodeEntry (:doc |) (:schema :dynamic)
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
        |style-archive-row $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defstyle style-archive-row $ {}
              |& $ {} (:padding |12px)
                :border-bottom $ str "|1px solid " (hsl 0 0 90)
                :display :flex
                :justify-content :space-between
                :align-items :center
          :examples $ []
        |style-checkbox $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defstyle style-checkbox $ {}
              |& $ {} (:cursor :pointer) (:user-select :none) (:font-size 12) (:line-height |28px) (:vertical-align :middle)
          :examples $ []
        |style-clear $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defstyle style-clear $ {}
              |& $ {} (:opacity 0.4) (:padding "|4px 8px") (:display :inline-block) (:height |24px)
          :examples $ []
        |style-code-content $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defstyle style-code-content $ {}
              |& $ {} (:line-height |1.5) (:font-size 13)
          :examples $ []
        |style-delete-button $ %{} :CodeEntry (:doc |) (:schema :dynamic)
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
        |style-fill $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defstyle style-fill $ {}
              |& $ {} (:cursor :pointer) (:user-select :none) (:display :inline-flex) (:align-items :center) (:justify-content :center) (:transition-duration |200ms)
                :color $ hsl 0 0 80
                :margin "|0 4px 0 8px"
              |&:hover $ {}
                :color $ hsl 0 0 40
                :transform "|scale(1.06)"
          :examples $ []
        |style-focus-box $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defstyle style-focus-box $ {}
              |& $ {} (:width |100%) (:border-radius 12) (:min-height 40) (:max-height 40) (:padding "|9px 12px") (:cursor :text) (:overflow :hidden) (:white-space :pre) (:text-overflow :ellipsis) (:background-color :transparent)
          :examples $ []
        |style-focus-link $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defstyle style-focus-link $ {}
              |& $ {} (:cursor :pointer) (:font-size 13)
                :color $ hsl 200 80 40
                :text-decoration :none
                :padding "|4px 0"
              |&:hover $ {} (:text-decoration :underline)
          :examples $ []
        |style-gap12 $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defstyle style-gap12 $ {}
              |& $ {} (:gap 12)
          :examples $ []
        |style-history-button $ %{} :CodeEntry (:doc |) (:schema :dynamic)
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
        |style-history-count $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defstyle style-history-count $ {}
              |& $ {}
                :color $ hsl 200 80 60
                :font-size |12px
                :display :inline-block
          :examples $ []
        |style-image $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defstyle style-image $ {}
              |& $ {} (:max-width |100%) (:align-self :flex-start) (:border-radius |6px)
                :border $ str "|1px solid " (hsl 0 0 90)
          :examples $ []
        |style-md-content $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defstyle style-md-content $ {}
              "|& .md-p" $ {} (:margin "|16px 0") (:line-height |1.6)
          :examples $ []
        |style-message-actions $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defstyle style-message-actions $ {}
              |& $ {} (:margin-top 6) (:justify-content :flex-end) (:width |100%)
          :examples $ []
        |style-message-area $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defstyle style-message-area $ {}
              |& $ {} (:flex 2) (:overflow :scroll)
          :examples $ []
        |style-message-assistant $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defstyle style-message-assistant $ {}
              |& $ {} (:align-self :flex-start)
          :examples $ []
        |style-message-box $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defstyle style-message-box $ {}
              |& $ {} (:width |100%) (:max-width 1200) (:right |50%) (:padding |8px) (:margin :auto) (:transition-duration |300ms) (; :transform "|translate(50%,0)") (:transition-property |height)
              |&:focus-within $ {} (:opacity 1) (; :transform "|translate(50%,0)")
          :examples $ []
        |style-message-box-panel $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defstyle style-message-box-panel $ {}
              |& $ {} (:position :absolute) (:bottom 0) (:opacity 1) (:width |100%)
                :background-color $ hsl 0 0 100 0.7
                :border-top $ str "|1px solid " (hsl 0 0 80 0.6)
              |&.focus-within $ {}
                :background-color $ hsl 0 0 100 0.9
                :box-shadow $ str "|0 0px 8px " (hsl 0 0 0 0.3)
          :examples $ []
        |style-message-item $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defstyle style-message-item $ {}
              |& $ {} (:line-height |1.6)
          :examples $ []
        |style-message-list $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defstyle style-message-list $ {}
              |& $ {} (:flex 2) (:padding "|40px 16px 20vh 16px") (:width |100%) (:max-width 1200) (:margin :auto) (:position :relative)
          :examples $ []
        |style-message-role $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defstyle style-message-role $ {}
              |& $ {} (:font-size 12)
                :color $ hsl 0 0 50
                :margin-bottom 6
                :padding-right |16px
          :examples $ []
        |style-message-text $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defstyle style-message-text $ {}
              |& $ {} (:white-space :pre-wrap) (:line-height |1.6) (:margin 0) (:padding-right |16px)
          :examples $ []
        |style-message-user $ %{} :CodeEntry (:doc |) (:schema :dynamic)
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
        |style-more $ %{} :CodeEntry (:doc |) (:schema :dynamic)
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
        |style-reply-actions $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defstyle style-reply-actions $ {}
              |& $ {} (:margin-top 6) (:justify-content :flex-start) (:width |100%)
          :examples $ []
        |style-reply-button $ %{} :CodeEntry (:doc |) (:schema :dynamic)
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
        |style-session-item $ %{} :CodeEntry (:doc |) (:schema :dynamic)
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
        |style-sessions-list $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defstyle style-sessions-list $ {}
              |& $ {} (:flex |1) (:overflow-y :auto) (:min-width |300px)
          :examples $ []
        |style-submit $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defstyle style-submit $ {}
              |& $ {}
          :examples $ []
        |style-textbox $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defstyle style-textbox $ {}
              |& $ {} (:border-radius 12) (:height "|max(100px,15vh)") (:width |100%) (:transition-duration |320ms) (:border :none) (:background-color :transparent)
              |&.focus-within $ {} (:height "|max(240px,32vh)") (:border :none) (:box-shadow :none)
          :examples $ []
        |style-textbox-compact $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defstyle style-textbox-compact $ {}
              |& $ {} (:height 40) (:min-height 40) (:max-height 40) (:overflow :hidden)
              |&.focus-within $ {} (:height "|max(240px,32vh)") (:min-height |unset) (:max-height |unset)
          :examples $ []
        |style-thinking $ %{} :CodeEntry (:doc |) (:schema :dynamic)
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
        |submit-message! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn submit-message! (cursor state prompt-text search? think? model d!)
              hint-fn $ {} (:async true)
              let
                  state1 $ assoc state :messages
                    append-user-message (:messages state) prompt-text
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
                    :openrouter/anthropic/claude-opus-4 $ js-await (call-openrouter! cursor state1 prompt-text |anthropic/claude-opus-4 true d! *text)
                    :openrouter/anthropic/claude-3.7-sonnet:thinking $ js-await (call-openrouter! cursor state1 prompt-text |anthropic/claude-3.7-sonnet:thinking true d! *text)
                    :openrouter/google/gemini-2.5-pro-preview $ js-await (call-openrouter! cursor state1 prompt-text |google/gemini-2.5-pro-preview true d! *text)
                    :openrouter/google/gemini-2.5-flash-preview-05-20 $ js-await (call-openrouter! cursor state1 prompt-text |google/gemini-2.5-flash-preview-05-20 true d! *text)
                    :openrouter/openai/gpt-5 $ js-await (call-openrouter! cursor state1 prompt-text |openai/gpt-5 true d! *text)
                    :openrouter/deepseek/deepseek-chat-v3.1 $ js-await (call-openrouter! cursor state1 prompt-text |deepseek/deepseek-chat-v3.1 true d! *text)
                    :deepseek-v4-pro $ js-await (call-openrouter! cursor state1 prompt-text |deepseek-v4-pro true d! *text)
                    :deepseek-v4-flash $ js-await (call-openrouter! cursor state1 prompt-text |deepseek-v4-flash true d! *text)
                  fn (e)
                    let
                        err-text $ str "|Failed to load: " e
                      d! cursor $ -> state (assoc :answer err-text) (assoc :loading? false) (assoc :done? true)
                        assoc :messages $ upsert-assistant-message (:messages state) err-text nil
          :examples $ []
          :schema $ :: :fn
            {} (:return :dynamic)
              :args $ [] :list (:: :map :tag :dynamic) :dynamic :bool :bool :tag :dynamic
              :features $ #{} :js-ffi
        |upsert-assistant-message $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn upsert-assistant-message (messages content thinking)
              let
                  messages0 $ if (some? messages) messages ([])
                  size $ count messages0
                  last-msg $ if (> size 0) (last messages0) nil
                if
                  and (some? last-msg)
                    = :assistant $ :role last-msg
                  assoc messages0 (dec size)
                    -> last-msg (assoc :content content) (assoc :thinking thinking)
                  conj messages0 $ {} (:role :assistant) (:content content) (:thinking thinking)
          :examples $ []
          :schema $ :: :fn
            {}
              :args $ []
                :: :optional $ :: :list (:: :map :tag :dynamic)
                :: :optional :string
                :: :optional :string
              :return $ :: :list (:: :map :tag :dynamic)
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns app.comp.container $ :require (respo-ui.css :as css)
            respo.css :refer $ defstyle
            respo.util.format :refer $ hsl
            respo.core :refer $ defcomp defeffect <> >> list-> div button textarea span input a pre img
            respo.comp.space :refer $ =<
            respo.comp.inspect :refer $ comp-inspect
            reel.comp.reel :refer $ comp-reel
            app.config :refer $ dev? chrome-extension? site
            |axios :default axios
            respo-md.comp.md :refer $ comp-md-block style-code-block
            respo-ui.comp :refer $ comp-copy style-close
            |../extension/get-selected :refer $ get-selected
            |../lib/db :refer $ db-get db-set
            memof.once :refer $ memof1-call memof1-call-by
            |../lib/image :refer $ base64ToBlob
            feather.core :refer $ comp-i
            respo-alerts.core :refer $ [] use-modal-menu use-prompt use-drawer
            respo-ui.util :refer $ tab-echo!
    |app.config $ %{} :FileEntry
      :defs $ {}
        |chrome-extension? $ %{} :CodeEntry (:doc |) (:schema :bool)
          :code $ quote
            def chrome-extension? $ and (some? js/window.chrome) (some? js/window.chrome.runtime) (some? js/window.chrome.runtime.id)
          :examples $ []
        |dev? $ %{} :CodeEntry (:doc |) (:schema :bool)
          :code $ quote
            def dev? $ = |dev (get-env |mode |release)
          :examples $ []
        |site $ %{} :CodeEntry (:doc |) (:schema :map)
          :code $ quote
            def site $ {} (:storage-key |msg-buffer) (:archive-key |msg-buffer-archive)
          :examples $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote (ns app.config)
    |app.main $ %{} :FileEntry
      :defs $ {}
        |*reel $ %{} :CodeEntry (:doc |) (:schema :ref)
          :code $ quote
            defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
          :examples $ []
        |connect-to-worker! $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn connect-to-worker! () $ if
              and (some? js/window.chrome) (some? js/window.chrome.runtime) (some? js/window.chrome.runtime.connect)
              do (println "|Connecting to worker...")
                let
                    port $ js/chrome.runtime.connect
                      js-object $ :name |mySidepanel
                  .!addListener (.-onDisconnect port)
                    fn (event)
                      do (println "|Worker disconnected, retrying in 500ms...") (js/setTimeout connect-to-worker! 500)
              , nil
          :examples $ []
        |dispatch! $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn dispatch! (op)
              when
                and config/dev? $ not= op :states
                js/console.log |Dispatch: op
              reset! *reel $ reel-updater updater @*reel op
          :examples $ []
        |hydrate-storage-later! $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn hydrate-storage-later! () $ js/setTimeout
              fn () $ let
                  raw $ js/localStorage.getItem (:storage-key config/site)
                when (some? raw)
                  let
                      t_start $ .!now js/Date
                    dispatch! $ :: :hydrate-storage (parse-cirru-edn raw)
                    println "|Hydrated in"
                      - (.!now js/Date) t_start
                      , |ms
          :examples $ []
        |listen-extension! $ %{} :CodeEntry (:doc |) (:schema :dynamic)
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
                      submit? $ either (.-submit? message) true
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
        |main! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn main! () $ let
                t0 $ .!now js/Date
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
                    t1 $ .!now js/Date
                  println "|App started at" t1 |cost (- t1 t0) |ms
          :examples $ []
          :schema $ :: :fn
            {} (:return :dynamic)
              :args $ []
              :features $ #{} :js-ffi
        |mount-target $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def mount-target $ js/document.querySelector |.app
          :examples $ []
        |persist-storage! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn persist-storage! ()
              println "|Saved at" $ .!toISOString (new js/Date)
              js/localStorage.setItem (:storage-key config/site)
                format-cirru-edn $ :store @*reel
          :examples $ []
          :schema $ :: :fn
            {} (:return :dynamic)
              :args $ []
              :features $ #{} :js-ffi
        |reload! $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn reload! () $ if (nil? build-errors)
              do (remove-watch *reel :changes) (remove-watch *archived-sessions :changes) (remove-watch *viewing-archive-session :changes) (clear-cache!)
                add-watch *reel :changes $ fn (reel prev) (render-app!)
                add-watch *archived-sessions :changes $ fn (s prev) (render-app!)
                add-watch *viewing-archive-session :changes $ fn (s prev) (render-app!)
                reset! *reel $ refresh-reel @*reel schema/store updater
                hud! |ok~ |Ok
              hud! |error build-errors
          :examples $ []
        |render-app! $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn render-app! ()
              let
                  t_start $ .!now js/Date
                println "|Rendering app..."
                render! mount-target (comp-container @*reel) dispatch!
                println "|Rendered in"
                  - (.!now js/Date) t_start
                  , |ms
              render! mount-target (comp-container @*reel) dispatch!
          :examples $ []
        |sync-gemini-key! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn sync-gemini-key! () $ when
              and (some? js/window.chrome) (some? js/window.chrome.runtime)
              let
                  gemini-key $ js/localStorage.getItem |gemini-key
                when (some? gemini-key)
                  js/chrome.runtime.sendMessage $ js-object (:action |sync-gemini-key) (:key gemini-key)
                  js/chrome.storage.local.set $ js-object (:geminiKey gemini-key)
              let
                  deepseek-key $ js/localStorage.getItem |deepseek-key
                when (some? deepseek-key)
                  js/chrome.runtime.sendMessage $ js-object (:action |sync-deepseek-key) (:key deepseek-key)
                  js/chrome.storage.local.set $ js-object (:deepseekKey deepseek-key)
          :examples $ []
          :schema $ :: :fn
            {} (:return :dynamic)
              :args $ []
              :features $ #{} :js-ffi
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns app.main $ :require
            respo.core :refer $ render! clear-cache!
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
    |app.schema $ %{} :FileEntry
      :defs $ {}
        |store $ %{} :CodeEntry (:doc |) (:schema :map)
          :code $ quote
            def store $ {}
              :states $ {}
                :cursor $ []
              :sessions $ []
              :current-session-id nil
              :model nil
              :archived-count 0
          :examples $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote (ns app.schema)
    |app.updater $ %{} :FileEntry
      :defs $ {}
        |updater $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn updater (store op op-id op-time)
              tag-match op
                (:states cursor s) (update-states store cursor s)
                (:states-merge cursor s changes)
                  let
                      store1 $ update-states-merge store cursor s changes
                    , store1
                (:hydrate-storage data) data
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
                      store1 $ update-states store cursor
                        -> state
                          assoc :messages $ :messages session
                          assoc :done? true
                    assoc store1 :current-session-id $ :id session
                (:remove-session id)
                  assoc store :sessions $ filter
                    or (:sessions store) ([])
                    fn (s)
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
          :schema $ :: :fn
            {} (:return :map)
              :args $ [] :map :list :string :number
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns app.updater $ :require
            respo.cursor :refer $ update-states update-states-merge
            app.comp.container :refer $ save-current-session generate-session-id
