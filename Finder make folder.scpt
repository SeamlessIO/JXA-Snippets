JsOsaDAS1.001.00bplist00�Vscript_6// Make a new directory
var app = Application.currentApplication();
app.includeStandardAdditions = true;


var Finder = Application("Finder");


Finder.make(
	{
 		new: "folder", 
		//Requires password to create folder here
		at: "Macintosh HD:Users",
		withProperties: 
		{ 
			name: "Made by JXA"
 
		}
	}
);                              Ljscr  ��ޭ