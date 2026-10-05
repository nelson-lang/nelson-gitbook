#import "../nelson_help.typ": *

= alphanumericsPattern <string:4_patterns.alphanumericsPattern>

Pattern for alphanumeric characters.

== Syntax

- #raw("R = alphanumericsPattern(...)");

== Description

#strong[alphanumericsPattern]; Pattern for alphanumeric characters.


== Example

``````matlab
pat = alphanumericsPattern; extract("A1 !", pat)
``````


== See also

#nlink(<string:4_patterns.lettersPattern>)[lettersPattern];, #nlink(<string:4_patterns.digitsPattern>)[digitsPattern];, #nlink(<string:4_patterns.characterListPattern>)[characterListPattern];, #nlink(<string:4_patterns.pattern>)[pattern];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
