JsOsaDAS1.001.00bplist00�Vscript_1
var Reminders = Application("Reminders")

// Open reminders on the screen to see selected reminder
Reminders.activate()

//Reminders.lists.byName('List 1').show()

// You need to find a correct Id. 
Application("Reminders").reminders.byId("x-apple-reminder://D20AFA87-6606-48D9-A4D0-758B1A8F07DB").show()                              G jscr  ��ޭ