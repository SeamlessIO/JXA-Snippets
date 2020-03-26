JsOsaDAS1.001.00bplist00�Vscript_�
////Requires "Demo" calendar with events
//Create new event starting now and ending in one hour

//Set Calendar to be the Application Calendar
var Calendar = Application('Calendar') 

//Set name of Calendar you are using
var calendarUsed = "Demo";

//use Demo as the used Calendar by searching for it.
var projectCalendars = Calendar.calendars.whose({name: calendarUsed});
//Use the first result that matches name search
var projectCalendar = projectCalendars[0];

//You need the time now as an object
var timeNow = new Date();

//inAnHour as well
var inAnHour = new Date();

//Create Date object one hour ago for search criteria 
inAnHour.setHours(timeNow.getHours()+1);


//Create new event with values from pervious event and end time of timeNow
newEvent=Calendar.Event({summary: "Demo Event", startDate: timeNow, endDate: inAnHour});

// Push the event to the calendar
projectCalendar.events.push(newEvent);



                              �jscr  ��ޭ