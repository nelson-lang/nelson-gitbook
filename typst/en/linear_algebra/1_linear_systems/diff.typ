#import "../nelson_help.typ": *

= diff <linear_algebra:1_linear_systems.diff>

Differences and approximate derivatives.

== Syntax

- #raw("Y = diff(X)");
- #raw("Y = diff(X, n)");
- #raw("Y = diff(X, n, dim)");

== Input argument

/ X: vector or matrix (real or single)
/ n: difference order: positive integer scalar or \[\]
/ dim: dimension: positive integer scalar

== Output argument

/ Y: difference array: vector or matrix.

== Description

If #strong[X]; is a vector of length #strong[n];, result of #strong[diff(X)]; is a vector of first differences#strong[X(2) - X(1), ..., X(n) - X(n-1)];.

 If #strong[X]; is a matrix, result of #strong[diff(X)]; is a matrix of column differences along the first non-singleton dimension.


== Example

``````matlab
h = .01; x = 0:h:pi;
X = sin(x.^2);
R = diff(X)
``````


== See also

#nlink(<data_analysis:sum>)[sum];, #nlink(<data_analysis:prod>)[prod];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
