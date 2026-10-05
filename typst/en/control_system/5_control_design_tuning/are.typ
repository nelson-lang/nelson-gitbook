#import "../nelson_help.typ": *

= are <control_system:5_control_design_tuning.are>

Algebraic Riccati equation solution.

== Syntax

- #raw("X = are(A, B, C)");

== Input argument

/ A: square state matrix.
/ B: symmetric nonnegative matrix in the quadratic term.
/ C: symmetric state-weighting matrix.

== Output argument

/ X: stabilizing solution.

== Description

#strong[are]; solves #strong[A' \* X + X \* A - X \* B \* X + C \= 0];.


== Example

``````matlab

A = [-1 0; 0 -2];
B = [1 0; 0 0];
C = eye(2);
X = are(A, B, C)

``````


== See also

#nlink(<control_system:5_control_design_tuning.care>)[care];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
