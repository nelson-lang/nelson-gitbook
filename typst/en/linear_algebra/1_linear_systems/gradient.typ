#import "../nelson_help.typ": *

= gradient <linear_algebra:1_linear_systems.gradient>

Numerical gradient.

== Syntax

- #raw("FX = gradient(F)");
- #raw("[FX, FY] = gradient(F)");
- #raw("[FX, FY, FZ, ..., FN] = gradient(F)");
- #raw("[...] = gradient(F, h)");
- #raw("[...] = gradient(F, hx, hy, ... , hN)");

== Input argument

/ F: Input array: vector, matrix or multidimensional array.
/ h: Uniform spacing between points: scalar or 1 (default).
/ hx, hy, ..., hN: Spacing between points: vector, scalar or 1 (default).

== Output argument

/ FX, FY, FZ, ..., FN: Numerical gradients: array.

== Description

#strong[gradient(F)]; calculates the one-dimensional numerical gradient of the vector or matrix F.

 The output FX represents the differences in the x (horizontal) direction, corresponding to ∂F\/∂x.

 It assumes that the spacing between points is 1.

 #strong[gradient(F, h)]; allows for specifying a uniform spacing h between points in each direction.

 This uniform spacing can also be individually specified for each dimension of F using#strong[gradient(F, hx, hy, ..., hN)];.


== Example

``````matlab
[X, Y] = meshgrid(-2:0.2:2);
Z = X .* exp(-X.^2 - Y.^2);
[U, V] = gradient(Z, 0.2, 0.2);

``````


== See also

#nlink(<linear_algebra:1_linear_systems.diff>)[diff];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.3.0], [initial version],
)

// Author: Allan CORNET
