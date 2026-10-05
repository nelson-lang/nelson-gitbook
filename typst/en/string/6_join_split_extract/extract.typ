#import "../nelson_help.typ": *

= extract <string:6_join_split_extract.extract>

Extract matching text.

== Syntax

- #raw("R = extract(...)");

== Description

#strong[extract]; Extract matching text.


== Example

``````matlab
extract("Hello World", regexpPattern('. *'))
``````


== See also

#nlink(<string:6_join_split_extract.extractAfter>)[extractAfter];, #nlink(<string:6_join_split_extract.extractBefore>)[extractBefore];, #nlink(<string:6_join_split_extract.extractBetween>)[extractBetween];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
