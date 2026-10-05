#import "nelson_help.typ": *

= errordlg <gui:errordlg>

Creates an error dialog box.

== Syntax

- #raw("h = errordlg");
- #raw("h = errordlg(message)");
- #raw("h = errordlg(message, title)");
- #raw("h = errordlg(message, title, mode)");

== Input argument

/ message: Error text. Use a character vector, string, or cell array of character vectors.

== Output argument

/ h: Graphics figure handle.

== Description

errordlg creates an error message dialog and returns a graphics figure handle.


== Examples

Create an error dialog.

``````matlab
h = errordlg('Invalid value.', 'Error', 'non-modal');
``````


#align(center)[#image("errordlg_example.svg")]
Create the default error dialog.

``````matlab
h = errordlg();
close(h)
``````


== See also

#nlink(<gui:msgbox>)[msgbox];, #nlink(<gui:helpdlg>)[helpdlg];, #nlink(<gui:warndlg>)[warndlg];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Updated dialog API help.],
)

// Author: Allan CORNET
