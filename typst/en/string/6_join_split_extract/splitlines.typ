#import "../nelson_help.typ": *

= splitlines <string:6_join_split_extract.splitlines>

Split text at line breaks.

== Syntax

- #raw("R = splitlines(...)");

== Description

#strong[splitlines]; Split text at line breaks.


== Example

``````matlab
splitlines("a" + newline + "b")
``````


== See also

#nlink(<string:6_join_split_extract.split>)[split];, #nlink(<string:1_create_convert_text.newline>)[newline];, #nlink(<string:6_join_split_extract.strsplit>)[strsplit];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
