#import "../nelson_help.typ": *

= insertAfter <string:7_edit_text.insertAfter>

Insert text after a boundary.

== Syntax

- #raw("R = insertAfter(...)");

== Description

#strong[insertAfter]; Insert text after a boundary.


== Example

``````matlab
insertAfter("a=b", "=", "1")
``````


== See also

#nlink(<string:7_edit_text.insertBefore>)[insertBefore];, #nlink(<string:3_find_replace.replaceBetween>)[replaceBetween];, #nlink(<string:6_join_split_extract.extractAfter>)[extractAfter];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
