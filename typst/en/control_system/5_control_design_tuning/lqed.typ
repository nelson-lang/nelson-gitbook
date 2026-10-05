#import "../nelson_help.typ": *

= lqed <control_system:5_control_design_tuning.lqed>

Calculates the discrete Kalman estimator configuration based on a continuous cost function.

== Syntax

- #raw("[L, P, Z, E] = LQED(A, G, C, Q, R, Ts)");

== Input argument

/ A: State matrix: n x n matrix.
/ G: Defines a matrix linking the process noise to the states.
/ C: The output matrix, with dimensions (q x n), where q is the number of outputs.
/ Q: State-cost weighted matrix
/ R: Input-cost weighted matrix
/ N: Optional cross term matrix: 0 by default.
/ Ts: sample time: scalare.

== Output argument

/ L: Kalman gain matrix.
/ P: Solution of the Discrete Algebraic Riccati Equation.
/ E: Closed-loop pole locations
/ Z: Discrete estimator poles

== Description

#strong[\[L, P, Z, E\] \= LQED(A, G, C, Q, R, Ts)]; Calculates the discrete Kalman gain matrix #strong[L]; to minimize the discrete estimation error, equivalent to the estimation error in the continuous system.


== Example

``````matlab
A = [10     1.2;  3.3     4];
B = [5     0;   0     6];
C = B;
D = [0,0;0,0];
R = [2,0;0,3];
Q = [5,0;0,4];
G = [6,0;0,7];
Ts = 0.004;

[L, P, Z, E] = lqed(A, G, C, Q, R, Ts)
``````


== See also

#nlink(<control_system:5_control_design_tuning.lqr>)[lqr];, #nlink(<control_system:5_control_design_tuning.lqe>)[lqe];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
