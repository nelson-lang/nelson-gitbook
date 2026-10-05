#import "../nelson_help.typ": *

= replaceBetween <string:3_find_replace.replaceBetween>

Replace text between boundaries.

== Syntax

- #raw("R = replaceBetween(...)");

== Description

#strong[replaceBetween]; Replace text between boundaries.


== Example

``````matlab
replaceBetween("a[old]b", "[", "]", "new")
``````


== See also

#nlink(<string:3_find_replace.eraseBetween>)[eraseBetween];, #nlink(<string:3_find_replace.replace>)[replace];, #nlink(<string:6_join_split_extract.extractBetween>)[extractBetween];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
