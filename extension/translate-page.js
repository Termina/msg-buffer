/**
 * translate-page.js — Chrome Extension Content Script
 * Injected into active tab to translate page content from English to Chinese
 * using Gemini Flash 3 API.
 *
 * Architecture:
 * 1. Service worker injects this script with the API key
 * 2. Script finds main content area, extracts text segments
 * 3. Calls Gemini API to batch-translate
 * 4. Replaces text nodes preserving images, links, and DOM structure
 */

(async function translatePage() {
  const apiKey = window.__TRANSLATE_API_KEY__;
  if (!apiKey) {
    console.error("[TranslatePage] No API key provided");
    return;
  }

  const API_URL = "https://api.deepseek.com/v1/chat/completions";
  const MODEL = "deepseek-chat";
  const BATCH_SIZE = 20;
  const MAX_CONCURRENT = 2;
  const BATCH_DELAY_MS = 300;
  const SEGMENT_MIN_LENGTH = 4;

  // Tags whose text content should NOT be translated
  const SKIP_TAGS = new Set([
    "SCRIPT", "STYLE", "NOSCRIPT", "IFRAME", "SVG", "CANVAS",
    "PRE", "IMG", "VIDEO", "AUDIO", "OBJECT", "EMBED",
  ]);

  // =========================================================================
  // 1. Find Main Content Area
  // =========================================================================

  function findMainContent() {
    const semanticSelectors = [
      "article", "main", '[role="main"]',
      "#content", "#main-content", "#article", "#post-content",
      ".content", ".post-content", ".article-content", ".entry-content",
      ".markdown-body", ".prose", '[data-testid="content"]',
    ];
    for (const sel of semanticSelectors) {
      const el = document.querySelector(sel);
      if (el && el.textContent.trim().length > 200) return el;
    }

    let best = document.body;
    let bestScore = 0;
    document.querySelectorAll("div, section, main, article").forEach((el) => {
      const pCount = el.querySelectorAll("p, h1, h2, h3, h4, h5, h6, li, td, th, blockquote").length;
      const textLen = el.textContent.trim().length;
      if (pCount >= 3 && textLen > 500 && textLen > bestScore) {
        bestScore = textLen;
        best = el;
      }
    });

    if (best === document.body && best.textContent.trim().length > 5000) return best;
    return best;
  }

  // =========================================================================
  // 2. Collect Individual Text Nodes
  // =========================================================================

  function collectTextNodes(root) {
    const nodes = [];
    const walker = document.createTreeWalker(root, NodeFilter.SHOW_TEXT, {
      acceptNode(node) {
        let parent = node.parentElement;
        if (!parent) return NodeFilter.FILTER_REJECT;
        // Walk up to check all ancestors
        while (parent && parent !== root) {
          if (SKIP_TAGS.has(parent.tagName)) return NodeFilter.FILTER_REJECT;
          parent = parent.parentElement;
        }
        const text = node.textContent.trim();
        if (text.length < SEGMENT_MIN_LENGTH) return NodeFilter.FILTER_REJECT;
        // Rough English detection
        const asciiCount = (text.match(/[a-zA-Z]/g) || []).length;
        if (asciiCount <= text.length * 0.3) return NodeFilter.FILTER_REJECT;
        return NodeFilter.FILTER_ACCEPT;
      },
    });

    let node;
    while ((node = walker.nextNode())) {
      nodes.push({
        text: node.textContent.trim(),
        domNode: node,
      });
    }
    return nodes;
  }

  // =========================================================================
  // 3. Call Gemini API with JSON batch
  // =========================================================================

  async function translateBatch(texts) {
    const prompt = `Translate each English text segment below into Chinese.
Return ONLY a JSON array of translations in the exact same order.
- Preserve proper nouns, numbers, code snippets, and technical terms as-is
- Keep the original tone and style
- Do NOT add explanations — just the JSON array

Input:
${JSON.stringify(texts)}

Output (JSON array):`;

    try {
      const response = await fetch(API_URL, {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
          "Authorization": `Bearer ${apiKey}`,
        },
        body: JSON.stringify({
          model: MODEL,
          messages: [{ role: "user", content: prompt }],
          temperature: 0.2,
          max_tokens: 16384,
        }),
      });

      if (!response.ok) {
        throw new Error(`API ${response.status}: ${(await response.text()).slice(0, 200)}`);
      }

      const data = await response.json();
      const resultText = data.choices?.[0]?.message?.content || "";

      // Try to parse JSON array from response
      try {
        const parsed = JSON.parse(resultText.trim());
        if (Array.isArray(parsed)) return parsed;
      } catch (_) {
        // Try to extract JSON array from markdown or surrounding text
        const match = resultText.match(/\[[\s\S]*\]/);
        if (match) {
          try {
            const parsed = JSON.parse(match[0]);
            if (Array.isArray(parsed)) return parsed;
          } catch (__) { /* fall through */ }
        }
      }

      // Final fallback: split by lines (best-effort)
      console.warn("[TranslatePage] JSON parse failed, falling back to line split");
      return resultText
        .split("\n")
        .map((l) => l.replace(/^["\s]*|["\s]*[,]?$/g, "").trim())
        .filter((l) => l.length > 0);
    } catch (err) {
      console.error("[TranslatePage] API error:", err);
      return null;
    }
  }

  // =========================================================================
  // 4. Apply Translations to Text Nodes
  // =========================================================================

  function applyTranslations(nodes, translations) {
    let applied = 0;
    for (let i = 0; i < nodes.length && i < translations.length; i++) {
      const domNode = nodes[i].domNode;
      if (domNode && domNode.textContent) {
        domNode.textContent = translations[i];
        applied++;
      }
    }
    return applied;
  }

  // =========================================================================
  // Main Execution
  // =========================================================================

  let _notifyEl = null;
  let _notifyTimeout = null;

  function showNotification(msg, temporary) {
    if (!_notifyEl) {
      _notifyEl = document.createElement("div");
      _notifyEl.style.cssText = `
        position:fixed;top:16px;right:16px;z-index:2147483647;
        background:#333;color:#fff;padding:8px 16px;
        border-radius:8px;font-size:14px;font-family:sans-serif;
        box-shadow:0 2px 8px rgba(0,0,0,0.3);pointer-events:none;
        animation:tpFadeIn 0.3s ease;
      `;
      const style = document.createElement("style");
      style.textContent = "@keyframes tpFadeIn{from{opacity:0;transform:translateY(-8px)}to{opacity:1;transform:translateY(0)}}";
      document.head.appendChild(style);
      document.body.appendChild(_notifyEl);
    }
    _notifyEl.textContent = "\u{1F310} " + msg;
    clearTimeout(_notifyTimeout);
    if (!temporary) {
      _notifyTimeout = setTimeout(() => {
        _notifyEl.remove();
        _notifyEl = null;
      }, 3000);
    }
  }

  try {
    console.log("[TranslatePage] Finding main content...");
    const mainContent = findMainContent();
    console.log("[TranslatePage] Collecting text nodes...");
    const nodes = collectTextNodes(mainContent);

    if (nodes.length === 0) {
      console.log("[TranslatePage] No translatable text nodes found");
      return;
    }

    console.log(`[TranslatePage] Found ${nodes.length} translatable text nodes`);

    const totalBatches = Math.ceil(nodes.length / BATCH_SIZE);
    let appliedTotal = 0;

    // Prepare batches: [{ startIdx, texts, nodes }]
    const batches = [];
    for (let i = 0; i < nodes.length; i += BATCH_SIZE) {
      const batchNodes = nodes.slice(i, i + BATCH_SIZE);
      batches.push({
        idx: i,
        texts: batchNodes.map((n) => n.text),
        nodes: batchNodes,
      });
    }

    console.log(`[TranslatePage] ${batches.length} batches, max ${MAX_CONCURRENT} concurrent`);

    // Process with concurrency limit
    let running = 0;
    let nextIdx = 0;

    async function processBatch(batch, num) {
      console.log(`[TranslatePage] Batch ${num}/${batches.length} started...`);
      const translations = await translateBatch(batch.texts);
      if (translations && translations.length > 0) {
        const n = applyTranslations(batch.nodes, translations);
        appliedTotal += n;
        showNotification(`Translated ${appliedTotal}/${nodes.length}...`, true);
      } else {
        console.warn(`[TranslatePage] Batch ${num} failed, keeping original`);
      }
      console.log(`[TranslatePage] Batch ${num}/${batches.length} done`);
    }

    await new Promise((resolve) => {
      function tryNext() {
        while (running < MAX_CONCURRENT && nextIdx < batches.length) {
          const batchNum = nextIdx + 1;
          const batch = batches[nextIdx];
          nextIdx++;
          running++;
          processBatch(batch, batchNum).finally(() => {
            running--;
            tryNext();
          });
        }
        if (running === 0 && nextIdx >= batches.length) {
          resolve();
        }
      }
      tryNext();
    });

    showNotification(`Done: ${appliedTotal}/${nodes.length} translated`);

  } catch (err) {
    console.error("[TranslatePage] Error:", err);
    showNotification("Translation failed: " + err.message);
  }
})();
