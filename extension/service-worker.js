chrome.runtime.onInstalled.addListener(() => {
  chrome.sidePanel.setPanelBehavior({ openPanelOnActionClick: true });
});

chrome.runtime.onInstalled.addListener(async () => {
  chrome.contextMenus.create({
    id: "msg-gemeni-selection",
    title: "Msg Gemini",
    type: "normal",
    contexts: ["selection"],
  });
});

chrome.contextMenus.onClicked.addListener((item, tab) => {
  let content = item.selectionText;
  chrome.runtime.sendMessage({ action: "menu-trigger", content });
});
