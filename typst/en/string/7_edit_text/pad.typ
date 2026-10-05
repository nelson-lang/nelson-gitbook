#import "../nelson_help.typ": *

= pad <string:7_edit_text.pad>

Pad text to a requested width.

== Syntax

- #raw("R = pad(...)");

== Description

#strong[pad]; Pad text to a requested width.


== Example

``````matlab
pad(["Mary"; "Elizabeth"], "left")
``````


== See also

#nlink(<string:1_create_convert_text.blanks>)[blanks];, #nlink(<string:7_edit_text.strtrim>)[strtrim];, #nlink(<string:7_edit_text.strjust>)[strjust];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
