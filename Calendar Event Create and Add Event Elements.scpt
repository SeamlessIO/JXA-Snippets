JsOsaDAS1.001.00bplist00�Vscript_k
//Event elements can be added, properties cannot be changed
////Requires "Demo" calendar with events


//Set Calendar to be the Application Calendar
var Calendar = Application('Calendar') 

//use Demo as the used Calendar by searching for it.
var projectCalendars = Calendar.calendars.whose({name: "Demo"})
//Use the first result that matches name search
var projectCalendar = projectCalendars[0]

//new keyword makes Date object
var timeNow = new Date()


//Creation of a new event with same start and end time as the pulled event
newEvent=Calendar.Event({summary: "TEST", startDate: timeNow, endDate: timeNow})
// Push the event to the calendar
projectCalendar.events.push(newEvent)

//Choose which event I will edit. In this case first one. Could also be .last or array value []
var event = projectCalendar.events.last()// attendee is made as a function. Class Event contains element attendeess, which is why I can add(push) attendees. var attendee = Calendar.Attendee({email: "example@apple.com"})
event.attendees.push(attendee)

event.attendees[0]();
event.startDate();
//new Event(myEvent)
//projectCalendar.events.length                              � jscr  ��ޭ