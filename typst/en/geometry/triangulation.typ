#import "nelson_help.typ": *

= triangulation <geometry:triangulation>

Triangulation object

== Syntax

- #raw("TR = triangulation(T, P)");
- #raw("TR = triangulation(T, x, y)");
- #raw("TR = triangulation(T, x, y, z)");
- #raw("E = edges(TR)");
- #raw("[idx, bary] = pointLocation(TR, Q)");

== Description

#strong[triangulation]; stores points and a connectivity list and provides topology queries.


== Example

Create a triangulation and locate a point.

``````matlab
P = [0 0; 1 0; 1 1; 0 1];
T = delaunayn(P);
TR = triangulation(T, P);
[idx, bary] = pointLocation(TR, [0.25 0.25])
``````


== See also

#nlink(<geometry:delaunayTriangulation>)[delaunayTriangulation];, #nlink(<geometry:delaunayn>)[delaunayn];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Initial version.],
)

// Author: Allan CORNET
