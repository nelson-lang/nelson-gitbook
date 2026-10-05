#import "../nelson_help.typ": *

= trapz <linear_algebra:1_linear_systems.trapz>

Trapezoidal numerical integration.

== Syntax

- #raw("Z = trapz(Y)");
- #raw("Z = trapz(X, Y)");
- #raw("Z = trapz(Y, dim)");
- #raw("Z = trapz(X, Y, dim)");

== Input argument

/ Y: vector or matrix (real or single)
/ X: point spacing: vector
/ dim: dimension: positive integer scalar

== Output argument

/ Z: integral: scalar, vector or matrix.

== Description

#strong[trapz(Y)]; computes the approximate integral of #strong[Y]; using the trapezoidal method with unit spacing, along the first non-singleton dimension.

 #strong[trapz(X, Y)]; integrates #strong[Y]; with respect to the coordinates given by #strong[X];.

 Use #strong[dim]; to integrate along a specific dimension.


== Example

``````matlab
x = 0:0.1:pi;
Z = trapz(x, sin(x))
``````


== See also

#nlink(<linear_algebra:1_linear_systems.cumtrapz>)[cumtrapz];, #nlink(<data_analysis:sum>)[sum];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
