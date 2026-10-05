#import "../nelson_help.typ": *

= characterListPattern <string:4_patterns.characterListPattern>

Pattern for listed characters.

== Syntax

- #raw("R = characterListPattern(...)");

== Description

#strong[characterListPattern]; Pattern for listed characters.


== Example

``````matlab
pat = characterListPattern("a", "c"); extract("abc123", pat)
``````


== See also

#nlink(<string:4_patterns.alphanumericsPattern>)[alphanumericsPattern];, #nlink(<string:4_patterns.wildcardPattern>)[wildcardPattern];, #nlink(<string:4_patterns.pattern>)[pattern];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
