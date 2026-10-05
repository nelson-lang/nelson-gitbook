#import "../nelson_help.typ": *

= textBoundary <string:4_patterns.textBoundary>

Start or end of text pattern.

== Syntax

- #raw("R = textBoundary(...)");

== Description

#strong[textBoundary]; Start or end of text pattern.


== Example

``````matlab
pat = textBoundary("start") + lettersPattern(3) + textBoundary("end"); extract("abc", pat)
``````


== See also

#nlink(<string:4_patterns.lineBoundary>)[lineBoundary];, #nlink(<string:4_patterns.whitespaceBoundary>)[whitespaceBoundary];, #nlink(<string:4_patterns.pattern>)[pattern];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
