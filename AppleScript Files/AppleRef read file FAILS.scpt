JsOsaDAS1.001.00bplist00�Vscript_�
var app = Application.currentApplication()app.includeStandardAdditions = true

var file = app.chooseFile({
    ofType: "txt",
    withPrompt: "Please select a text file to read:"
})

readFile(file)                            � jscr  ��ޭ