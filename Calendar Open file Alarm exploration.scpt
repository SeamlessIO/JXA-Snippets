JsOsaDAS1.001.00bplist00�Vscript_{
//Looking at the Alarm poperty on an event
// Requires an Automator calendar with even and alarm property. 


// Working with Application Calendar
var Calendar = Application("Calendar")


// Use specific calendar matching name
var projectCalendars = Calendar.calendars.whose({name: "Automator"})


//Use the first calendar that matches the name
var projectCalendar = projectCalendars[0]()


// Gets information for the last created element in calendar
var eventinfo = projectCalendar.events.last()

// Have a single object to return with all the information

eventinfo.openFileAlarms();
eventinfo.properties();
projectCalendar.keys();                              � jscr  ��ޭ