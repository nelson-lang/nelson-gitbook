#import "../nelson_help.typ": *

= optionalPattern <string:4_patterns.optionalPattern>

Make pattern optional.

== Syntax

- #raw("R = optionalPattern(...)");

== Description

#strong[optionalPattern]; Make pattern optional.


== Example

``````matlab
pat = optionalPattern("u"); extract(["color"; "colour"], "colo" + pat + "r")
``````


== See also

#nlink(<string:4_patterns.asManyOfPattern>)[asManyOfPattern];, #nlink(<string:4_patterns.asFewOfPattern>)[asFewOfPattern];, #nlink(<string:4_patterns.pattern>)[pattern];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
