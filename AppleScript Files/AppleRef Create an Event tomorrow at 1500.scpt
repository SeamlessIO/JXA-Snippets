JsOsaDAS1.001.00bplist00�Vscript_�
var app = Application.currentApplication()
app.includeStandardAdditions = true
var Calendar = Application("Calendar")

var eventStart = app.currentDate()
eventStart = eventStart
eventStart.setDate(eventStart.getDate() + 1)
eventStart.setHours(15)
eventStart.setMinutes(0)
eventStart.setSeconds(0)
var eventEnd = new Date(eventStart.getTime())
eventEnd.setHours(16)

var projectCalendars = Calendar.calendars.whose({name: "DEMO"})
//Use the first result that matches name search
var projectCalendar = projectCalendars[0]
var event = Calendar.Event({summary: "Important Meeting!", startDate: eventStart, endDate: eventEnd})
projectCalendar.events.push(event)
                              �jscr  ��ޭ