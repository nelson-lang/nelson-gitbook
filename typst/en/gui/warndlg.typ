#import "nelson_help.typ": *

= warndlg <gui:warndlg>

Creates a warning dialog box.

== Syntax

- #raw("h = warndlg");
- #raw("h = warndlg(message)");
- #raw("h = warndlg(message, title)");
- #raw("h = warndlg(message, title, mode)");

== Input argument

/ message: Warning text. Use a character vector, string, or cell array of character vectors.

== Output argument

/ h: Graphics figure handle.

== Description

warndlg creates a warning message dialog and returns a graphics figure handle.


== Examples

Create a warning dialog.

``````matlab
f = warndlg('Check the input value.', 'Warning', 'non-modal');
drawnow();
``````


#align(center)[#image("warndlg_example.svg")]
Create a warning dialog with several lines.

``````matlab
h = warndlg({'Input is empty.', 'Default values will be used.'}, 'Warning', 'non-modal');
close(h)
``````


== See also

#nlink(<gui:msgbox>)[msgbox];, #nlink(<gui:helpdlg>)[helpdlg];, #nlink(<gui:errordlg>)[errordlg];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Updated dialog API help.],
)

// Author: Allan CORNET
