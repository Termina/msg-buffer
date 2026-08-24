# Upgrade Gemini SDK and log request failures

- Upgraded `@google/genai` to 2.18.0 and retained the streaming request shape
  supported by the current SDK.
- The top-level submit handler now writes the original caught error to
  `console.error` before rendering the user-facing failure message, preserving
  a useful browser debugging trail without exposing configured credentials.
- The Markdown table renderer fix is released separately from respo-markdown;
  msg-buffer will consume it after that package release.
