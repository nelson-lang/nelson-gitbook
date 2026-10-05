#import "nelson_help.typ": *

= griddedInterpolant <special_functions:griddedInterpolant>

Gridded data interpolant object

== Syntax

- #raw("F = griddedInterpolant(x, v)");
- #raw("F = griddedInterpolant(x, v, method)");
- #raw("F = griddedInterpolant(x, v, method, extrapolationMethod)");
- #raw("F = griddedInterpolant(gridVecs, V)");
- #raw("F = griddedInterpolant(X1, X2, ..., Xn, V)");
- #raw("F = griddedInterpolant(V)");
- #raw("Vq = F(xq)");
- #raw("Vq = F(xq1, xq2, ..., xqn)");
- #raw("Vq = F(queryGridVecs)");

== Input argument

/ x: a vector of sample points (1-D grid), strictly increasing.
/ v: sample values at the sample points.
/ gridVecs: a cell array #strong[{x1, x2, ..., xn}]; of grid vectors, one per dimension of #strong[V];.
/ V: an array of sample values defined over the grid.
/ method: a character vector: #strong['linear']; (default), #strong['nearest'];, #strong['previous'];, #strong['next'];, #strong['pchip'];, #strong['cubic'];, #strong['spline'];, or #strong['makima'];.
/ extrapolationMethod: a character vector selecting the extrapolation rule: #strong['linear'];, #strong['nearest'];, #strong['previous'];, #strong['next'];, #strong['pchip'];, #strong['cubic'];, #strong['spline'];, #strong['makima'];, or #strong['none'];. The default matches #strong[method];.

== Output argument

/ F: a griddedInterpolant object.
/ Vq: interpolated values at the query points.

== Description

#strong[griddedInterpolant]; stores gridded sample points and values for repeated interpolation queries.

 The object exposes four properties that can be read and set: #strong[GridVectors]; (a cell array of grid vectors), #strong[Values];, #strong[Method];, and #strong[ExtrapolationMethod];.

 Evaluate the interpolant by calling the object like a function, either with one query array per dimension, or with a single cell array of query grid vectors.

 The #strong['cubic']; method uses cubic convolution and requires a grid with uniform spacing; on a non-uniform grid it switches to #strong['spline'];. Cubic convolution does not support extrapolation, so query points outside the grid return #strong[NaN]; when #strong[ExtrapolationMethod]; is #strong['cubic'];.


== Examples

1-D interpolation.

``````matlab
F = griddedInterpolant([1 2 3], [10 20 30]);
Vq = F(2.5)
``````

N-D grid given as a cell of grid vectors.

``````matlab
F = griddedInterpolant({1:3, 1:3}, magic(3));
Vq = F(2, 2)
``````

Spline interpolation and property readback.

``````matlab
F = griddedInterpolant([1 2 3], [10 20 30], 'spline');
Vq = F(2.5);
F.Method
F.ExtrapolationMethod
``````


== See also

#nlink(<special_functions:interp1>)[interp1];, #nlink(<special_functions:interpn>)[interpn];, #nlink(<geometry:scatteredInterpolant>)[scatteredInterpolant];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Initial version.],
)

// Author: Allan CORNET
