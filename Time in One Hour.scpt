JsOsaDAS1.001.00bplist00�Vscript_�// Needed for currentDate() method
var app = Application.currentApplication()app.includeStandardAdditions = true

var timeInOneHour = app.currentDate();

timeInOneHour.setTime(timeInOneHour.getTime() + (3600000));

timeInOneHour                            � jscr  ��ޭ