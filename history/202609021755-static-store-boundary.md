# Keep the updater Store boundary static / 保持 updater 的 Store 静态边界

## English

- Stop re-decoding `raw-store` inside `app.updater/updater`; its declared input is already the nominal `Store` used by Reel.
- Keep `decode-map-as` at the actual external storage hydration boundary, where legacy persisted maps still enter the typed application.
- Prevent the newer compiler from rejecting a Struct value passed back through a Map decoder while preserving legacy-session migration behavior.

## 中文

- `app.updater/updater` 不再二次 decode `raw-store`；其声明输入已经是 Reel 使用的 nominal `Store`。
- `decode-map-as` 继续保留在真实的外部存储 hydration 边界，用于旧持久化 Map 进入类型化应用时的迁移。
- 避免新版编译器拒绝把 Struct 再次送入 Map decoder，同时保持 legacy session 的迁移行为。
