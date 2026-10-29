
Message Buffer for Gemini API
----

> Respo web page based on [calcit-js](https://github.com/calcit-lang/calcit).

Demo https://r.tiye.me/Termina/msg-buffer/ .

Docs https://ai.google.dev/gemini-api/docs/get-started/tutorial?lang=rest#text-and-image_input .

Configurations:

- `gemini-key` in localStorage
- `?model=YOUR_MODEL`, defaults to `gemini-3.5-flash-lite`

### Workflow

https://github.com/calcit-lang/respo-calcit-workflow

### 网页与扩展部署

扩展继续通过原 `yarn build` 构建，`extension/dist` 保持本地相对路径并先执行原扩展验收。
随后单独重建网页 `dist`，使用 `https://cos-sh.tiye.me/Termina/msg-buffer/` CDN base；
不会将扩展资源改为远程地址，也不会把扩展包上传到 COS。

PR 网页预览按 `Termina/msg-buffer/pr/<PR 编号>/<run ID>/<attempt>/` 隔离，
同一 PR 或生产分支串行排队，不取消正在上传的任务。COS Action 固定到正式 v1.2.0，
通过 `public-base-url` 启用内置校验，不增加额外校验脚本。
同仓库 PR 与生产上传需要 `COS_BUCKET`、`COS_SECRET_ID`、`COS_SECRET_KEY`；fork PR 不上传。
服务器继续仅在 main push 部署 `dist/*` 到原路径，本次只更新前端资源配置。

### 0.32.0 迁移候选：使用者影响

CLI 与 `@calcit/procs` 配对正式 **0.32.0**，需重新生成网页和扩展资源并刷新。
Alerts `0.11.0`、Reel `0.7.0`、Markdown `0.5.0`、UI `0.9.0`、Respo `0.17.0`
当前以本地候选图验收，JS-FFI 为正式 `0.2.8`；正式依赖整图与 PR CI 尚待验证，不能据此部署。
网页 CDN 构建与扩展相对资源构建继续分开，模型 SDK、地址和存档协议保持。

官方工具转换 66 处类型写法，138 个定义 schema 不变；原测试中四处类型表达式同步转换，
全部业务断言保留。491 个定义、完整 strict、原质量预算和八项测试、原动态方法报告、
零弃用调用、不可变安装、扩展包验收及独立网页构建通过。实际隔离页面的合成草稿、
搜索切换、模型选择、空历史面板和连续刷新恢复通过，控制台无警告或错误。
本轮没有调用模型服务、输入密钥或安装扩展；流式请求与坏存档路径未新增浏览器验收。
两处 `hud!` 保留，原门禁不放宽。COS/rsync 使用精确正式 action tag，安装包年龄门禁为一小时；
规范格式检查保留官方 format 后的 Git diff，移除同一步内重复的前后哈希比较。
原 SSH 信任配置问题仍由 #56 跟踪，不把本地验收当成生产主机验证。

### 历史：正式 Calcit 0.31.0 迁移

CLI/procs 配对正式 0.31.0。Alerts 0.11.0-alpha.3、Reel 0.7.0-alpha.4、
Markdown 0.5.0-alpha.4、UI 0.9.0-alpha.4、Respo 0.17.0-alpha.4 和传递 Router
0.9.0-alpha.3 仍是明确标记的 alpha，JS-FFI 使用正式 0.2.7；重新安装整张图并生成资源。
模型 SDK、名称、地址、密钥和存档协议不变；扩展资源仍为相对路径，与网页 CDN 构建分开。

Anthropic delta 的嵌套读取按 Result/PathError 区分缺失与形状错误：缺失继续跳过，
错误中间形状抛错。模型已是 String，移除恒真 `or` 的不可达默认值，空字符串仍原样保留。
会话预览截取显式使用 Option 结束位置；session 的 nil 分支移到 Store 更新外层，保留原值。
fill 提交前检查实际回调是函数，非法值明确失败；不伪造函数类型。为入口绑定原 Enum 派发合同。
不改两处真实 `hud!`、原 8 项测试、质量预算或 COS 内置校验，不调用模型服务或安装扩展。
旧存档中的无来源 Struct 不再直接按本地名义类型匹配：Store、ChatSession、ChatMessage、
ChatState、MessageBoxState 的同名数据先转 Map，再经过原字段及嵌套值解码重建；名称仅选择解码器，不证明身份。
本地真实类型继续保留原对象快速路径，异名 Struct 仍拒绝。原往返回归保留全部断言，
只将两处测试中的旧 get-in unwrap 改为显式 Result 分支，8 项测试通过。
同时将输入、搜索、聚焦、模型选择和提交路径中的 10 处旧二参状态派发改为单个
`:: :states cursor value`，避免新版 Respo 单参数派发入口报错；状态值及派发顺序保留。
本轮完整 strict、491 个定义检查、原质量预算、原 8 项测试、immutable 安装及两种构建通过。
隔离页面实测合成草稿、搜索切换、模型选择和连续刷新恢复通过，最终阶段无新增 warning/error。
未调用真实模型、使用密钥或安装扩展；模型流式路径仅有原测试与静态检查证据。
以下历史记录不作为本轮通过证据。

### 此前正式 Calcit 0.30.1 迁移

本轮继续配对正式 CLI / `@calcit/procs` **0.30.1**，将完整 Calcit 模块图同步到
Alerts 0.10.58、Reel 0.6.42、Markdown 0.4.60、UI 0.8.1、Respo 0.16.126、JS-FFI 0.2.6，
均为精确正式 tag。升级后重新生成资源、重启开发服务并完整刷新，不混用旧依赖缓存。
模型 SDK、模型名称/地址、密钥、存档格式及网页/扩展资源分离不变；本轮不调用模型服务或安装扩展。

迁移 17 处已证明为 String/List 的 `count` 到 `.len`，以及一处 List `foldl`、一处 Map `merge`
到同实现的接收者方法。保持求值顺序、集合输入、累加初值、原 8 项测试和 1 个示例。
累加回调补全 Number 返回合同；弹窗入口用单参数 Enum→Unit 薄适配转发原多参数 Respo 派发器，
不把它强转成只接收 Enum 的函数。两个弹窗回调在启动原 effect 后显式返回 Unit；不新增 await 或吞异常。
两处实际 `hud!` 继续在页面显示热更新状态/错误，原工作流、质量基线、npm/lock 和 COS 内置校验不变。
原部署 SSH 主机身份检查的独立问题见 [#56](https://github.com/Termina/msg-buffer/issues/56)，本轮未改生产信任配置。
以下为前轮验收记录，不代表本轮最新 HEAD 已通过。

本分支将 CLI 与 `@calcit/procs` 配对固定为正式 `0.30.1`，升级到 Alerts 0.10.57、Reel 0.6.41、
Markdown 0.4.59、UI 0.8.0、Respo 0.16.124、JS-FFI 0.2.5，全部使用精确正式 tag。
升级后重启开发服务并刷新页面，不混用旧 runtime；不改变存档、模型服务地址或网页/扩展资源分离合同。

本轮迁移 41 处源码及原测试中的 2 处 Option helper 调用，改为 `.fold`、`.unwrap-or`、`.unwrap`。
保持默认值、惰性分支回调、8 项原测试、1 个示例及两处 `hud!` 不变，不增加强转或放宽质量基线。
存档仍异步恢复；自动保存监听器只在恢复成功或确认无存档后注册，恢复失败不覆盖原值。
通过具备 `Fn() -> Unit` 合同的完成回调复用原监听器，不吞异常、不改存档格式，也不转移宿主强转来规避基线。
源码提交 `f355f51` 的正式 Linux CI `39928756920` 通过原完整 strict、8 项测试、扩展包与 COS 内置校验。
同次相对资源 artifact 校验 SHA256 后，在全新 localhost 来源验证草稿、搜索开关、模型选择、空历史面板及刷新恢复；
未发送模型请求、读取真实密钥或安装扩展。坏存档验收仍待限定授权，不把正常恢复当作失败保护的完整证据。

官方 lower-only 生成器在独立非 PR 分支的正式 CI `39929283700` 中收紧原基线：
unsafe 85→11、typeNotFull 65→58、schemaDynamic 46→43、unresolved 71→68，其余不变。
这是移除旧预算余量，不是本轮删除 74 处强转；逐定义同步降低，不在应用 CI 自动重写，也不新增预算。
下面是此前 alpha 候选的迁移记录，不能替代本轮正式版验收。收紧后的最终 CI 仍以最新 PR HEAD 为准。

存档格式、模型选择、扩展消息和网页/扩展资源分离的合同不变。DOM 挂载查询改为带明确能力合同的函数，
存档恢复区分具名 Struct 与旧 Map，并检查 Map 的键和值；同步回调明确返回 Unit。
存储读取仍传播宿主异常，不把权限错误静默当作“没有存档”。

Chrome 扩展检测保留可选链语义：普通网页没有 `chrome.runtime` 时返回 false，不要求可选字段实际存在。
挂载后找不到 textarea 时跳过选择，不再解引用空元素；下载仍保留原 EDN MIME、文件名和 object URL 回收。
聊天状态解码保留旧 nil 字段的默认行为；扩展 fill 消息的文本与提交标志则在写入状态前检查类型。

Anthropic 流改为缓存不完整 SSE 行，避免网络拆包时丢失文本，并修正 delta 更新多传 dispatch 参数的问题。
保留 Axios 懒加载、原请求设置、取消信号及异常传播；没有收到 `message_stop` 时不会仅因 EOF 就标记完成。
本地以合成字节流验证 Unicode 拆包、CRLF、末尾未换行及失败传播；不等同于真实模型或生产网络验收。

GenAI 缓存改用 `Option` 标记未初始化状态，保留懒加载和 SDK 实例复用。流响应的可选字段通过已发布
js-ffi 的 object/primitive guard 读取，保留 SDK 文本 getter 与异常传播，不把响应类复制为普通对象。
搜索与 URL 工具仍由原两个开关决定；不再用不透明 JS 数组的 length 证明其类型。

图片返回时若预览节点已移除，将跳过 DOM 写入；替换图片时回收旧 object URL，缓存改为 `Option<String>`。
图片 delta 更新也修正为单参数 dispatch。Imagen 取消参数按已安装 SDK 改为 `abortSignal`；这仅取消客户端操作，
不保证停止服务端生成或计费。请求地址、模型名及原 base64/Blob MIME 行为保持不变。

OpenRouter 与直连 DeepSeek 现在由菜单调用方明确指定提供方，不再根据模型名包含 deepseek 来猜地址。
切换提供方或更换密钥时会重建对应 SDK 客户端；相同地址和密钥仍复用实例，删除密钥后不会继续用旧缓存发请求。
保留原两处目标地址和模型名，不新增密钥持久化或日志；仅完成合成流验收，未调用真实模型服务。

输入框状态改为校验真实具名 Struct，存档和事件字段在进入具体操作前校验；可空 DOM 节点不再直接调用方法。
空存档列表仍显示原提示，修正其列表项层级。状态游标保留 Respo 支持的 Tag/String/Number 混合路径，
流式更新先读取最新状态再合并，保留未变字段，不让旧回调覆盖新内容；非法字段更新会明确失败。
Reel 的开放回调在应用入口校验后进入具名 Store/updater，热更新保留原流程；不改变存档格式或部署路径。

旧 Map 存档先解析为列表，再复用 session/message normalizer；保存后的 EDN Struct 也重新绑定当前具名类型，
避免历史首次可读、刷新后却不能再更新。挂载容器使用发布库的 Element guard，不要求普通 div 具有输入框字段。
合成浏览器回放已覆盖空/非空存档、详情、历史载入，以及消息、输入和搜索开关的保存/刷新恢复。
normalizer 会复用当前 Struct 定义已构造的值，只为反序列化的旧值递归恢复；不增加常驻缓存。
本机 5,000 条合成历史消息夹具中，Store 规范化中位数约 3.3 ms → 0.004 ms；这不是跨设备性能保证。

本地全定义检查 487/487、完整 strict、原有七项测试及新增一项状态/序列化往返回归（合计 8/8）和相对路径资源构建已经通过，规范化建议为零；
原质量基线与原门禁没有放宽。生成代码已回放混合游标、最新状态合并及错误载荷拒绝；三组 SDK 合成流都经过真实 updater。
扩展包已检查本地相对资源、懒加载与原 manifest/脚本约束，但完整应用交互与独立 CI
仍待验收。未调用外部模型服务，未读取真实密钥，未安装扩展或验证实际 Chrome 运行，
不能把构建通过视为升级或功能验收完成。PR 沿用隔离 COS 预览上传；本候选不触发合并、生产部署或发版。

### License

MIT
