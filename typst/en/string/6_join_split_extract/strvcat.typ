#import "../nelson_help.typ": *

= strvcat <string:6_join_split_extract.strvcat>

Vertically concatenate text.

== Syntax

- #raw("R = strvcat(...)");

== Description

#strong[strvcat]; Vertically concatenate text.


== Example

``````matlab
strvcat("abc", "de")
``````


== See also

#nlink(<string:1_create_convert_text.char>)[char];, #nlink(<string:1_create_convert_text.strcat>)[strcat];, #nlink(<string:1_create_convert_text.blanks>)[blanks];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
