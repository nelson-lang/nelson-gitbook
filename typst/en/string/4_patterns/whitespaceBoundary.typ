#import "../nelson_help.typ": *

= whitespaceBoundary <string:4_patterns.whitespaceBoundary>

Boundary for whitespace text.

== Syntax

- #raw("R = whitespaceBoundary(...)");

== Description

#strong[whitespaceBoundary]; Boundary for whitespace text.


== Example

``````matlab
pat = whitespaceBoundary("start") + whitespacePattern; extract("abc def", pat)
``````


== See also

#nlink(<string:4_patterns.whitespacePattern>)[whitespacePattern];, #nlink(<string:4_patterns.textBoundary>)[textBoundary];, #nlink(<string:4_patterns.pattern>)[pattern];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
