# 修改记录: Schema 标注与样式节点 Bug 修复 (2025-02-12)

## 知识点与变动树

1. **Respo `<>` (文本节点) 语法约束**:
   - `respo.core/<>` 后面仅支持接受字符串/叶子节点，不能把有子节点的标签（如 `div`、`span`）写在 `<>` 的子级中。
   - 修复了 `app.comp.container/comp-container` else-block 中错误地把 `div` 包在 `<>` 里的问题，改用正常的 `div` 布局包围并进行 flex 调节。

2. **Calcit / CodeEntry schema 类型标注**:
   - 对以下全局变量、常量、辅助函数补充了正确的 `schema` 类型约束：
     - `*archived-sessions` => `:schema :ref`
     - `*viewing-archive-session` => `:schema :ref`
     - `*abort-control` => `:schema :ref`
     - `chrome-extension?` => `:schema :bool`
     - `dev?` => `:schema :bool`
     - `site` => `:schema :map`
     - `first-line` => `:schema $ :: :fn $ {} (:return :string) (:args $ [] :string)`
     - `pick-model` => `:schema $ :: :fn $ {} (:return :string) (:args $ [] :dynamic)`
     - `save-current-session` => `:schema $ :: :fn $ {} (:return :map) (:args $ [] :map :map)`
     - `messages->openai` => `:schema $ :: :fn $ {} (:return :list) (:args $ [] :list)`
     - `app.schema/store` => `:schema :map`
     - `app.updater/updater` => `:schema $ :: :fn $ {} (:return :map) (:args $ [] :map :list :string :number)`

3. **Calcit 基础类型标签限定**:
   - 在静态类型检测中，Calcit 支持的原生 bool 标签为 `:bool`，使用 `:boolean` 触发 `unknown primitive schema tag` 报错，现已全部修正为 `:bool`。

4. **编译与构建验证**:
   - 执行 `cr --check-only` 全量通过。
   - 执行 `yarn build` Vite 正确生成 production 混淆打包产物且未引入任何运行时警告项目。
