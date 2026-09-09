# Optimize extension startup / 优化扩展启动

- Minify production bundles with Vite's Oxc minifier to reduce side-panel parsing work.
- Replace the remote favicon and unused web-app manifest request with the packaged extension icon.
- Replace the `<all_urls>` startup content script with on-demand `chrome.scripting.executeScript` calls authorized by the existing `activeTab` permission.
- Resolve selection failures to `null` so restricted pages cannot leave side-panel initialization waiting on an unsettled Promise.
- Upgrade the project toolchain to Calcit and `@calcit/procs` 0.14.4, add explicit async-boundary type hints, and use the compiler's compatibility mode for the remaining Respo `Dynamic` boundaries so `yarn build` works without a local downgrade.

- 使用 Vite 的 Oxc 压缩生产构建，减少侧边栏启动时的解析工作。
- 使用扩展包内图标替代远程 favicon，并移除未使用的 Web App Manifest 请求。
- 移除在 `<all_urls>` 页面启动时注入的 content script，改由现有 `activeTab` 权限授权，在读取选区及填写文本时按需执行 `chrome.scripting.executeScript`。
- 受限页面无法读取选区时返回 `null`，避免未结束的 Promise 让侧边栏初始化持续等待。
- 将项目工具链升级到 Calcit 与 `@calcit/procs` 0.14.4，为异步边界补充显式类型提示，并对仍由 Respo 使用的 `Dynamic` 边界启用编译器兼容模式，使 `yarn build` 无需本地降级即可通过。
