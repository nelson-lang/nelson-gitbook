#import "nelson_help.typ": *

= plus <operators:plus>

Addition, + operator

== Syntax

- #raw("C = plus(A, B)");
- #raw("C = A + B");

== Input argument

/ A: a variable
/ B: a variable

== Output argument

/ C: result of A + B

== Description

#strong[C \= plus(A, B)]; performs addition A + B variables.


== Examples

``````matlab
plus(3, 4)
3 + 4
``````

``````matlab
[1, 2] + 1
plus([1, 2], 1)
``````

``````matlab
ones(0, 0) + 1
``````

Add a character code and a numeric value.

``````matlab
char(65) + 1
char(65) + int8([1 2])
``````


== See also

#nlink(<operators:minus>)[minus];, #nlink(<operators:uplus>)[uplus];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
