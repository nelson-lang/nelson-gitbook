#import "../nelson_help.typ": *

= extractBetween <string:6_join_split_extract.extractBetween>

Extract text between boundaries.

== Syntax

- #raw("R = extractBetween(...)");

== Description

#strong[extractBetween]; Extract text between boundaries.


== Example

``````matlab
extractBetween("a[bc]d", "[", "]")
``````


== See also

#nlink(<string:6_join_split_extract.extractAfter>)[extractAfter];, #nlink(<string:6_join_split_extract.extractBefore>)[extractBefore];, #nlink(<string:6_join_split_extract.extract>)[extract];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
