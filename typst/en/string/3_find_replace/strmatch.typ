#import "../nelson_help.typ": *

= strmatch <string:3_find_replace.strmatch>

Find strings that start with text.

== Syntax

- #raw("R = strmatch(...)");

== Description

#strong[strmatch]; Find strings that start with text.


== Example

``````matlab
strmatch("max", ["max"; "min"; "maximum"])
``````


== See also

#nlink(<string:3_find_replace.strfind>)[strfind];, #nlink(<string:3_find_replace.startsWith>)[startsWith];, #nlink(<string:8_compare_text.strcmp>)[strcmp];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
