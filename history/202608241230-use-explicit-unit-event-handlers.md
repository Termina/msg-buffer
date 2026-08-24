# Use explicit Unit values for event handlers

- Replaced the legacy `;nil` event-handler tails with Calcit's explicit
  `&unit` literal after introducing the corresponding compiler support.
- This makes UI callback returns semantically distinct from application `nil`;
  the JavaScript backend emits `void 0` for the handlers.
- Verified static checking, the project quality baseline, JS generation, Vite
  production build, browser event interaction, and Gemini streaming requests.
