#import "../nelson_help.typ": *

= issymmetric <linear_algebra:5_matrix_properties.issymmetric>

Computes if matrix is symmetric.

== Syntax

- #raw("res = issymmetric(x)");
- #raw("res = issymmetric(x, 'skew')");
- #raw("res = issymmetric(x, 'nonskew')");
- #raw("res = issymmetric(x, tol)");

== Input argument

/ x: a numeric value: scalar or matrix (double or single, integers, logical).
/ tol: a numeric value: finite and \>\= 0.

== Output argument

/ res: a logical.

== Description

#strong[issymmetric(x)]; computes if matrix is symmetric.

 With 'nonskew' argument, x square matrix, x is symmetric if it is equal to its nonconjugate transpose, x \= x.'

 With 'skew' argument, x square matrix, x is symmetric if it is equal to its nonconjugate transpose, x \= -x.'


== Example

``````matlab
issymmetric([1, 2; 2, 1])
issymmetric([1, 2.1; 2, 1.1], 0.2)
A = [0 1 -2 5; -1 0 3 -4; 2 -3 0 6; -5 4 -6 0];
issymmetric(A, 'skew')
issymmetric(A, 'nonskew')
``````


== See also

#nlink(<linear_algebra:5_matrix_properties.ishermitian>)[ishermitian];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
