JsOsaDAS1.001.00bplist00�Vscript_�// Change name extension on a series of files

var Finder = Application('Finder');  

// Create a Path object
var sourceFile = Path("/User/adkj/Demo/test.txt")

var destintationFile = "/Users/adkj/Demo2/test.txt" 

destFolder = Path("/Users/adkj/Demo2/")

var strPathSource = $(sourceFile).toString()

var strPathDest = $(destFolder).toString()

Finder.move(sourceFile, { to: destFolder});
//Finder.activate();                              �jscr  ��ޭ