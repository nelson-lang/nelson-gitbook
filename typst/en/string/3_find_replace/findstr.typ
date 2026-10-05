#import "../nelson_help.typ": *

= findstr <string:3_find_replace.findstr>

Find one character vector inside another.

== Syntax

- #raw("R = findstr(...)");

== Description

#strong[findstr]; Find one character vector inside another.


== Example

``````matlab
findstr("hello", "l")
``````


== See also

#nlink(<string:3_find_replace.strfind>)[strfind];, #nlink(<string:3_find_replace.contains>)[contains];, #nlink(<string:8_compare_text.strcmp>)[strcmp];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
