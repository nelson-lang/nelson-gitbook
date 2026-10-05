#import "../nelson_help.typ": *

= letterBoundary <string:4_patterns.letterBoundary>

Boundary for letter text.

== Syntax

- #raw("R = letterBoundary(...)");

== Description

#strong[letterBoundary]; Boundary for letter text.


== Example

``````matlab
pat = letterBoundary("start") + lettersPattern(3); extract("123abc", pat)
``````


== See also

#nlink(<string:4_patterns.digitBoundary>)[digitBoundary];, #nlink(<string:4_patterns.alphanumericBoundary>)[alphanumericBoundary];, #nlink(<string:4_patterns.lettersPattern>)[lettersPattern];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
