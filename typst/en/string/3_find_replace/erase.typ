#import "../nelson_help.typ": *

= erase <string:3_find_replace.erase>

Erase matching text.

== Syntax

- #raw("R = erase(...)");

== Description

#strong[erase]; Erase matching text.


== Example

``````matlab
erase("Hello World", " World")
``````


== See also

#nlink(<string:3_find_replace.eraseBetween>)[eraseBetween];, #nlink(<string:3_find_replace.replace>)[replace];, #nlink(<string:3_find_replace.strrep>)[strrep];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
