#import "../nelson_help.typ": *

= obsvf <control_system:6_matrix_computations.obsvf>

Compute observability staircase form.

== Syntax

- #raw("[Abar, Bbar, Cbar, T, k] = obsvf(A, B, C)");
- #raw("[Abar, Bbar, Cbar, T, k] = obsvf(A, B, C, tol)");

== Input argument

/ A: State matrix: Nx-by-Nx matrix
/ B: Input-to-state matrix: Nx-by-Nu matrix
/ C: Output-to-state matrix: Ny-by-Nx matrix
/ tol: scalar real (tolerance).

== Output argument

/ Abar: Observability staircase state matrix.
/ Bbar: Observability staircase input matrix.
/ Cbar: Observability staircase output matrix.
/ T: Similarity transform matrix.
/ k: Vector: number of observable states.

== Description

#strong[obsvf(A, B, C)]; decomposes the given state-space system, characterized by matrices #strong[A];, #strong[B];, and #strong[C];, into the observability staircase form, resulting in transformed matrices #strong[Abar];, #strong[Bbar];, and #strong[Cbar];.

 It also provides a similarity transformation matrix #strong[T]; and a vector #strong[k];.

 The length of vector #strong[k]; corresponds to the number of states in #strong[A];, and each entry in #strong[k]; signifies the number of observable states factored out at each step of the transformation matrix computation.

 The non-zero elements in #strong[k]; indicate the number of iterations needed for #strong[T]; calculation, and the sum of #strong[k]; represents the number of states in Ao, the observable portion of #strong[Abar];.


== Example

``````matlab
A = [-1.5  -0.5; 1     0];
B = [0.5; 0];
C = [0   1];
[Abar, Bbar, Cbar, T, k] = obsvf(A, B, C)
``````


== See also

#nlink(<control_system:6_matrix_computations.obsv>)[obsv];, #nlink(<control_system:6_matrix_computations.ctrbf>)[ctrbf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
