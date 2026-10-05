#import "../nelson_help.typ": *

= regexpPattern <string:5_regular_expressions.regexpPattern>

Pattern from regular expression.

== Syntax

- #raw("R = regexpPattern(...)");

== Description

#strong[regexpPattern]; Pattern from regular expression.


== Example

``````matlab
pat = regexpPattern('\d+'); extract("abc123", pat)
``````


== See also

#nlink(<string:5_regular_expressions.regexp>)[regexp];, #nlink(<string:5_regular_expressions.regexprep>)[regexprep];, #nlink(<string:4_patterns.pattern>)[pattern];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
