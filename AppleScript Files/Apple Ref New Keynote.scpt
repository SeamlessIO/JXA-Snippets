JsOsaDAS1.001.00bplist00�Vscript_�
// Example Code on WWDC talk

Keynote = Application("Keynote") 

Keynote.activate() //foreground

//document class, make it a method, and add make verb at the end. 
//newDoc = Keynote.Document().make()

//can create with properties set as record
doc = Keynote.Document({
	documentTheme:Keynote.themes["Artisan"],
	width: 1024, 
	height: 768, 
	autoPlay: true,
	autoLoop: true, 
	autoRestart:true,
	maximumIdleDuration:3
	}).make()                              � jscr  ��ޭ