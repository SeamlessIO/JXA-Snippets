JsOsaDAS1.001.00bplist00�Vscript_// Include UI elements from Apple's Standard Additions
var app = Application.currentApplication()app.includeStandardAdditions = true

// Function to read in contents for array
    function listDirectory(strPath) {
        fm = fm || $.NSFileManager.defaultManager;

        return ObjC.unwrap(
                fm.contentsOfDirectoryAtPathError($(strPath)
                    .stringByExpandingTildeInPath, null))
            .map(ObjC.unwrap);
    }

    var fm = $.NSFileManager.defaultManager;

    listDirectory('~/Documents/My_Work')

// Array of things to work on. // TODO Read in based on availaiable Task Boxesvar taskBoxChoices = listDirectory('~/Documents/My_Work')
taskBoxChoices.sort();

taskBoxChoices.splice( taskBoxChoices.indexOf('.DS_Store'), 1 );

taskBoxChoices.push("other");var taskBox = app.chooseFromList(taskBoxChoices, {    withPrompt: "What are you working on ?",    defaultItems: ["other"]})taskBoxvar response = app.displayDialog("Specifically?", {    defaultAnswer: taskBox + " - ",    withIcon: "note",    buttons: ["Cancel", "Continue"],    defaultButton: "Continue"})// Result to be used in calendar event creationvar workingOn = response.textReturnedvar app = Application.currentApplication()app.includeStandardAdditions = truevar Calendar = Application("Calendar")var eventStart = app.currentDate();var eventEnd = app.currentDate();eventEnd.setTime(eventEnd.getTime() + (60*60*1000));var projectCalendars = Calendar.calendars.whose({name: "Task Box Calendar"})var projectCalendar = projectCalendars[0]var event = Calendar.Event({summary: workingOn, startDate: eventStart, endDate: eventEnd});projectCalendar.events.push(event)eventtime = "50m";// Pass the taskBox to the next script so that it can be opened. output = [taskBox, time];output                              0jscr  ��ޭ