// Listen for messages
chrome.runtime.onMessage.addListener(function (msg, sender, sendResponse) {
  // If the received message has the expected format...
  console.log("[Side Message] msg", msg);
  if (msg.get === "selected") {
    // Call the specified callback, passing
    // the web-page's DOM content as argument
    sendResponse(getSelectedText());
  }
});

let getSelectedText = () => {
  if (window.getSelection) {
    // 标准浏览器
    return window.getSelection().toString();
  } else if (document.selection) {
    // IE 浏览器
    return document.selection.createRange().text;
  } else {
    return "<未获取到内容>";
  }
};

console.log("[Side Message] prepared content script");
