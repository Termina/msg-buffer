
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

### 正式 Calcit 0.30.1 迁移（待本轮验收）

本分支将 CLI 与 `@calcit/procs` 配对固定为正式 `0.30.1`，升级到 Alerts 0.10.57、Reel 0.6.41、
Markdown 0.4.59、UI 0.8.0、Respo 0.16.124、JS-FFI 0.2.5，全部使用精确正式 tag。
升级后重启开发服务并刷新页面，不混用旧 runtime；不改变存档、模型服务地址或网页/扩展资源分离合同。

本轮迁移 41 处源码及原测试中的 2 处 Option helper 调用，改为 `.fold`、`.unwrap-or`、`.unwrap`。
保持默认值、惰性分支回调、8 项原测试、1 个示例及两处 `hud!` 不变，不增加强转或放宽质量基线。
正式 Linux CI 与真实页面验收以本轮 PR 的实际结果为准；下面是此前 alpha 候选的迁移记录，不能替代正式版验收。

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
