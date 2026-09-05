# Fix CI toolchain verification order / 修复 CI 工具链验证顺序

## English

- PR #40 Actions run 33959853973 failed because `caps verify --toolchain` ran before the Yarn dependency installation and could not resolve the pinned `@calcit/procs` package.
- Move immutable Yarn installation before toolchain verification so the verifier checks the installed 0.13.77 package rather than relying on a pre-existing local `node_modules` directory.
- Keep strict Caps dependency resolution first and leave all subsequent Snapshot, type, quality, test, build, and extension-package gates unchanged.

## 中文

- PR #40 的 Actions run 33959853973 失败，因为 `caps verify --toolchain` 在 Yarn 安装之前运行，无法解析已固定的 `@calcit/procs` 包。
- 将不可变 Yarn 安装移到工具链验证之前，使验证器检查实际安装的 0.13.77 包，而不是依赖本地预先存在的 `node_modules`。
- strict Caps 依赖解析仍保持第一步，后续 Snapshot、类型、质量、测试、构建和扩展包门禁均不变。
