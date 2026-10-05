#import "nelson_help.typ": *

= delaunay <geometry:delaunay>

Delaunay triangulation of 2-D or 3-D points

== Syntax

- #raw("T = delaunay(P)");
- #raw("T = delaunay(x, y)");
- #raw("T = delaunay(x, y, z)");

== Description

#strong[delaunay]; computes a Delaunay triangulation from coordinate vectors or a point matrix.


== Example

Plot Delaunay triangles of random planar points.

``````matlab
rng default;
x = rand([20, 1]);
y = rand([20, 1]);
DT = delaunay(x, y);
triplot(DT, x, y)
``````


== See also

#nlink(<geometry:delaunayn>)[delaunayn];, #nlink(<geometry:delaunayTriangulation>)[delaunayTriangulation];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Initial version.],
)

// Author: Allan CORNET
