JsOsaDAS1.001.00bplist00�Vscript_
// Include Apple UI library
var app = Application.currentApplication()
app.includeStandardAdditions = true
	
var errorMsg = app.displayDialog("Error", {
buttons: ["Cancel", "Continue"],
// icon alternatives are stop, note, caution
withIcon: "stop",
defaultButton: "Continue"
})                              ,jscr  ��ޭ