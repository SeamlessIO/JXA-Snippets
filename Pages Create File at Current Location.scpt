JsOsaDAS1.001.00bplist00�Vscript_^
var app = Application.currentApplication();
app.includeStandardAdditions = true;

Pages = Application("Pages") 

// Helper function: Given a Finder window, returns its folder's POSIX path.
// Note: No need for an ObjC.import() statement, because NSURL is 
//       a Foundation class, and all Foundation classes are implicitly
//       available.
function posixPath(finderWin) {
  return $.NSURL.alloc.initWithString(finderWin.target.url()).fileSystemRepresentation
}

// Get POSIX path of Finder's frontmost window:
dirFilepath = posixPath(Application('Finder').finderWindows[0])

//document class, make it a method, and add make verb at the end. 

//can create with properties set as record
doc = Pages.Document(
//thePath = app.pathTo(this);
).make()

pageFilepath=dirFilepath+"/file.pages"

pageFilepath2=Path(pageFilepath)

doc.save({ in: pageFilepath2});
                              tjscr  ��ޭ