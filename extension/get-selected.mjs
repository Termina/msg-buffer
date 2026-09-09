export let get_selected = async () => {
  if (window.chrome?.runtime?.id == null) {
    return null;
  }

  try {
    let [activeTab] = await window.chrome.tabs.query({
      active: true,
      currentWindow: true,
    });
    if (activeTab?.id == null) {
      return null;
    }

    let results = await window.chrome.scripting.executeScript({
      target: { tabId: activeTab.id },
      func: () => window.getSelection?.().toString() ?? "",
    });
    return results[0]?.result ?? "";
  } catch (error) {
    console.warn("Unable to read selection from the active tab", error);
    return null;
  }
};
