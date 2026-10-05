#import "../nelson_help.typ": *

= lookBehindBoundary <string:4_patterns.lookBehindBoundary>

Boundary after a pattern.

== Syntax

- #raw("R = lookBehindBoundary(...)");

== Description

#strong[lookBehindBoundary]; Boundary after a pattern.


== Example

``````matlab
pat = lookBehindBoundary("abc") + digitsPattern(3); extract("abc123", pat)
``````


== See also

#nlink(<string:4_patterns.lookAheadBoundary>)[lookAheadBoundary];, #nlink(<string:4_patterns.textBoundary>)[textBoundary];, #nlink(<string:4_patterns.pattern>)[pattern];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
