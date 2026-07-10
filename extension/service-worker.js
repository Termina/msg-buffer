let sidepanelOpen = false;
let pendingMessage = null;
let deepseekApiKey = null;

let sendToSidepanel = (message, tabId) => {
  console.log("[Worker] Sending message to sidepanel:", message.action);
  chrome.runtime.sendMessage(message);
  if (sidepanelOpen) {
    return;
  }
  console.log(
    "[Worker] Sidepanel not marked as open, attempting to open and queueing message",
  );
  pendingMessage = message;
  chrome.sidePanel.open({ tabId });
};

chrome.runtime.onInstalled.addListener(() => {
  chrome.sidePanel.setPanelBehavior({ openPanelOnActionClick: true });

  chrome.contextMenus.removeAll(() => {
    chrome.contextMenus.create({
      id: "msg-gemini-root",
      title: "Msg Gemini",
      type: "normal",
      contexts: ["selection"],
    });
    chrome.contextMenus.create({
      id: "msg-gemini-summary",
      title: "Summary",
      type: "normal",
      contexts: ["selection"],
      parentId: "msg-gemini-root",
    });
    chrome.contextMenus.create({
      id: "msg-gemini-translate",
      title: "Translate",
      type: "normal",
      contexts: ["selection"],
      parentId: "msg-gemini-root",
    });
    chrome.contextMenus.create({
      id: "msg-gemini-custom",
      title: "Custom...",
      type: "normal",
      contexts: ["selection"],
      parentId: "msg-gemini-root",
    });
  });

  // Page-level translation context menu (separate from selection menu)
  chrome.contextMenus.create({
    id: "msg-gemini-translate-page",
    title: "Translate Page (EN→ZH)",
    type: "normal",
    contexts: ["page"],
  });
});

chrome.contextMenus.onClicked.addListener((item, tab) => {
  let content = item.selectionText;
  if (item.menuItemId === "msg-gemini-translate-page") {
    injectTranslateScript(tab);
    return;
  }
  if (item.menuItemId === "msg-gemini-translate") {
    sendToSidepanel({ action: "menu-translate", content }, tab.id);
  } else if (item.menuItemId === "msg-gemini-custom") {
    sendToSidepanel({ action: "menu-custom", content }, tab.id);
  } else {
    sendToSidepanel({ action: "menu-summary", content }, tab.id);
  }
});

chrome.runtime.onMessage.addListener((message, sender, sendResponse) => {
  if (message && message.action === "fill-text") {
    chrome.tabs.query({ active: true, currentWindow: true }, (tabs) => {
      const tab = tabs && tabs[0];
      if (tab && tab.id != null) {
        chrome.tabs.sendMessage(tab.id, {
          action: "fill-text",
          text: message.text || "",
        });
      }
    });
  }

  // Receive DeepSeek API key from sidepanel
  if (message && message.action === "sync-deepseek-key") {
    deepseekApiKey = message.key || null;
    console.log("[Worker] DeepSeek API key synced:", deepseekApiKey ? "present" : "cleared");
  }
});

// =========================================================================
// Page Translation
// =========================================================================

async function injectTranslateScript(tab) {
  // Step 1: Try cached key (synced from sidepanel)
  if (!deepseekApiKey) {
    console.log("[Worker] No cached key, reading from chrome.storage.local...");
    try {
      const stored = await chrome.storage.local.get("deepseekKey");
      if (stored && stored.deepseekKey) {
        deepseekApiKey = stored.deepseekKey;
        console.log("[Worker] DeepSeek API key loaded from chrome.storage.local");
      }
    } catch (e) {
      console.error("[Worker] Failed to read from storage:", e);
    }
  }

  // Step 2: If still no key, prompt the user on the page
  if (!deepseekApiKey) {
    console.log("[Worker] No key in storage, asking user via prompt...");
    try {
      const results = await chrome.scripting.executeScript({
        target: { tabId: tab.id },
        func: () => {
          return window.prompt(
            "Enter your DeepSeek API key (from platform.deepseek.com):"
          );
        },
      });
      if (results && results[0] && results[0].result) {
        deepseekApiKey = results[0].result;
        // Save for future use
        await chrome.storage.local.set({ deepseekKey: deepseekApiKey });
        console.log("[Worker] DeepSeek API key saved from prompt");
      }
    } catch (e) {
      console.error("[Worker] Prompt failed:", e);
    }
  }

  // Step 3: Final check
  if (!deepseekApiKey) {
    console.error("[Worker] Still no DeepSeek API key, cannot translate");
    return;
  }

  try {
    // Inject key and translation script into the page
    await chrome.scripting.executeScript({
      target: { tabId: tab.id },
      func: (key) => {
        window.__TRANSLATE_API_KEY__ = key;
      },
      args: [deepseekApiKey],
    });

    await chrome.scripting.executeScript({
      target: { tabId: tab.id },
      files: ["translate-page.js"],
    });

    console.log("[Worker] Translation script injected successfully");
  } catch (err) {
    console.error("[Worker] Failed to inject translate script:", err);
  }
}

// https://stackoverflow.com/a/77106777/883571
chrome.runtime.onConnect.addListener(function (port) {
  if (port.name === "mySidepanel") {
    sidepanelOpen = true;
    console.log("[Worker] Sidepanel connected.");
    if (pendingMessage) {
      console.log("[Worker] Sending pending message after connection.");
      chrome.runtime.sendMessage(pendingMessage);
      pendingMessage = null;
    }
    port.onDisconnect.addListener(async () => {
      sidepanelOpen = false;
      console.log("[Worker] Sidepanel disconnected.");
    });
  }
});
