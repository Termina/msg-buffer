
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

本次是独立 COS/CDN 配置变更，仍使用原 Calcit 0.25.1。正式 0.28 候选已修复本项目的
DOM、存储与同步回调类型问题，但完整门禁仍被已发布依赖阻断，不能据此声称升级完成。

### License

MIT
