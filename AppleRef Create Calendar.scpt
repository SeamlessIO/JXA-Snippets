JsOsaDAS1.001.00bplist00�Vscript_:// Creates a Calendar

var Calendar = Application("Calendar")
var calendarName = "Task Boxes"
var calendarDescription = "Calendar for keeping track of Task Boxes."
var newCalendar = Calendar.Calendar({name: calendarName, description: calendarDescription}).make()
// Result: Application("Calendar").calendars.at(3)x                              Pjscr  ��ޭ