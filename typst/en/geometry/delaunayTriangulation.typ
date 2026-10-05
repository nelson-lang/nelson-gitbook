#import "nelson_help.typ": *

= delaunayTriangulation <geometry:delaunayTriangulation>

Delaunay triangulation object

== Syntax

- #raw("DT = delaunayTriangulation()");
- #raw("DT = delaunayTriangulation(P)");
- #raw("DT = delaunayTriangulation(P, C)");
- #raw("DT = delaunayTriangulation(x, y)");
- #raw("DT = delaunayTriangulation(x, y, C)");
- #raw("DT = delaunayTriangulation(x, y, z)");
- #raw("K = convexHull(DT)");
- #raw("[V, C] = voronoiDiagram(DT)");

== Description

#strong[delaunayTriangulation]; builds a triangulation object from points and provides related geometry queries.


== Example

Plot a triangulation and the triangle incenters.

``````matlab
rng default;
P = rand([30 2]);
DT = delaunayTriangulation(P)
IC = incenter(DT);
triplot(DT)
hold on
plot(IC(:, 1), IC(:, 2), '*r')
``````


== See also

#nlink(<geometry:triangulation>)[triangulation];, #nlink(<geometry:delaunay>)[delaunay];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Initial version.],
)

// Author: Allan CORNET
