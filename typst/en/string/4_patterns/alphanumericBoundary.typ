#import "../nelson_help.typ": *

= alphanumericBoundary <string:4_patterns.alphanumericBoundary>

Boundary for alphanumeric text.

== Syntax

- #raw("R = alphanumericBoundary(...)");

== Description

#strong[alphanumericBoundary]; Boundary for alphanumeric text.


== Example

``````matlab
pat = alphanumericBoundary("start") + alphanumericsPattern(3); extract("ID A12", pat)
``````


== See also

#nlink(<string:4_patterns.digitBoundary>)[digitBoundary];, #nlink(<string:4_patterns.letterBoundary>)[letterBoundary];, #nlink(<string:4_patterns.textBoundary>)[textBoundary];, #nlink(<string:4_patterns.pattern>)[pattern];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
