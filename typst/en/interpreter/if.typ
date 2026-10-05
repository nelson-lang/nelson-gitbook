#import "nelson_help.typ": *

= if <interpreter:if>

conditional statement.

== Syntax

- #raw("if conditional_expression_1, statements_1, elseif conditional_expression_2, statements_2, else statements_N end");

== Description

#strong[if]; and#strong[else]; statements form a control structure for conditional execution.


== Example

``````matlab
i = 0;
if i == 0
  disp('ok')
elseif i == 1
  disp('not ok 1')
else
  disp('not ok 2')
end
``````


== See also

#nlink(<interpreter:for>)[for];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
