JsOsaDAS1.001.00bplist00�Vscript_3
// Create new Reminder
// from https://www.richardhyde.net/2019/04/16/New-Reminder-Using-JXA.html

var reminders = Application("Reminders");
var newReminder = reminders.Reminder({ name: "Title for reminder", body: "Notes for the reminder"});
reminders.lists.byName("List Name").reminders.push(newReminder);                              I jscr  ��ޭ