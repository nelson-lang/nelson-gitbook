#import "../nelson_help.typ": *

= ssdata <control_system:1_dynamic_system_models.ssdata>

Access state-space model data.

== Syntax

- #raw("[A, B, C, D] = ssdata(sys)");
- #raw("[A, B, C, D, Ts] = ssdata(sys)");

== Input argument

/ sys: LTI model.

== Output argument

/ A: State matrix: Nx-by-Nx matrix.
/ B: Input-to-state matrix: Nx-by-Nu matrix.
/ C: State-to-output matrix: Ny-by-Nx matrix.
/ D: Feedthrough matrix: Ny-by-Nu matrix.
/ TS: Sample time: scalar.

== Description

The function #strong[ssdata(sys)]; retrieves the matrix data #strong[A];, #strong[B];, #strong[C];, #strong[D]; from the state-space model (LTI array) represented by #strong[sys];.

 If #strong[sys]; is initially in the form of a transfer function or zero-pole-gain model (LTI array), it is automatically converted to the state-space representation before extracting the matrix data.


== Example

``````matlab
sysIn = ss([1 0;0 -2], [-1;0], [2 1], 0, 3.2);
[a, b, c, d, Ts] = ssdata(sysIn)
``````


== See also

#nlink(<control_system:1_dynamic_system_models.tf>)[tf];, #nlink(<control_system:1_dynamic_system_models.ss>)[ss];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
