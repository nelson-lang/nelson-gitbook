#import "../nelson_help.typ": *

= ctrbf <control_system:6_matrix_computations.ctrbf>

Compute controllability staircase form.

== Syntax

- #raw("[Abar, Bbar, Cbar, T, k] = ctrbf(A, B, C)");
- #raw("[Abar, Bbar, Cbar, T, k] = ctrbf(A, B, C, tol)");

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

#strong[ctrbf(A, B, C)]; decomposes the given state-space system, defined by matrices #strong[A];, #strong[B];, and #strong[C];, into the controllability staircase form.

 This results in transformed matrices #strong[Abar];,#strong[Bbar];, and #strong[Cbar];, along with a similarity transformation matrix #strong[T]; and a vector #strong[k];.

 The length of vector #strong[k]; is equal to the order of the system represented by #strong[A];, and each entry in #strong[k]; denotes the number of controllable states factored out at each step of the transformation matrix computation.

 The non-zero elements in #strong[k]; indicate the number of iterations required for #strong[T]; calculation, and the sum of #strong[k]; corresponds to the number of states in #strong[Ac];, the controllable portion of #strong[Abar];.


== Example

``````matlab
A = [-1.5  -0.5; 1     0];
B = [0.5; 0];
C = [0   1];
[Abar, Bbar, Cbar, T, k] = ctrbf(A, B, C)
``````


== See also

#nlink(<control_system:6_matrix_computations.ctrb>)[ctrb];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
