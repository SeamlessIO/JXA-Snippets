JsOsaDAS1.001.00bplist00�Vscript_�//Requires "Demo" calendar with events

// Working with Application Calendar
var Calendar = Application("Calendar")


// Use specific calendar matching name
var projectCalendars = Calendar.calendars.whose({name: "Demo"})


//Use the first calendar that matches the name
var projectCalendar = projectCalendars[0]()


// Gets information for the last created element in calendar
var eventinfo = projectCalendar.events.last()

eventinfo.properties();
                              �jscr  ��ޭ