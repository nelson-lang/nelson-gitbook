#import "nelson_help.typ": *

= tsearchn <geometry:tsearchn>

Point location in a triangulation

== Syntax

- #raw("idx = tsearchn(P, T, Q)");
- #raw("[idx, bary] = tsearchn(P, T, Q)");

== Description

#strong[tsearchn]; finds the simplex containing each query point.

 Points outside the triangulation return #strong[NaN];.


== Example

Find the containing triangle and barycentric coordinates.

``````matlab
P = [0 0; 1 0; 1 1; 0 1];
T = delaunayn(P);
[idx, bary] = tsearchn(P, T, [0.25 0.25])
``````


== See also

#nlink(<geometry:dsearchn>)[dsearchn];, #nlink(<geometry:delaunayn>)[delaunayn];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Initial version.],
)

// Author: Allan CORNET
