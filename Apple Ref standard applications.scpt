JsOsaDAS1.001.00bplist00�Vscript_�
// Loads Apple's UI elements and others. 
app = Application.currentApplication()

app.includeStandardAdditions = true

app.say('Greetings')

dialogResult = app.displayDialog('Please enter your name', { 
	withTitle: 'Greetings',
	defaultAnswer: '', 
	buttons: ["Goodbye", "Hello"], 
	defaultButton: 2
})

if (dialogResult.buttonReturned == "Hello") {
	app.say('Hello ' + dialogResult.textReturned)
	} else {
	app.say('Goodbye' + dialogResult.textReturned)
	}                               � jscr  ��ޭ