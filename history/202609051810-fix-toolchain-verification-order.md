# Fix CI toolchain verification order / 修复 CI 工具链验证顺序

## English

- PR #40 Actions run 33959853973 failed because `caps verify --toolchain` ran before the Yarn dependency installation and could not resolve the pinned `@calcit/procs` package.
- Move immutable Yarn installation before toolchain verification so the verifier checks the installed 0.13.77 package rather than relying on a pre-existing local `node_modules` directory.
- Keep strict Caps dependency resolution first and leave all subsequent Snapshot, type, quality, test, build, and extension-package gates unchanged.
- Follow up on Copilot review by declaring `app.schema/store` as the nominal `app.schema/Store` it constructs. Split the absent-reel fallback from the raw persisted-value decode so already nominal data is used directly, while external Map/host values remain explicitly validated.
- Remove the now unreachable pull-request deployment-path branch; the whole step already runs only for pushes to `main`.

## 中文

- PR #40 的 Actions run 33959853973 失败，因为 `caps verify --toolchain` 在 Yarn 安装之前运行，无法解析已固定的 `@calcit/procs` 包。
- 将不可变 Yarn 安装移到工具链验证之前，使验证器检查实际安装的 0.13.77 包，而不是依赖本地预先存在的 `node_modules`。
- strict Caps 依赖解析仍保持第一步，后续 Snapshot、类型、质量、测试、构建和扩展包门禁均不变。
- 根据 Copilot review，将 `app.schema/store` 声明为它实际构造的 nominal `app.schema/Store`。同时分离 reel 缺失时的 fallback 与原始持久化值 decode：已经 nominal 的数据直接使用，外部 Map/host 值继续显式验证。
- 删除已不可达的 PR 部署路径分支；整个步骤本身只会在 `main` push 时运行。
