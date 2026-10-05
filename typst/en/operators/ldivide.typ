#import "nelson_help.typ": *

= ldivide <operators:ldivide>

Left division, .\\ operator.

== Syntax

- #raw("C = ldivide(A, B)");
- #raw("C = A .\\ B");

== Input argument

/ A: a variable
/ B: a variable

== Output argument

/ C: result of A .\\ B

== Description

#strong[C \= ldivide(A, B)]; returns the element-by-element left division of A and B.


== Examples

``````matlab
B = ones(3, 4)
A = B *2
A .\ B
``````

``````matlab
B = 2
A = B *2
A .\ B
``````


== See also

#nlink(<operators:rdivide>)[rdivide];, #nlink(<operators:mldivide>)[mldivide];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
