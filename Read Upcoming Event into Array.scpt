JsOsaDAS1.001.00bplist00�Vscript_�//https://leancrew.com/all-this/
//If "Example Event" and "Demo" calendar do not exist script fails

var now = new(Date)

var Calendar = Application("Calendar")
var homeCal = Calendar.calendars.whose({name: "Demo"})[0]

var swHomeEvents = homeCal.events.whose({
  _and: [
    {startDate: {_greaterThan: now}},
    {summary: {_beginsWith: "Example Event"}}
  ]
})

var swEvents = swHomeEvents()
swEvents
                              � jscr  ��ޭ