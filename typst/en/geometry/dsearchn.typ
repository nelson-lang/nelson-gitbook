#import "nelson_help.typ": *

= dsearchn <geometry:dsearchn>

Nearest point search

== Syntax

- #raw("idx = dsearchn(P, Q)");
- #raw("[idx, dist] = dsearchn(P, Q)");
- #raw("idx = dsearchn(P, T, Q)");
- #raw("idx = dsearchn(P, T, Q, outind)");

== Description

#strong[dsearchn]; returns the nearest point in #strong[P]; for each query point.


== Example

Nearest point and distance.

``````matlab
P = [0 0; 1 0; 1 1; 0 1];
[idx, dist] = dsearchn(P, [0.2 0.1])
``````


== See also

#nlink(<geometry:tsearchn>)[tsearchn];, #nlink(<geometry:triangulation>)[triangulation];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Initial version.],
)

// Author: Allan CORNET
