JsOsaDAS1.001.00bplist00�Vscript_�
(() => {
    'use strict';

    // evalAS :: String -> IO String
    const evalAS = s => {
        const
            a = Application.currentApplication(),
            sa = (a.includeStandardAdditions = true, a);
        return sa.doShellScript(
            ['osascript -l AppleScript <<OSA_END 2>/dev/null']
            .concat([s])
            .concat('OSA_END')
            .join('\n')
        );
    };

    return evalAS('say "hello world"');

})();
                              � jscr  ��ޭ