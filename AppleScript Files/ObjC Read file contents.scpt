JsOsaDAS1.001.00bplist00�Vscript_�
// Maybe from JXA cookbook

(function () {
    'use strict';

    // GENERIC FUNCTIONS ------------------------------------------------------

    // doesFileExist :: String -> Bool
    function doesFileExist(strPath) {
        var error = $();
        return $.NSFileManager.defaultManager
            .attributesOfItemAtPathError($(strPath)
                .stringByStandardizingPath, error), error.code === undefined;
    };

    // lines :: String -> [String]
    function lines(s) {
        return s.split(/[\r\n]/);
    };

    // readFile :: FilePath -> maybe String
    function readFile(strPath) {
        var error = $(),
            str = ObjC.unwrap(
                $.NSString.stringWithContentsOfFileEncodingError($(strPath)
                    .stringByStandardizingPath, $.NSUTF8StringEncoding, error)
            ),
            blnValid = typeof error.code !== 'string';
        return {
            nothing: !blnValid,
            just: blnValid ? str : undefined,
            error: blnValid ? '' : error.code
        };
    };

    // show :: a -> String
    function show(x) {
        return JSON.stringify(x, null, 2);
    };

    // TEST -------------------------------------------------------------------
    var strPath = '~/DeskTop/random.txt';

    return doesFileExist(strPath) ? function () {
        var dctMaybe = readFile(strPath);
        return dctMaybe.nothing ? dctMaybe.error : show(lines(dctMaybe.just));
    }() : 'File not found:\n\t' + strPath;
})();                              �jscr  ��ޭ