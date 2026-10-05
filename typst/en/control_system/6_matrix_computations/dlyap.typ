#import "../nelson_help.typ": *

= dlyap <control_system:6_matrix_computations.dlyap>

Discrete-time Lyapunov equations.

== Syntax

- #raw("X = dlyap(A, Q)");

== Input argument

/ A: real matrix
/ Q: real matrix

== Output argument

/ X: matrix: solution of the discrete-time Lyapunov equation.

== Description

#strong[X \= dlyap(A, Q)]; resolves the Discrete-time Lyapunov equation.


== Example

``````matlab
A = [10, 20; -30, -40];
Q = [30, 10; 10, 10];
X = dlyap (A, Q)
``````


== See also

#nlink(<control_system:6_matrix_computations.lyap>)[lyap];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
