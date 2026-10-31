# Message Buffer

基于 Respo 的模型消息页面，同时提供使用本地资源的 Chrome 扩展构建。

Demo：<https://r.tiye.me/Termina/msg-buffer/>。Gemini 文档：<https://ai.google.dev/gemini-api/docs/get-started/tutorial?lang=rest#text-and-image_input>。
原配置包括 localStorage 的 `gemini-key` 和 URL 的 `?model=YOUR_MODEL`，默认模型保持 `gemini-3.5-flash-lite`。

## 对使用者的影响

配对升级到正式 Calcit / `@calcit/procs` **0.32.1**，需重新生成网页与扩展资源并完整刷新。
模型 SDK、名称、请求地址、密钥和存档协议保持；不调用模型服务、不使用真实密钥或安装扩展。
两处实际 `hud!` 继续显示热更新状态与错误，不改为异常抛出。

依赖使用已发布的 Respo 0.17.1、UI 0.9.0、JS FFI 0.2.9，以及精确 Reel 0.7.0-alpha.5、Alerts 0.11.0-alpha.4、Markdown 0.5.0-alpha.5。
这些 alpha 依赖已标明，不将尚未发布的 0.5.0 等正式版本当作可安装依赖；UI 升级不保证逐像素相同。

## 迁移合同

官方工具转换 66 处类型写法，138 个定义 schema 不变；原测试四处类型表达式同步转换，业务断言保留。
原八项测试、质量基线、完整 strict、动态方法报告和零弃用调用检查继续保留，不增加伪强转、质量预算或校验脚本。

旧存档中的 Store、ChatSession、ChatMessage、ChatState、MessageBoxState 同名外部 Struct 先转 Map，经过原字段及嵌套值解码后重建。
名称只选择解码器，不证明名义身份；本地真实类型保持快速路径，异名值仍拒绝。原 Map 存档继续兼容。
自动保存监听器仅在恢复成功或确认无存档后注册，恢复异常不覆盖原数据，也不吞掉宿主存储错误。

状态操作使用单个 Enum 派发，保留混合游标及更新顺序；流式更新合并最新状态，非法字段更新明确失败。
Anthropic 流缓存不完整 SSE 行，保留 Unicode/CRLF、异常传播及取消信号；未收到 message_stop 不仅凭 EOF 标记完成。
OpenRouter/DeepSeek 提供方由原调用方指定；切换提供方或密钥时重建客户端，同一配置仍复用，删除密钥不继续使用旧缓存。
SDK 响应、可空 DOM 和 object URL 保留原受检边界及清理行为。上述合同沿用已审阅迁移，不在本轮依赖更新中更改模型调用。

## 开发和验证

使用 Node.js 24、Yarn 4.18.0、Calcit 0.32.1，文件为 `calcit.cirru`、`deps.cirru`。

```sh
caps --strict --ci
yarn install --immutable
caps verify --toolchain
calcit --check-only --all-defs
calcit fix --workflow strict --verify
calcit analyze quality --baseline config/calcit-quality.cirru
calcit test --require-match
yarn build
```

本轮在已发布依赖图上通过 Caps 严格安装 7 个模块、工具链配对、不可变安装、491 个定义、完整 strict、原质量预算、八项测试、零弃用调用、原动态方法报告、扩展包检查及独立网页构建；最终远端结果以 PR CI 为准。
页面交互沿用此前 0.32.0 的隔离合成草稿、搜索切换、模型选择、空历史面板和连续刷新恢复记录。
本轮未重复浏览器交互，不把静态复核称为新页面验收；未新增流式请求、实际扩展运行或坏存档的浏览器验收。

## 网页和扩展部署

`yarn build` 先生成相对路径资源并复制到 `extension/dist`；原 manifest/脚本、CSS、图标及 Axios 懒加载约束继续检查。
网页随后单独重建 `dist`，使用 `https://cos-sh.tiye.me/Termina/msg-buffer/` CDN base。
不把 CDN 构建复制进扩展，不上传扩展包。

同仓库 PR 的网页资源按 `Termina/msg-buffer/pr/<PR>/<run>/<attempt>/` 隔离，fork PR 不上传；扩展构建单独保存为 artifact。
COS Action v1.2.0 使用内置 verify，不增加重复上传检查。生产仅 main push 按原路径 rsync `dist/*`，本 PR 不合并或部署生产。
原 SSH 主机身份检查问题仍由 [#56](https://github.com/Termina/msg-buffer/issues/56) 跟踪，不将本地验收当作生产主机验证。
Actions 使用精确正式 tag；npm 年龄门禁为一小时，无单包豁免。
工作流参考 <https://github.com/calcit-lang/respo-calcit-workflow>。

## License

MIT
