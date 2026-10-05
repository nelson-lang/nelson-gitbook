#import "../nelson_help.typ": *

= insertBefore <string:7_edit_text.insertBefore>

Insert text before a boundary.

== Syntax

- #raw("R = insertBefore(...)");

== Description

#strong[insertBefore]; Insert text before a boundary.


== Example

``````matlab
insertBefore("a=b", "=", "1")
``````


== See also

#nlink(<string:7_edit_text.insertAfter>)[insertAfter];, #nlink(<string:3_find_replace.replaceBetween>)[replaceBetween];, #nlink(<string:6_join_split_extract.extractBefore>)[extractBefore];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
