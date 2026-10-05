#import "../nelson_help.typ": *

= tzero <control_system:1_dynamic_system_models.tzero>

Invariant zeros of linear system.

== Syntax

- #raw("z = tzero(sys)");
- #raw("z = tzero(A, B, C, D)");
- #raw("z = tzero(A, B, C, D, E)");
- #raw("[z, nrank] = tzero(sys)");
- #raw("[z, nrank] = tzero(A, B, C, D)");
- #raw("[z, nrank] = tzero(A, B, C, D, E)");

== Input argument

/ sys: a LTI model.
/ A: State matrix: Nx-by-Nx matrix.
/ B: Input-to-state matrix: Nx-by-Nu matrix.
/ C: State-to-output matrix: Ny-by-Nx matrix.
/ D: Feedthrough matrix: Ny-by-Nu matrix.
/ E: Nx-by-Nx matrix.

== Output argument

/ Z: Invariant zeros: column vector.
/ nrank: Normal rank: positive integer.

== Description

#strong[tzero]; function is employed to extract the invariant zeros of a Multiple Input, Multiple Output (MIMO) dynamic system described by the system model #strong[sys];.

 In cases where #strong[sys]; is a minimal realization, these invariant zeros coincide with the transmission zeros of the system.


== Example

``````matlab
A = [1 2; 3 4];
B = [1; 0];
C = [1 0];
D = 0;
sys = ss(A, B, C, D);
z = tzero(sys)
[z, nrank] = tzero(sys)
``````


== See also

#nlink(<control_system:2_model_conversion_interconnection.append>)[append];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
