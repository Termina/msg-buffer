# Typed host boundaries and Cirru quality baseline / 类型化宿主边界与 Cirru 质量基线

- Upgrade the released stack to Calcit/@calcit/procs 0.13.75, alerts 0.10.27, respo-feather 0.4.8, Reel 0.6.11, respo-markdown 0.4.29, respo-ui 0.7.14, and Respo 0.16.89.
- 将已发布依赖栈升级到 Calcit/@calcit/procs 0.13.75、alerts 0.10.27、respo-feather 0.4.8、Reel 0.6.11、respo-markdown 0.4.29、respo-ui 0.7.14 与 Respo 0.16.89。
- Introduce external-object traits for document visibility, extension messages, focus events, target ancestry, and DOM token lists; nullable host values are narrowed before application control flow.
- 为 document visibility、extension message、focus event、target ancestry 与 DOM token list 增加 external-object traits；宿主可空值在进入应用控制流前完成收窄。
- Resolve all seven warnings tracked by Termina/msg-buffer#37 without raw equality primitives or broad Dynamic propagation.
- 在不使用底层 equality primitive、也不扩大 Dynamic 传播的前提下，清零 Termina/msg-buffer#37 跟踪的 7 条告警。
- Align `package.json` with project version 0.0.4, addressing the unresolved review note from PR #35.
- 将 `package.json` 对齐到项目版本 0.0.4，处理 PR #35 尚未落实的 review 意见。
- Normalize legacy nullable boolean fields with explicit boolean cases so the existing `legacy-nil-fields` regression remains valid under Calcit 0.13.75.
- 通过显式布尔分支规范化旧数据中的 nullable boolean 字段，使现有 `legacy-nil-fields` 回归测试在 Calcit 0.13.75 下继续成立。
- Replace the compiler-owned JSON quality baseline with generated Cirru EDN and mark it as generated text in `.gitattributes`.
- 将编译器直接消费的 JSON 质量 baseline 改为生成的 Cirru EDN，并在 `.gitattributes` 中标记为生成文本。
- Disable textual diffs for the large generated baseline while retaining its text and generated attributes.
- 对大型生成 baseline 禁用文本 diff，同时保留 text 与 generated 属性。
- Unresolved weak-type totals move from 84 to 83; schema Dynamic moves from 64 to 63 while the 20 remaining nil sites stay in the existing staged debt baseline.
- unresolved weak-type 总数从 84 降到 83，schema Dynamic 从 64 降到 63；剩余 20 个 nil 位置继续留在既有分阶段债务 baseline 中。
