#import "../nelson_help.typ": *

= strsplit <string:6_join_split_extract.strsplit>

Split character vector at delimiters.

== Syntax

- #raw("R = strsplit(...)");

== Description

#strong[strsplit]; Split character vector at delimiters.


== Example

``````matlab
strsplit("a,b,c", ",")
``````


== See also

#nlink(<string:6_join_split_extract.split>)[split];, #nlink(<string:6_join_split_extract.strjoin>)[strjoin];, #nlink(<string:6_join_split_extract.strtok>)[strtok];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
