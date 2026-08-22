# Calcit project guide

Use the current Calcit CLI documentation before editing source:

```bash
calcit docs read upgrade --full
calcit docs agents --full
```

The source file is `calcit.cirru`; `compact.cirru` is retired. Use `calcit edit` and `calcit tree` for structural changes, then run `calcit calcit.cirru edit format` and the project checks.

For library-specific guidance, use `calcit libs readme respo.calcit`.
