JsOsaDAS1.001.00bplist00�Vscript_�// I found this somewhere, reference it when found again

Application("Mission Control").launch()

var proc = Application("System Events").processes['Dock']
var group = proc.groups[0].groups[0].groups[1]

var bs = group.buttons.whose({ description: "add desktop"})
Application("System Events").click(bs[0])

delay(0.5)
var li = group.lists[0]
Application("System Events").click(li.buttons[li.buttons.length - 1])

delay(0.5)
Application("Calendar").activate()
Application("Reminders").activate()                               jscr  ��ޭ