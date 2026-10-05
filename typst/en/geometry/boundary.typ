#import "nelson_help.typ": *

= boundary <geometry:boundary>

Boundary facets of a set of points

== Syntax

- #raw("K = boundary(P)");
- #raw("K = boundary(x, y)");
- #raw("K = boundary(x, y, z)");
- #raw("K = boundary(..., s)");
- #raw("[K, A] = boundary(x, y)");
- #raw("boundary(P)");

== Description

#strong[boundary]; returns boundary facets for planar or spatial points.

 When called without output, it plots the boundary.


== Example

Compute and plot the boundary of planar points.

``````matlab
P = [0 0; 1 0; 1 1; 0 1; 0.4 0.6];
K = boundary(P);
boundary(P)
``````


== See also

#nlink(<geometry:alphaShape>)[alphaShape];, #nlink(<geometry:convhull>)[convhull];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Initial version.],
)

// Author: Allan CORNET
