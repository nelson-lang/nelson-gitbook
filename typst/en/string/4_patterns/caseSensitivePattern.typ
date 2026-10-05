#import "../nelson_help.typ": *

= caseSensitivePattern <string:4_patterns.caseSensitivePattern>

Match pattern using case.

== Syntax

- #raw("R = caseSensitivePattern(...)");

== Description

#strong[caseSensitivePattern]; Match pattern using case.


== Example

``````matlab
pat = caseSensitivePattern("nelson"); extract("Nelson nelson", pat)
``````


== See also

#nlink(<string:4_patterns.caseInsensitivePattern>)[caseInsensitivePattern];, #nlink(<string:4_patterns.pattern>)[pattern];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
