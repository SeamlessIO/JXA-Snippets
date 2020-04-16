JsOsaDAS1.001.00bplist00�Vscript_�
////Requires "Demo" calendar with events

//Creates new Event with same startDate as current event and endDate as Now
// Deletes the event it replaces


// Add standard library for dialog boxes
var app = Application.currentApplication()
app.includeStandardAdditions = true

//Set Calendar to be the Application Calendar
var Calendar = Application('Calendar') 

//Set name of Calendar you are using
var calendarUsed = "Demo";

//use Demo as the used Calendar by searching for it.
var projectCalendars = Calendar.calendars.whose({name: calendarUsed})
//Use the first result that matches name search
var projectCalendar = projectCalendars[0]



var testEvents = projectCalendar.events.whose({ summary: "TEST"});

//set recentEvent to be the first in the results of search. 
//TODO deal with more than one search result
var testEvent = testEvents[0]

eventId = testEvent.id() 
//Delete the event with the old end time.

Calendar.delete(projectCalendar.events.byId(eventId))
                              � jscr  ��ޭ