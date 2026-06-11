# 修改记录: Schema 弱类型深度优化与修复 (2026-06-12)

## 知识点与变动树

1. **顶级/常量 Schema 约束**:
   - 在 Calcit 编译器的 `:schema` 中，非函数、非宏的 CodeEntry（如 `def`、`defatom` 等常量和引用）不支持复杂的参数化 nested schema（如 `(:: :map ...)` 或 `(:: :list ...)`）。如果使用了复杂 nested schema，会导致类似 `failed to normalize CodeEntry.schema` 的编译错误。
   - 这类 CodeEntry 必须定义为简单/原始的顶级类型标签（如 `:ref`、`:map`、`:list`）。

2. **嵌套集合/列表的精确类型声明**:
   - 在声明函数签名时，参数和返回值支持完整的 nested parameters。
   - 对于聊天应用中最常出现的 “消息列表” （List of Message Maps），我们可以将其类型从模糊的 `(:: :list :map)` 深度细化为 `(:: :list (:: :map :tag :dynamic))`，其中 map 的 keys 精确定义为关键字 `:tag`（如 `:role`、`:content` 等），从而有效消除了 `cr analyze weak-types` 检测中大量的 `map-key` 弱类型警告。
   - 相应优化的函数包括：
     - `append-user-message`
     - `create-session`
     - `upsert-assistant-message`
     - `messages->anthropic`
     - `messages->gemini`
     - `messages->openai`

3. **类型纠正与完善**:
   - 修正了 `json-pattern?` 的返回类型，将错误的 `:boolean` 统一更正为 Calcit 原生支持的 `:bool` 类型。
   - 精确指定了 `pick-model` 的参数模型 `variant` 类型为 `:tag`。

4. **编译与质量保障**:
   - 运行 `cr --check-only` 全量完美通过。
   - 运行 `yarn build` Vite production build 编译打包一切正常。
