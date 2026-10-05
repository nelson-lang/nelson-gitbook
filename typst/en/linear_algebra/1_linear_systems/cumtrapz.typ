#import "../nelson_help.typ": *

= cumtrapz <linear_algebra:1_linear_systems.cumtrapz>

Cumulative trapezoidal numerical integration.

== Syntax

- #raw("Z = cumtrapz(Y)");
- #raw("Z = cumtrapz(X, Y)");
- #raw("Z = cumtrapz(Y, dim)");
- #raw("Z = cumtrapz(X, Y, dim)");

== Input argument

/ Y: vector or matrix (real or single)
/ X: point spacing: vector
/ dim: dimension: positive integer scalar

== Output argument

/ Z: cumulative integral: same size as Y.

== Description

#strong[cumtrapz(Y)]; computes the cumulative integral of #strong[Y]; using the trapezoidal method with unit spacing, along the first non-singleton dimension.

 #strong[cumtrapz(X, Y)]; integrates #strong[Y]; with respect to the coordinates given by #strong[X];.

 The result has the same size as #strong[Y];, and its first value along the working dimension is #strong[0];.


== Example

``````matlab
x = 0:0.1:pi;
Z = cumtrapz(x, sin(x))
``````


== See also

#nlink(<linear_algebra:1_linear_systems.trapz>)[trapz];, #nlink(<data_analysis:cumsum>)[cumsum];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
