#import "../nelson_help.typ": *

= maskedPattern <string:4_patterns.maskedPattern>

Pattern with display name.

== Syntax

- #raw("R = maskedPattern(...)");

== Description

#strong[maskedPattern]; Pattern with display name.


== Example

``````matlab
pat = maskedPattern(digitsPattern(3), "area code"); extract("phone 123", pat)
``````


== See also

#nlink(<string:4_patterns.namedPattern>)[namedPattern];, #nlink(<string:4_patterns.pattern>)[pattern];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
