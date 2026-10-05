#import "../nelson_help.typ": *

= condeig <linear_algebra:5_matrix_properties.condeig>

Condition number with respect to eigenvalues.

== Syntax

- #raw("C = condeig(A)");
- #raw("[V, D, S] = condeig(A)");

== Input argument

/ A: Input matrix

== Output argument

/ C: a vector of condition numbers for the eigenvalues of A.

== Description

#strong[C \= condeig(A)]; returns a vector of condition numbers for the eigenvalues of #strong[A];.


== Example

``````matlab
A = [10, 20; 30, 40];
S = condeig(A)
``````


== See also

#nlink(<linear_algebra:3_eigen_singular_values.eig>)[eig];, #nlink(<linear_algebra:5_matrix_properties.cond>)[cond];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
