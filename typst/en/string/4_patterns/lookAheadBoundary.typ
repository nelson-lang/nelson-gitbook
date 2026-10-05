#import "../nelson_help.typ": *

= lookAheadBoundary <string:4_patterns.lookAheadBoundary>

Boundary before a pattern.

== Syntax

- #raw("R = lookAheadBoundary(...)");

== Description

#strong[lookAheadBoundary]; Boundary before a pattern.


== Example

``````matlab
pat = lookAheadBoundary(digitsPattern(3)); extract("abc123", lettersPattern(3) + pat)
``````


== See also

#nlink(<string:4_patterns.lookBehindBoundary>)[lookBehindBoundary];, #nlink(<string:4_patterns.textBoundary>)[textBoundary];, #nlink(<string:4_patterns.pattern>)[pattern];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
