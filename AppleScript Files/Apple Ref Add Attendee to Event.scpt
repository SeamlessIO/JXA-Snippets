JsOsaDAS1.001.00bplist00�Vscript_�

var app = Application.currentApplication()var Calendar = Application("Calendar")var projectCalendars = Calendar.calendars.whose({name: "Project Calendar"})var projectCalendar = projectCalendars[0] var events = projectCalendar.events.whose({summary: "Important Meeting!"})var event = events[0]var attendee = Calendar.Attendee({email: "example@apple.com"})event.attendees.push(attendee)Calendar.reloadCalendars()
                              �jscr  ��ޭ