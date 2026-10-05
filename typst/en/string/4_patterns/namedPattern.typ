#import "../nelson_help.typ": *

= namedPattern <string:4_patterns.namedPattern>

Named pattern.

== Syntax

- #raw("R = namedPattern(...)");

== Description

#strong[namedPattern]; Named pattern.


== Example

``````matlab
pat = namedPattern(digitsPattern(3), "code"); extract("code 123", pat)
``````


== See also

#nlink(<string:4_patterns.maskedPattern>)[maskedPattern];, #nlink(<string:4_patterns.pattern>)[pattern];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
