#import "nelson_help.typ": *

= opentoline <text_editor:opentoline>

opens a file in the editor at a line.

== Syntax

- #raw("opentoline(filename, linenumber)");
- #raw("opentoline(filename, linenumber, columnnumber)");

== Input argument

/ filename: a string: path of the file to open.
/ linenumber: a number: line to place the cursor on (1 or more).
/ columnnumber: a number: column of that line (1 or more); the end of a short line is the limit.

== Description

#strong[opentoline]; opens #strong[filename]; in the text editor and places the cursor at #strong[linenumber];, at the start of the line or at #strong[columnnumber];.

 The line numbers printed by the debugger at a stop, and the locations of error messages, are links that call the same behaviour in the Qt and web desktops.


== Example

``````matlab
opentoline(which('opentoline'), 10, 3)
``````


== See also

#nlink(<text_editor:editor>)[editor];, #nlink(<text_editor:edit>)[edit];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
