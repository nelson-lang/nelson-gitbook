#import "nelson_help.typ": *

= temporary result indexing <interpreter:temporary_result_indexing>

index into the result of a function call or expression.

== Syntax

- #raw("f().field");
- #raw("f()(index)");
- #raw("f(){index}");
- #raw("(expression).field");
- #raw("(expression)(index)");
- #raw("(expression){index}");

== Description

Temporary result indexing applies field, parenthesis, or brace indexing directly to the result of a function call or expression.

 This syntax avoids assigning an intermediate value when only one field or element is needed.

 Supported forms include dot indexing, matrix or array indexing with parentheses, and cell content indexing with braces.


== Examples

Index a function call result.

``````matlab

names = dir(nelsonroot())(3).name;
secondCharacter = dir(nelsonroot())(3).name(2);

``````

Index literal temporary values.

``````matlab

x = [10 20 30](2);
y = {10, 20}{2};
z = 'abc'(2);

``````


== See also

#nlink(<interpreter:function>)[function];, #nlink(<interpreter:name_value_syntax>)[name\=value];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
