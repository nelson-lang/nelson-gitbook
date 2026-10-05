#import "../nelson_help.typ": *

= extractAfter <string:6_join_split_extract.extractAfter>

Extract text after a boundary.

== Syntax

- #raw("R = extractAfter(...)");

== Description

#strong[extractAfter]; Extract text after a boundary.


== Example

``````matlab
extractAfter("abc.def", ".")
``````


== See also

#nlink(<string:6_join_split_extract.extractBefore>)[extractBefore];, #nlink(<string:6_join_split_extract.extractBetween>)[extractBetween];, #nlink(<string:6_join_split_extract.extract>)[extract];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
