JsOsaDAS1.001.00bplist00�Vscript_V
// Move files from one directory to another
// based on https://stackoverflow.com/questions/31710494/moving-created-files-with-jxa

'use strict';

var app = Application.currentApplication()
app.includeStandardAdditions = true 

var Finder = Application('Finder');  

// Create a Path object
var sourceFile = Path("/User/adkj/Demo/sample.rtf");

var destintationFile = "/Users/adkj/Demo2/sample" ;

var destFolder=Path("/Users/adkj/Demo2");

var strPathSource = $(sourceFile).toString();

var strPathDest = $(destFolder).toString();

Finder.move(strPathSource, { to:strPathDest, replacing: true});
                              ljscr  ��ޭ