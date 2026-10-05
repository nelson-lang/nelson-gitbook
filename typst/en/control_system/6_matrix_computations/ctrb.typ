#import "../nelson_help.typ": *

= ctrb <control_system:6_matrix_computations.ctrb>

Controllability of state-space model.

== Syntax

- #raw("Co = ctrb(A, B)");
- #raw("Co = ctrb(sys)");

== Input argument

/ sys: State-space model
/ A: State matrix: Nx-by-Nx matrix
/ B: Input-to-state matrix: Nx-by-Nu matrix

== Output argument

/ Co: Controllability matrix.

== Description

Controllability in a dynamic system refers to the system's ability to be guided to any desired state within a finite timeframe through the application of suitable control signals.

 This property is commonly known as reachability.

 The function #strong[ctrb]; is employed to calculate a controllability matrix, either from state matrices or a state-space model.

 The resulting matrix serves as a tool to assess and confirm the controllability of the system.


== Example

``````matlab
A = [1 2; 0 3];
B = [1; 1];
C = eye(2);
D = zeros(2, 1);
sys = ss(A, B, C, D);
Co = ctrb(sys)
``````


== See also

#nlink(<control_system:6_matrix_computations.ctrbf>)[ctrbf];, #nlink(<control_system:6_matrix_computations.obsv>)[obsv];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
