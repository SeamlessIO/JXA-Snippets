JsOsaDAS1.001.00bplist00�Vscript_+////Requires "Demo" calendar with events


var Calendar = Application("Calendar")var projectCalendars = Calendar.calendars.whose({name: "Demo"})var projectCalendar = projectCalendars[0] var events = projectCalendar.events.whose({summary: "Important Meeting!"})var event = events[0]event.show()                              A jscr  ��ޭ