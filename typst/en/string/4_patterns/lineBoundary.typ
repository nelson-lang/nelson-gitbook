#import "../nelson_help.typ": *

= lineBoundary <string:4_patterns.lineBoundary>

Start or end of line pattern.

== Syntax

- #raw("R = lineBoundary(...)");

== Description

#strong[lineBoundary]; Start or end of line pattern.


== Example

``````matlab
pat = lineBoundary("start") + lettersPattern(5); extract(sprintf('first\nsecond'), pat)
``````


== See also

#nlink(<string:4_patterns.textBoundary>)[textBoundary];, #nlink(<string:4_patterns.whitespaceBoundary>)[whitespaceBoundary];, #nlink(<string:4_patterns.pattern>)[pattern];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
