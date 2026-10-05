#import "../nelson_help.typ": *

= lettersPattern <string:4_patterns.lettersPattern>

Pattern for letter characters.

== Syntax

- #raw("R = lettersPattern(...)");

== Description

#strong[lettersPattern]; Pattern for letter characters.


== Example

``````matlab
pat = lettersPattern; extract("abc123", pat)
``````


== See also

#nlink(<string:4_patterns.digitsPattern>)[digitsPattern];, #nlink(<string:4_patterns.alphanumericsPattern>)[alphanumericsPattern];, #nlink(<string:4_patterns.pattern>)[pattern];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
