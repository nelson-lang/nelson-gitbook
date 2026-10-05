#import "../nelson_help.typ": *

= lqr <control_system:5_control_design_tuning.lqr>

Linear-Quadratic Regulator (LQR) design.

== Syntax

- #raw("[K, S, P] = lqr(sys, Q, R, N)");
- #raw("[K, S, P] = lqr(A, B, Q, R, N)");

== Input argument

/ sys: LTI model
/ Q: State-cost weighted matrix
/ R: Input-cost weighted matrix
/ N: Optional cross term matrix: 0 by default.
/ A: State matrix: n x n matrix.
/ B: Input-to-state matrix: n x m matrix.

== Output argument

/ K: Optimal gain: row vector.
/ S: Solution of the Algebraic Riccati Equation.
/ p: Poles of the closed-loop system: column vector.

== Description

In the context of continuous-time state-space matrices #strong[A]; and #strong[B];, the command #strong[\[K, S, P\] \= lqr(A, B, Q, R, N)]; computes the optimal gain matrix #strong[K];, the solution #strong[S]; to the associated algebraic Riccati equation, and the closed-loop poles #strong[P];.

 This syntax is applicable exclusively to continuous-time models.

 When applied to a continuous-time or discrete-time state-space model represented by #strong[sys];, the command #strong[\[K, S, P\] \= lqr(sys, Q, R, N)]; computes the optimal gain matrix #strong[K];, the solution #strong[S]; to the associated algebraic Riccati equation, and the closed-loop poles #strong[P];.

 The weight matrices #strong[Q]; and #strong[R]; govern the importance of states and inputs, and the cross term matrix #strong[N]; is zero by default when not specified.


== Example

``````matlab
A = [-0.313 56.7 0; -0.0139 -0.426 0; 0 56.7 0];
B = [0.232; 0.0203; 0];
C = [0 0 1];
D = 1;
Ts = 1.2;
sys1 = ss(A, B, C, D, Ts);
sys2 = ss(A, B, C, D);

P = 2;
Q = P * C' * C;
R = 2;
[K1, S1, e1] = lqr(sys1, Q, R)
[K2, S2, e2] = lqr(sys2, Q, R)

``````


== See also

#nlink(<control_system:5_control_design_tuning.care>)[care];, #nlink(<control_system:5_control_design_tuning.dare>)[dare];, #nlink(<control_system:5_control_design_tuning.lqe>)[lqe];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
