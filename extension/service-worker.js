let sidepanelOpen = false;

chrome.runtime.onInstalled.addListener(() => {
  chrome.sidePanel.setPanelBehavior({ openPanelOnActionClick: true });
});

chrome.runtime.onInstalled.addListener(async () => {
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

chrome.contextMenus.onClicked.addListener((item, tab) => {
  let content = item.selectionText;
  if (item.menuItemId === "msg-gemini-translate") {
    chrome.runtime.sendMessage({ action: "menu-translate", content });
  } else if (item.menuItemId === "msg-gemini-custom") {
    chrome.runtime.sendMessage({ action: "menu-custom", content });
  } else {
    chrome.runtime.sendMessage({ action: "menu-summary", content });
  }
  chrome.sidePanel.open({ tabId: tab.id }, () => {
    // also try to open
    if (!sidepanelOpen) {
      setTimeout(() => {
        if (item.menuItemId === "msg-gemini-translate") {
          chrome.runtime.sendMessage({ action: "menu-translate", content });
        } else if (item.menuItemId === "msg-gemini-custom") {
          chrome.runtime.sendMessage({ action: "menu-custom", content });
        } else {
          chrome.runtime.sendMessage({ action: "menu-summary", content });
        }
      }, 1000);
    }
  });
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
});

// https://stackoverflow.com/a/77106777/883571
chrome.runtime.onConnect.addListener(function (port) {
  if (port.name === "mySidepanel") {
    sidepanelOpen = true;
    console.log("Sidepanel opened.");
    port.onDisconnect.addListener(async () => {
      sidepanelOpen = false;
      console.log("Sidepanel closed.");
    });
  }
});
