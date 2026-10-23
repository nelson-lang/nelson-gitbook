#import "nelson_help.typ": *

= nsidedpoly <geometry:nsidedpoly>

Create a regular polygon.

== Syntax

- #raw("pg = nsidedpoly(n)");
- #raw("pg = nsidedpoly(n, 'Center', c)");
- #raw("pg = nsidedpoly(n, 'Radius', r)");
- #raw("pg = nsidedpoly(n, 'SideLength', s)");

== Input argument

/ n: the number of sides (an integer \>\= 3).
/ 'Center': a two-element center \[x y\] (default \[0 0\]).
/ 'Radius': the circumscribed-circle radius.
/ 'SideLength': the length of each side.

== Output argument

/ pg: a polyshape of the regular polygon.

== Description

#strong[nsidedpoly]; returns a regular #strong[n];-sided polygon as a #strong[polyshape];. Without a radius or side length, the polygon has unit area.


== Example

``````matlab
f = figure();
plot(nsidedpoly(6, 'Radius', 2));
axis equal
``````


== See also

#nlink(<geometry:polyshape>)[polyshape];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Initial version.],
)

// Author: Allan CORNET
