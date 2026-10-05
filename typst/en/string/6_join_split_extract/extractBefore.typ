#import "../nelson_help.typ": *

= extractBefore <string:6_join_split_extract.extractBefore>

Extract text before a boundary.

== Syntax

- #raw("R = extractBefore(...)");

== Description

#strong[extractBefore]; Extract text before a boundary.


== Example

``````matlab
extractBefore("abc.def", ".")
``````


== See also

#nlink(<string:6_join_split_extract.extractAfter>)[extractAfter];, #nlink(<string:6_join_split_extract.extractBetween>)[extractBetween];, #nlink(<string:6_join_split_extract.extract>)[extract];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
