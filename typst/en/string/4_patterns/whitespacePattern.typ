#import "../nelson_help.typ": *

= whitespacePattern <string:4_patterns.whitespacePattern>

Pattern for whitespace characters.

== Syntax

- #raw("R = whitespacePattern(...)");

== Description

#strong[whitespacePattern]; Pattern for whitespace characters.


== Example

``````matlab
pat = whitespacePattern; extract("a b", pat)
``````


== See also

#nlink(<string:4_patterns.whitespaceBoundary>)[whitespaceBoundary];, #nlink(<string:4_patterns.alphanumericsPattern>)[alphanumericsPattern];, #nlink(<string:4_patterns.pattern>)[pattern];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
