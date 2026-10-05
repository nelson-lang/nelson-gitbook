#import "../nelson_help.typ": *

= svd <linear_algebra:3_eigen_singular_values.svd>

Singular Value Decomposition.

== Syntax

- #raw("s = svd(M)");
- #raw("[U, S, V] = svd(M)");
- #raw("[U, S, V] = svd(M, 0)");
- #raw("[U, S, V] = svd(M, 'econ')");

== Input argument

/ M: a numeric value: matrix (double or single)

== Output argument

/ s: real vector (singular values) by descending order.
/ U: left singular values.
/ S: real diagonal matrix (singular values)
/ V: right singular values.

== Description

#strong[svd]; computes the Singular Value Decomposition of a matrix.

 For an

 #latex("m \\times n"); matrix #strong[M];, the SVD is:

 #latex("M = U\\Sigma V^T"); where:

 

- #latex("U");is an
- #latex("\\Sigma");is an
- #latex("V^T");is an The singular values

 #latex("\\sigma_i"); are arranged in decreasing order:

 #latex("\\sigma_1 \\geq \\sigma_2 \\geq \\ldots \\geq 0");
== Example

``````matlab
X = eye(3, 3);
s = svd(X)
[U, S, V] = svd(X)
``````


== See also

#nlink(<linear_algebra:3_eigen_singular_values.eig>)[eig];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
