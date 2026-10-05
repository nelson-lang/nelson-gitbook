#import "../nelson_help.typ": *

= acker <control_system:5_control_design_tuning.acker>

Pole placement gain selection using Ackermann's formula.

== Syntax

- #raw("K = acker(A, B, P)");

== Input argument

/ A: State matrix: Nx-by-Nx matrix
/ B: Input-to-state matrix: Nx-by-Nu matrix
/ P: Desired closed-loop pole location vector.

== Output argument

/ K: feedback gain matrix.

== Description

The function #strong[acker]; computes the feedback gain matrix #strong[K]; for a single-input system described by the state-space matrices #strong[A]; and #strong[B];.

 The closed-loop poles of the system under the feedback law #strong[u \= -Kx]; are determined by the specified vector #strong[P];, where #strong[P]; represents the desired pole locations.

 The closed-loop poles are essentially the eigenvalues of the matrix #strong[A - B\*K];, calculated as #strong[P \= eig(A - B\*K)];.

 

 This algorithm uses Ackermann's formula.

 However, users should be aware that this method may not be numerically reliable, particularly for systems of order greater than 10 or for systems that are weakly controllable.

 If the algorithm encounters numerical instability or if the closed-loop poles deviate significantly (more than 10%) from the desired locations specified in #strong[P];, a warning message is issued to alert the user about potential issues.

 Users are advised to exercise caution and consider alternative methods for higher-order or weakly controllable systems.


== Example

``````matlab
A = [0 1 0; 0 0 1;-1 -5 -6];
B = [ 0; 0; 1];
P = [-10 -2-4i -2+4i];
K = acker(A, B, P)
``````


== See also

#nlink(<control_system:6_matrix_computations.cloop>)[cloop];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
