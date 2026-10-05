#import "../nelson_help.typ": *

= caseInsensitivePattern <string:4_patterns.caseInsensitivePattern>

Match pattern ignoring case.

== Syntax

- #raw("R = caseInsensitivePattern(...)");

== Description

#strong[caseInsensitivePattern]; Match pattern ignoring case.


== Example

``````matlab
pat = caseInsensitivePattern("nelson"); extract("Nelson", pat)
``````


== See also

#nlink(<string:4_patterns.caseSensitivePattern>)[caseSensitivePattern];, #nlink(<string:4_patterns.pattern>)[pattern];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
