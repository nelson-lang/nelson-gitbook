#import "../nelson_help.typ": *

= compreal <control_system:6_matrix_computations.compreal>

Companion realization of transfer functions.

== Syntax

- #raw("[A, B, C, D, E] = compreal(numerator, denominator)");

== Input argument

/ numerator: a vector or matrix
/ denominator: a vector

== Output argument

/ A (n x n): Represents the system's state-transition matrix. It describes how the system's internal state evolves over time.
/ B (n x m): Describes the input-to-state mapping. It shows how control inputs affect the change in the system's state.
/ C (p x n): Represents the state-to-output mapping. It shows how the system's state variables are related to the system's outputs.
/ D (p x m): Describes the direct feedthrough from inputs to outputs. In many systems, this matrix is zero because there is no direct feedthrough.
/ E (n x n): matrix.

== Description

#strong[\[A, B, C, D, E\] \= compreal(numerator, denominator)]; calculates a state-space realization represented by matrices A, B, C, D, and E.

 The #strong[E]; matrix is an empty matrix (identity matrix) when there are at least as many poles as zeros.

 However, if there are more zeros than poles, the #strong[E]; matrix becomes singular.


== Example

``````matlab
numerator = [0 10 10];
denominator = [1 1 10];
[A, B, C, D, E] = compreal(numerator, denominator)
``````


== See also

#nlink(<control_system:1_dynamic_system_models.tf>)[tf];, #nlink(<control_system:1_dynamic_system_models.ss>)[ss];, #nlink(<linear_algebra:3_eigen_singular_values.balance>)[balance];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
