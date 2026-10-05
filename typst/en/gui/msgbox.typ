#import "nelson_help.typ": *

= msgbox <gui:msgbox>

Creates a message dialog box.

== Syntax

- #raw("h = msgbox(message)");
- #raw("h = msgbox(message, title)");
- #raw("h = msgbox(message, title, icon)");
- #raw("h = msgbox(message, title, icon, mode)");
- #raw("h = msgbox(message, mode)");

== Input argument

/ message: Message text. Use a character vector, string array, or cell array of character vectors for multiple lines.

== Output argument

/ h: Graphics figure handle.

== Description

msgbox creates a message dialog and returns a graphics figure handle. The handle can be used with get, set, close, delete, and waitfor.


== Examples

Create a message box.

``````matlab
h = msgbox({'Operation', 'completed'}, 'Status', 'help', 'non-modal');
``````


#align(center)[#image("msgbox_example.svg")]
Create a plain message box.

``````matlab
h = msgbox('Ready.', 'Status', 'none', 'non-modal');
close(h)
``````


== See also

#nlink(<gui:helpdlg>)[helpdlg];, #nlink(<gui:warndlg>)[warndlg];, #nlink(<gui:errordlg>)[errordlg];, #nlink(<gui:questdlg>)[questdlg];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Updated dialog API help.],
)

// Author: Allan CORNET
