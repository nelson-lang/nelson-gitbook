#import "nelson_help.typ": *

= voronoi <geometry:voronoi>

Voronoi diagram of planar points

== Syntax

- #raw("[vx, vy] = voronoi(P)");
- #raw("[vx, vy] = voronoi(x, y)");
- #raw("[vx, vy] = voronoi(x, y, T)");
- #raw("h = voronoi(...)");
- #raw("voronoi(P)");

== Description

#strong[voronoi]; computes Voronoi line segments for planar points.

 When called without output, it plots the diagram.


== Example

Plot a Voronoi diagram.

``````matlab
P = [0 0; 1 0; 1 1; 0 1; 0.4 0.6];
voronoi(P)
``````


== See also

#nlink(<geometry:voronoin>)[voronoin];, #nlink(<geometry:delaunay>)[delaunay];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Initial version.],
)

// Author: Allan CORNET
