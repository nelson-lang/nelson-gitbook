#import "nelson_help.typ": *

= rdivide <operators:rdivide>

Right division, .\/ operator

== Syntax

- #raw("C = rdivide(A, B)");
- #raw("C = A ./ B");

== Input argument

/ A: a variable
/ B: a variable

== Output argument

/ C: result of A .\/ B

== Description

#strong[C \= rdivide(A, B)]; performs right division operation: A .\/\* B.


== Examples

``````matlab
rdivide(3, 4)
3 ./ 4
``````

``````matlab
M1 = [2];
M2 = [-25 88 1];
M1 ./ M2
``````


== See also

#nlink(<operators:ldivide>)[ldivide];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
