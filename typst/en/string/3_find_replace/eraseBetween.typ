#import "../nelson_help.typ": *

= eraseBetween <string:3_find_replace.eraseBetween>

Erase text between boundaries.

== Syntax

- #raw("R = eraseBetween(...)");

== Description

#strong[eraseBetween]; Erase text between boundaries.


== Example

``````matlab
eraseBetween("a[secret]b", "[", "]")
``````


== See also

#nlink(<string:3_find_replace.erase>)[erase];, #nlink(<string:3_find_replace.replaceBetween>)[replaceBetween];, #nlink(<string:6_join_split_extract.extractBetween>)[extractBetween];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
