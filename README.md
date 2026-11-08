# Message Buffer

基于 Respo 的模型消息页面，同时提供使用本地资源的 Chrome 扩展构建。

Demo：<https://r.tiye.me/Termina/msg-buffer/>。Gemini 文档：<https://ai.google.dev/gemini-api/docs/get-started/tutorial?lang=rest#text-and-image_input>。
原配置包括 localStorage 的 `gemini-key` 和 URL 的 `?model=YOUR_MODEL`，默认模型保持 `gemini-3.5-flash-lite`。

## 对使用者的影响

本地开发使用正式 Calcit 和 `@calcit/procs` **0.38.0**。升级后请重装依赖，分别重建网页与扩展资源，并刷新。页面 HUD、模型名称、请求配置和存档格式保持原行为。

模块使用已发布的 Respo 0.19.5、UI 0.15.2、JS FFI 0.2.13、Reel 0.10.0、Alerts 0.14.2、Markdown 0.8.2 和 Router 0.12.2。

## 迁移合同

应用和流式回调使用具名 `DispatchOp`，`WidgetState` union 区分聊天状态和输入框状态。Respo 与 Reel 的匿名事件在渲染入口归一化，保留原游标位置。输入框聚焦、失焦和键盘事件使用具名 `RespoEvent`，焦点样式通过 JS FFI 的 DOM 接口更新。

旧存档中的 Store、ChatSession、ChatMessage、ChatState、MessageBoxState 同名外部 Struct 先转 Map，经过原字段及嵌套值解码后重建。
名称只选择解码器，不证明名义身份；本地真实类型保持快速路径，异名值仍拒绝。原 Map 存档继续兼容。
自动保存监听器仅在恢复成功或确认无存档后注册，恢复异常不覆盖原数据，也不吞掉宿主存储错误。

状态操作使用单个 Enum 派发，保留混合游标及更新顺序；流式更新合并最新状态，非法字段更新明确失败。
Anthropic 流缓存不完整 SSE 行，保留 Unicode/CRLF、异常传播及取消信号；未收到 message_stop 不仅凭 EOF 标记完成。
OpenRouter/DeepSeek 提供方由原调用方指定；切换提供方或密钥时重建客户端，同一配置仍复用，删除密钥不继续使用旧缓存。
SDK 响应、可空 DOM 和 object URL 保留原受检边界及清理行为。上述合同沿用已审阅迁移，不在本轮依赖更新中更改模型调用。

## 开发和验证

使用 Node.js 24、Yarn 4.18.0、Calcit 0.38.0，文件为 `calcit.cirru`、`deps.cirru`。

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

全量 504 个定义、完整 strict、原质量基线、八项测试、弃用调用检查和原扩展资源检查通过。隔离 Chrome 验证空内容提醒、草稿、历史面板、模型选择、搜索开关和刷新恢复。验收使用合成数据和本地预览。

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
