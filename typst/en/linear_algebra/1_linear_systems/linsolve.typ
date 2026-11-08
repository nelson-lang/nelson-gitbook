#import "../nelson_help.typ": *

= linsolve <linear_algebra:1_linear_systems.linsolve>

Solve a linear system of equations.

== Syntax

- #raw("X = linsolve(A, B)");
- #raw("X = linsolve(A, B, opts)");
- #raw("[X, r] = linsolve(...)");

== Input argument

/ A: a coefficient matrix.
/ B: the right-hand side.
/ opts: a structure of options; field #strong[TRANSA]; solves #strong[A'\*X \= B];.

== Output argument

/ X: the solution of #strong[A\*X \= B];.
/ r: the reciprocal condition number estimate of #strong[A];.

== Description

#strong[X \= linsolve(A, B)]; solves the linear system #strong[A\*X \= B];.

 #strong[X \= linsolve(A, B, opts)]; uses the options in #strong[opts];; set #strong[opts.TRANSA \= true]; to solve #strong[A'\*X \= B];.


== Example

``````matlab
X = linsolve([2 0; 0 4], [6; 8])
``````


== See also

#nlink(<linear_algebra:1_linear_systems.inv>)[inv];, #nlink(<linear_algebra:1_linear_systems.rref>)[rref];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
