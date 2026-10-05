#import "../nelson_help.typ": *

= kalman <control_system:5_control_design_tuning.kalman>

Design Kalman filter for state estimation.

== Syntax

- #raw("[kalmf, L, P, M, Z] = kalman(sys, Q, R, N)");
- #raw("[kalmf, L, P, M, Z] = kalman(sys, Q, R, N, sensors, known)");

== Input argument

/ sys: Plant model with process noise: state-space model.
/ Q: Process noise covariance: scalar or matrix.
/ R: Measurement noise covariance: scalar or matrix.
/ N: Noise cross covariance: scalar or matrix.
/ sensors: Measured outputs of sys: vector.
/ known: Known inputs of sys: vector.

== Output argument

/ kalmf: Kalman estimator: state-space model
/ L: Filter gains: matrix
/ P: Steady-state error covariances: matrix
/ M: Innovation gains of state estimators: matrix
/ Z: Steady-state error covariances: matrix

== Description

#strong[\[kalmf, L, P\] \= kalman(sys, Q, R, N)]; generates a Kalman filter using the provided plant model #strong[sys]; and noise covariance matrices #strong[Q];, #strong[R];, and #strong[N];.

 The function calculates a Kalman filter suitable for application in a Kalman estimator, as depicted in the following diagram.


== Example

``````matlab
A = [11.269   -0.4940    1.129; 1.0000         0         0;0    1.0000         0];
B = [-0.3832;  0.5919;  0.5191];
C = [1 0 0];
sys = ss(A,[B, B], C, 0);
Q = 1;
R = 1;
[kEst, l, p, m, z] = kalman(sys, Q, R, [])
``````


== See also

#nlink(<control_system:5_control_design_tuning.care>)[care];, #nlink(<control_system:5_control_design_tuning.dare>)[dare];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
