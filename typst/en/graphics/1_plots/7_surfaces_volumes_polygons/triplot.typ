#import "../../nelson_help.typ": *

= triplot <graphics:1_plots.7_surfaces_volumes_polygons.triplot>

2-D triangular plot

== Syntax

- #raw("triplot(T, x, y)");
- #raw("triplot(T, x, y, LineSpec)");
- #raw("triplot(TO)");
- #raw("triplot(..., Name, Value)");
- #raw("h = triplot(...)");

== Description

#strong[triplot]; plots a 2-D triangular mesh from a connectivity matrix or a triangulation object.


== Example

Plot a triangulation and its triangle incenters.

``````matlab
rng default;
P = rand([30 2]);
DT = delaunayTriangulation(P);
IC = incenter(DT);
triplot(DT)
hold on
plot(IC(:, 1), IC(:, 2), '*r')
``````


#align(center)[#image("triplot_1.svg")]

== See also

#nlink(<geometry:delaunayTriangulation>)[delaunayTriangulation];, #nlink(<geometry:triangulation>)[triangulation];, #nlink(<geometry:delaunay>)[delaunay];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Initial version.],
)

// Author: Allan CORNET
