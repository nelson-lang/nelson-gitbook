#import "../nelson_help.typ": *

= ishermitian <linear_algebra:5_matrix_properties.ishermitian>

Computes if matrix is hermitian or skew-hermitian.

== Syntax

- #raw("res = ishermitian(x)");
- #raw("res = ishermitian(x, 'skew')");
- #raw("res = ishermitian(x, 'nonskew')");

== Input argument

/ x: a numeric value: scalar or matrix (double or single, integers, logical).

== Output argument

/ res: a logical.

== Description

#strong[ishermitian(x)]; computes if matrix is hermitian or skew-hermitian.

 A matrix is skew-hermitian if the complex conjugate transpose of the matrix is equal to the negative of the original matrix.


== Example

``````matlab
ishermitian([1 0 1i; 0 1 0; -1i 0 1])
``````


== See also

#nlink(<linear_algebra:5_matrix_properties.issymmetric>)[issymmetric];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
