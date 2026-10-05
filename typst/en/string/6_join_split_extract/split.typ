#import "../nelson_help.typ": *

= split <string:6_join_split_extract.split>

Split text at delimiters.

== Syntax

- #raw("R = split(...)");

== Description

#strong[split]; Split text at delimiters.


== Example

``````matlab
split("a,b,c", ",")
``````


== See also

#nlink(<string:6_join_split_extract.splitlines>)[splitlines];, #nlink(<string:6_join_split_extract.strsplit>)[strsplit];, #nlink(<string:6_join_split_extract.join>)[join];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
