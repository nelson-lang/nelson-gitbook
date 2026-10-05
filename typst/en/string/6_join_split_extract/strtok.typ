#import "../nelson_help.typ": *

= strtok <string:6_join_split_extract.strtok>

Select first token in text.

== Syntax

- #raw("R = strtok(...)");

== Description

#strong[strtok]; Select first token in text.


== Example

``````matlab
[token, rest] = strtok("one two")
``````


== See also

#nlink(<string:6_join_split_extract.strsplit>)[strsplit];, #nlink(<string:7_edit_text.strtrim>)[strtrim];, #nlink(<string:6_join_split_extract.strread>)[strread];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
