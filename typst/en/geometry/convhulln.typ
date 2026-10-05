#import "nelson_help.typ": *

= convhulln <geometry:convhulln>

Convex hull in N dimensions

== Syntax

- #raw("K = convhulln(P)");
- #raw("[K, V] = convhulln(P)");
- #raw("K = convhulln(P, options)");

== Description

#strong[convhulln]; computes the convex hull facets of the point matrix #strong[P];.

 Rows of #strong[K]; contain one-based point indices. The second output is the enclosed measure reported for the hull.


== Example

Convex hull of a square.

``````matlab
P = [0 0; 1 0; 1 1; 0 1];
[K, A] = convhulln(P)
``````


== See also

#nlink(<geometry:convhull>)[convhull];, #nlink(<geometry:delaunayn>)[delaunayn];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Initial version.],
)

// Author: Allan CORNET
