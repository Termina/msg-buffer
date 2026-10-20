# Calcit project guide

Use the current Calcit CLI documentation before editing source:

```bash
calcit docs read upgrade --full
calcit docs agents --full
```

The source file is `calcit.cirru`; `compact.cirru` is retired. Use `calcit edit` and `calcit tree` for structural changes, then run `calcit calcit.cirru edit format` and the project checks.

For library-specific guidance, use `calcit docs remote-libs readme respo.calcit`.

The browser extension must retain local relative asset paths. Build the website separately with its CDN base; never copy CDN-built output into `extension/dist`. COS verification belongs to the upload action, not an additional script.
