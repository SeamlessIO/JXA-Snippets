JsOsaDAS1.001.00bplist00�Vscript_U
Mail = Application('Mail')

Mail.name()

Mail.name

Mail.outgoingMessages[0]

//Mail.accounts[0].mailboxes[8].messages[0]()
//Mail.accounts[0].mailboxes[8]()

Mail.activate() //bring Mail to foreground
Mail.accounts['iCloud'].checkForNewMail()

// show latest message in inbox
var latestMsg = Mail.inbox.messages[0]
Mail.open(latestMsg)



                              k jscr  ��ޭ