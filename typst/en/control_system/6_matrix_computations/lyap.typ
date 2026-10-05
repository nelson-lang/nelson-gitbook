#import "../nelson_help.typ": *

= lyap <control_system:6_matrix_computations.lyap>

Continuous Lyapunov equation solution.

== Syntax

- #raw("X = lyap(A, Q)");

== Input argument

/ A: real matrix
/ Q: real matrix

== Output argument

/ X: matrix: solution of the Lyapunov equation.

== Description

#strong[X \= lyap(A, Q)]; resolves the Lyapunov equation.


== Example

``````matlab
A = [10, 20; -30, -40];
Q = [30, 10; 10, 10];
X = lyap (A, Q)
``````


== See also

#nlink(<control_system:6_matrix_computations.dlyap>)[dlyap];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
