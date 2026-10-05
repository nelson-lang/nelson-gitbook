#import "../nelson_help.typ": *

= digitBoundary <string:4_patterns.digitBoundary>

Boundary for digit text.

== Syntax

- #raw("R = digitBoundary(...)");

== Description

#strong[digitBoundary]; Boundary for digit text.


== Example

``````matlab
pat = digitBoundary("start") + digitsPattern(3); extract("ID123 A45", pat)
``````


== See also

#nlink(<string:4_patterns.letterBoundary>)[letterBoundary];, #nlink(<string:4_patterns.alphanumericBoundary>)[alphanumericBoundary];, #nlink(<string:4_patterns.digitsPattern>)[digitsPattern];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
