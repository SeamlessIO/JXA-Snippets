JsOsaDAS1.001.00bplist00�Vscript_�
//Trying to implement Apple Example Code, but it doesn't work out of box.

Mail = Application('Mail')
TextEdit = Application('TextEdit')

Mail.name


para = TextEdit.Paragraph({}, 'Some text')
TextEdit.documents[0].paragraphs.push(para)                              jscr  ��ޭ