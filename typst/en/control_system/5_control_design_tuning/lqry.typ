#import "../nelson_help.typ": *

= lqry <control_system:5_control_design_tuning.lqry>

Form linear-quadratic (LQ) state-feedback regulator with output weighting.

== Syntax

- #raw("[K, S, e] = lqry(sys, Q, R, N)");

== Input argument

/ sys: LTI model
/ Q: State-cost weighted matrix
/ R: Input-cost weighted matrix
/ N: Optional cross term matrix: 0 by default.

== Output argument

/ K: Optimal gain: row vector.
/ S: Solution of the Algebraic Riccati Equation.
/ e: Poles of the closed-loop system: column vector.

== Description

The function #strong[lqry]; computes and returns the optimal gain matrix (#strong[K];), the Riccati solution (#strong[S];), and the closed-loop eigenvalues (#strong[e];) for a given state-space model (#strong[sys];) with specified weights (#strong[Q];, #strong[R];, #strong[N];).

 The plant data is defined by the matrices #strong[A];, #strong[B];, #strong[C];, and #strong[D];, representing continuous- or discrete-time dynamics.

 If the parameter #strong[N]; is not provided, it defaults to N\=0.

 The closed-loop eigenvalues are determined by the eigenvalues of the matrix #strong[A - B \* K];.


== Example

``````matlab
A = [0.6, 0.25; 0, 0.9];
B = [0; 10];
C = [11, 0];
D = 0;
Q = 2;
R = 1;
[K, S, e] = lqry(A, B, C, D, Q, R)
``````


== See also

#nlink(<control_system:5_control_design_tuning.lqr>)[lqr];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
