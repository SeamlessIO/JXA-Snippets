JsOsaDAS1.001.00bplist00�Vscript_�////Requires "Demo" calendar with events
// Include Apple UI library
var app = Application.currentApplication()
app.includeStandardAdditions = true

// Array of things to work on. 
var demoChoiceChoices = ["AI", "Backup_Procedure", "Blog", "Chess", "BusinessPlan", "DayStarter", "Other"]

var demoChoice = app.chooseFromList(demoChoiceChoices, {
    withPrompt: "What are you working on ?",
    defaultItems: ["other"]
})

var response = app.displayDialog("Specifically?", {
    defaultAnswer: demoChoice + " - ",
    withIcon: "note",
    buttons: ["Cancel", "Continue"],
    defaultButton: "Continue"
})

// Result to be used in calendar event creation
var workingOn = response.textReturned

var app = Application.currentApplication()
app.includeStandardAdditions = true
var Calendar = Application("Calendar")

var eventStart = app.currentDate();



var eventEnd = app.currentDate();
eventEnd.setTime(eventEnd.getTime() + (60*60*1000));


var projectCalendars = Calendar.calendars.whose({name: "Demo"})
var projectCalendar = projectCalendars[0]
var event = Calendar.Event({summary: workingOn, startDate: eventStart, endDate: eventEnd});
projectCalendar.events.push(event)
event
                              �jscr  ��ޭ