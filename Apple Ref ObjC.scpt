JsOsaDAS1.001.00bplist00�Vscript_
�//Fails
//Apple tutorial on ScriptEditor.
// Example application using ObjC bridge to show image full screen. 
// Export as Format Application. Set Run handler to stay open after running

ObjC.import('Cocoa')

// Include commands avaible to OSA scripting languages

var app = Application.currentApplication()app.includeStandardAdditions = true

// $ indicats we talk to Cocoa. Tradintionally $ is JQuery. 
// Create Cocoa string, an instance, they apply method to it
var cocoaStrPath = $("~/Pictures").stringByExpandingTildeInPath

//Take constructed path and convert to file reference. Strings are not accpeted due to security, need to pass a file reference with process Path. File references made by turning string into the Object.
var defaultFolderRef = Path(cocoaStrPath.js)
//scrpting additions command chooseFile dialog box
var path = app.chooseFile({
	// what type of file do you want selectable, here public.image type. 
	ofType:'public.image',
	// where the dialog box opens up
	defaultLocation:defaultFolderRef
	})
//converts the path to a String	
var pathString = path.toString()

// create variable $NSImage class with contents of file at the full string path
var image = $.NSImage.alloc.initWithContentsOfFile(pathString)
// cocoa image has a reprentation of the image you give it at the first index
var imageRep = image.representations.objectAtIndex(0);
//ask dimneions from the representation
var width = imageRep.pixelsWide
var height = imageRep.pixelsHigh

// Create image view
//Rectanglee holding image
var imageFrame = $.NSMakeRect(0, 0, width, height)
//use frame
var imageView = $.NSImageView.allco.initWithFrame(imageFrame)
// use image view to assign image
imageView.image = image

// work with Window, create UI element.
var window = 
	//Create with the initWithContentRectStyleMaskBackingDefer command
	$.NSWindow.alloc.initWithContentRectStyleMaskBackingDefer(
	$.NSMakeRect(0,0,width, height),
	$.NSTitleWindowMask | //What is the title
	$.NSClosableWindowMask | //Can we close it. May want to exclude to prevent user from closing the window and exit and the application
	$.NSMiniaturizableWindowMask |  //can we We we miniaturize it
	$.NSResizableWindowMast, //can we resize it
	$.NSBackingStoreBuffered, //Backing sotre is buffered
	false
)

//Set window title
// Turn the pathString and turn it back to a tstring 
window.title = 
	$(pathString).lastPathComponent.stringByDeletingPathExtension
//Add subview to window to show the image view we made 
window.contentView.addSubview(imageView)
// Tell window to center on the screen
window.center
//display the window
window.makeKeyAndOrderFront(window)

//It crashes :<
// can make it a droplet by making it a function. As a function you can drag files on it and it will open. 

                              
�jscr  ��ޭ