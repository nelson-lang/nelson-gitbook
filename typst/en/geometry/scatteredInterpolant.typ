#import "nelson_help.typ": *

= scatteredInterpolant <geometry:scatteredInterpolant>

Scattered data interpolant object

== Syntax

- #raw("F = scatteredInterpolant(P, V)");
- #raw("F = scatteredInterpolant(x, y, V)");
- #raw("F = scatteredInterpolant(x, y, z, V)");
- #raw("F = scatteredInterpolant(P, V, method)");
- #raw("F = scatteredInterpolant(P, V, method, extrapolationMethod)");
- #raw("Vq = evaluate(F, Q)");
- #raw("Vq = F(xq, yq)");

== Description

#strong[scatteredInterpolant]; stores scattered sample points and values for repeated interpolation queries.


== Example

Evaluate an interpolant at a query point.

``````matlab
P = [0 0; 1 0; 1 1; 0 1];
V = P(:, 1) + P(:, 2);
F = scatteredInterpolant(P, V);
Vq = evaluate(F, [0.25 0.25])
``````


== See also

#nlink(<geometry:griddata>)[griddata];, #nlink(<geometry:delaunayTriangulation>)[delaunayTriangulation];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Initial version.],
)

// Author: Allan CORNET
