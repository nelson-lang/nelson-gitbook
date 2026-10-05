#import "../nelson_help.typ": *

= strread <string:6_join_split_extract.strread>

Read values from text.

== Syntax

- #raw("R = strread(...)");

== Description

#strong[strread]; Read values from text.


== Example

``````matlab
[A, B] = strread("1 one 2 two", "%d%s")
``````


== See also

#nlink(<string:6_join_split_extract.strsplit>)[strsplit];, #nlink(<string:6_join_split_extract.strtok>)[strtok];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
