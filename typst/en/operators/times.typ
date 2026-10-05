#import "nelson_help.typ": *

= mtimes <operators:times>

Element wise multiplication, .\* operator

== Syntax

- #raw("C = times(A, B)");
- #raw("C = A .* B");

== Input argument

/ A: a variable
/ B: a variable

== Output argument

/ C: result of A .\* B

== Description

#strong[C \= times(A, B)]; performs element wise multiplication operation: A .\* B.


== Examples

``````matlab
times(3, 4)
3 .* 4
``````

``````matlab
M1 = [2 6 10; 4 8 70];
M2 = [-25 88 1; 23 29 41];
M1 .* M2
``````


== See also

#nlink(<operators:mtimes>)[mtimes];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
