#import "../nelson_help.typ": *

= asManyOfPattern <string:4_patterns.asManyOfPattern>

Repeat pattern as many times as possible.

== Syntax

- #raw("R = asManyOfPattern(...)");

== Description

#strong[asManyOfPattern]; Repeat pattern as many times as possible.


== Example

``````matlab
pat = asManyOfPattern("b"); extract("abbbc", "a" + pat + "c")
``````


== See also

#nlink(<string:4_patterns.asFewOfPattern>)[asFewOfPattern];, #nlink(<string:4_patterns.optionalPattern>)[optionalPattern];, #nlink(<string:4_patterns.pattern>)[pattern];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
