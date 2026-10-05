#import "nelson_help.typ": *

= delaunayn <geometry:delaunayn>

Delaunay triangulation in N dimensions

== Syntax

- #raw("T = delaunayn(P)");
- #raw("T = delaunayn(P, options)");

== Description

#strong[delaunayn]; computes a Delaunay triangulation for the points in #strong[P];.

 Rows of #strong[T]; contain one-based indices into #strong[P];.


== Example

Delaunay triangulation of planar points.

``````matlab
P = [0 0; 1 0; 1 1; 0 1; 0.4 0.6];
T = delaunayn(P)
``````


== See also

#nlink(<geometry:delaunay>)[delaunay];, #nlink(<geometry:triangulation>)[triangulation];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Initial version.],
)

// Author: Allan CORNET
