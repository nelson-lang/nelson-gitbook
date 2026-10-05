#import "nelson_help.typ": *

= voronoin <geometry:voronoin>

Voronoi diagram in N dimensions

== Syntax

- #raw("[V, C] = voronoin(P)");
- #raw("[V, C] = voronoin(P, options)");

== Description

#strong[voronoin]; computes Voronoi vertices and cells for the input points.

 #strong[V]; contains vertices and #strong[C]; is a cell array of one-based vertex indices.


== Example

Voronoi vertices and cells of planar points.

``````matlab
P = [0 0; 1 0; 1 1; 0 1];
[V, C] = voronoin(P)
``````


== See also

#nlink(<geometry:voronoi>)[voronoi];, #nlink(<geometry:delaunayn>)[delaunayn];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Initial version.],
)

// Author: Allan CORNET
