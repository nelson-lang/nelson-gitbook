#import "../nelson_help.typ": *

= asFewOfPattern <string:4_patterns.asFewOfPattern>

Repeat pattern as few times as possible.

== Syntax

- #raw("R = asFewOfPattern(...)");

== Description

#strong[asFewOfPattern]; Repeat pattern as few times as possible.


== Example

``````matlab
pat = asFewOfPattern("b"); extract("abbbc", "a" + pat + "c")
``````


== See also

#nlink(<string:4_patterns.asManyOfPattern>)[asManyOfPattern];, #nlink(<string:4_patterns.optionalPattern>)[optionalPattern];, #nlink(<string:4_patterns.pattern>)[pattern];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
