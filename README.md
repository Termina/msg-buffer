
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

### Calcit 0.30.1 迁移候选（尚未交付）

本分支将 CLI 与 `@calcit/procs` 配对固定为已发布的 `0.30.1-alpha.5`，Calcit 模块改用正式 tag。
0.30.1 正式版的 CLI/npm 配对发布尚未完成，暂不只升级其中一端。

存档格式、模型选择、扩展消息和网页/扩展资源分离的合同不变。DOM 挂载查询改为带明确能力合同的函数，
存档恢复区分具名 Struct 与旧 Map，并检查 Map 的键和值；同步回调明确返回 Unit。
存储读取仍传播宿主异常，不把权限错误静默当作“没有存档”。

Chrome 扩展检测保留可选链语义：普通网页没有 `chrome.runtime` 时返回 false，不要求可选字段实际存在。
挂载后找不到 textarea 时跳过选择，不再解引用空元素；下载仍保留原 EDN MIME、文件名和 object URL 回收。
聊天状态解码保留旧 nil 字段的默认行为；扩展 fill 消息的文本与提交标志则在写入状态前检查类型。

Anthropic 流改为缓存不完整 SSE 行，避免网络拆包时丢失文本，并修正 delta 更新多传 dispatch 参数的问题。
保留 Axios 懒加载、原请求设置、取消信号及异常传播；没有收到 `message_stop` 时不会仅因 EOF 就标记完成。
本地以合成字节流验证 Unicode 拆包、CRLF、末尾未换行及失败传播；不等同于真实模型或生产网络验收。

本地全定义检查、原有七项测试和相对路径资源构建已经通过；完整 strict 的 SDK、DOM 与状态边界审阅
尚未完成，旧质量基线与原门禁没有放宽。未调用外部模型服务，未读取真实密钥，未验证实际浏览器扩展运行，
不能把构建通过视为升级或功能验收完成。本候选不触发合并、部署或发版。

### License

MIT
