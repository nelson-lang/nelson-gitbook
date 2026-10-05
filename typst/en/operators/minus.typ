#import "nelson_help.typ": *

= minus <operators:minus>

Subtraction, - operator

== Syntax

- #raw("C = minus(A, B)");
- #raw("C = A - B");

== Input argument

/ A: a variable
/ B: a variable

== Output argument

/ C: result of A - B

== Description

#strong[C \= minus(A, B)]; performs subtraction A - B variables.


== Examples

``````matlab
minus(3, 4)
3 - 4
``````

``````matlab
[1, 2] - 1
minus([1, 2], 1)
``````

``````matlab
ones(0, 0) - 1
``````

Subtract numeric values from character codes.

``````matlab
char(65) - 1
int8([1 2]) - char(65)
``````


== See also

#nlink(<operators:plus>)[plus];, #nlink(<operators:uminus>)[uminus];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
