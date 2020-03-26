JsOsaDAS1.001.00bplist00�Vscript_// Uses Objective C to read file names in a given folder. 
// Copied from the JXA/Cookbook https://github.com/JXA-Cookbook/JXA-Cookbook

    // listDirectory :: FilePath -> [FilePath]
    function listDirectory(strPath) {
        fm = fm || $.NSFileManager.defaultManager;

        return ObjC.unwrap(
                fm.contentsOfDirectoryAtPathError($(strPath)
                    .stringByExpandingTildeInPath, null))
            .map(ObjC.unwrap);
    }

    var fm = $.NSFileManager.defaultManager;

    listDirectory('~/Documents')
                              0jscr  ��ޭ