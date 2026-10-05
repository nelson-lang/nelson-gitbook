#import "../nelson_help.typ": *

= strjoin <string:6_join_split_extract.strjoin>

Join text with a delimiter.

== Syntax

- #raw("R = strjoin(...)");

== Description

#strong[strjoin]; Join text with a delimiter.


== Example

``````matlab
strjoin(["a", "b", "c"], ",")
``````


== See also

#nlink(<string:6_join_split_extract.join>)[join];, #nlink(<string:6_join_split_extract.strsplit>)[strsplit];, #nlink(<string:1_create_convert_text.strcat>)[strcat];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
