JsOsaDAS1.001.00bplist00�Vscript_
//Shows Example Event in Calendar Demo. 
//If "Example Event" and "Demo" calendar do not exist script fails

var Calendar = Application("Calendar")

//Returns all Calendars with matching namevar projectCalendars = Calendar.calendars.whose({name: "Demo"})

//Only use the first one that matches namevar projectCalendar = projectCalendars[0] 

//Same logic as with Calendar, returns all, you only want the first one. var events = projectCalendar.events.whose({summary: "Example Event"})var event = events[0]event.show()                              "jscr  ��ޭ