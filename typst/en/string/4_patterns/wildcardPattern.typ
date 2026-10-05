#import "../nelson_help.typ": *

= wildcardPattern <string:4_patterns.wildcardPattern>

Pattern for wildcard text.

== Syntax

- #raw("R = wildcardPattern(...)");

== Description

#strong[wildcardPattern]; Pattern for wildcard text.


== Example

``````matlab
pat = wildcardPattern; extract("file.txt", "file" + pat + ".txt")
``````


== See also

#nlink(<string:4_patterns.characterListPattern>)[characterListPattern];, #nlink(<string:4_patterns.pattern>)[pattern];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
