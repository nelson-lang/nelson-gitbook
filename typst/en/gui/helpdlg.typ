#import "nelson_help.typ": *

= helpdlg <gui:helpdlg>

Creates a help dialog box.

== Syntax

- #raw("h = helpdlg");
- #raw("h = helpdlg(message)");
- #raw("h = helpdlg(message, title)");

== Input argument

/ message: Help text. Use a character vector, string, or cell array of character vectors.

== Output argument

/ h: Graphics figure handle.

== Description

helpdlg creates a help message dialog and returns a graphics figure handle.


== Examples

Create a help dialog.

``````matlab
h = helpdlg('Use the OK button to close this dialog.', 'Help');
``````


#align(center)[#image("helpdlg_example.svg")]
Display several help lines.

``````matlab
h = helpdlg({'Select a file.', 'Then press Open.'}, 'Help');
close(h)
``````


== See also

#nlink(<gui:msgbox>)[msgbox];, #nlink(<gui:warndlg>)[warndlg];, #nlink(<gui:errordlg>)[errordlg];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Updated dialog API help.],
)

// Author: Allan CORNET
