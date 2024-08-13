let sidepanelOpen = false;

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
  chrome.sidePanel.open({ tabId: tab.id }, () => {
    // also try to open
    if (!sidepanelOpen) {
      setTimeout(() => {
        chrome.runtime.sendMessage({ action: "menu-trigger", content });
      }, 1000);
    }
  });
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
