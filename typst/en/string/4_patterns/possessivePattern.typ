#import "../nelson_help.typ": *

= possessivePattern <string:4_patterns.possessivePattern>

Match pattern possessively.

== Syntax

- #raw("R = possessivePattern(...)");

== Description

#strong[possessivePattern]; Match pattern possessively.


== Example

``````matlab
pat = possessivePattern("a"); char(pat)
``````


== See also

#nlink(<string:4_patterns.asManyOfPattern>)[asManyOfPattern];, #nlink(<string:4_patterns.optionalPattern>)[optionalPattern];, #nlink(<string:4_patterns.pattern>)[pattern];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
