#import "nelson_help.typ": *

= convhull <geometry:convhull>

Convex hull of 2-D or 3-D points

== Syntax

- #raw("K = convhull(P)");
- #raw("K = convhull(x, y)");
- #raw("K = convhull(x, y, z)");
- #raw("K = convhull(..., 'Simplify', tf)");
- #raw("[K, A] = convhull(x, y)");
- #raw("convhull(P)");

== Description

#strong[convhull]; computes the convex hull of planar or spatial points.

 When called without output for planar points, it plots the hull.


== Example

Compute and plot a planar convex hull.

``````matlab
P = [0 0; 1 0; 1 1; 0 1; 0.4 0.6];
[K, A] = convhull(P);
convhull(P)
``````


== See also

#nlink(<geometry:convhulln>)[convhulln];, #nlink(<geometry:boundary>)[boundary];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Initial version.],
)

// Author: Allan CORNET
