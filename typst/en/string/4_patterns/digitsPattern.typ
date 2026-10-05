#import "../nelson_help.typ": *

= digitsPattern <string:4_patterns.digitsPattern>

Pattern for digit characters.

== Syntax

- #raw("R = digitsPattern(...)");

== Description

#strong[digitsPattern]; Pattern for digit characters.


== Example

``````matlab
pat = digitsPattern; extract("abc123", pat)
``````


== See also

#nlink(<string:4_patterns.lettersPattern>)[lettersPattern];, #nlink(<string:4_patterns.alphanumericsPattern>)[alphanumericsPattern];, #nlink(<string:4_patterns.pattern>)[pattern];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
