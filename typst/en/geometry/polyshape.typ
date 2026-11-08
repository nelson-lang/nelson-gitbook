#import "nelson_help.typ": *

= polyshape <geometry:polyshape>

Create a polygon.

== Syntax

- #raw("pg = polyshape(x, y)");
- #raw("pg = polyshape(P)");

== Input argument

/ x, y: vectors of the polygon vertex coordinates.
/ P: an N-by-2 matrix of vertices \[x y\].

== Output argument

/ pg: a polyshape object.

== Description

#strong[polyshape]; creates a polygon from its vertices. The methods #strong[area];, #strong[perimeter]; and #strong[numsides]; query it, #strong[rotate]; and #strong[translate]; transform it, and #strong[plot]; draws it as a filled patch (accepting patch name-value properties). #strong[rotate(pg, theta)]; turns the polygon counterclockwise by #strong[theta]; degrees about the origin, or about a reference point given as a third argument; #strong[translate(pg, \[dx dy\])]; shifts it.


== Example

``````matlab
f = figure();
t = linspace(0, 2*pi, 6);
t(end) = [];
pg = polyshape(cos(t), sin(t));
plot(pg, 'FaceColor', 'r');
area(pg)
``````


#align(center)[#image("polyshape.svg")]

== See also

#nlink(<geometry:nsidedpoly>)[nsidedpoly];, #nlink(<geometry:polyarea>)[polyarea];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Initial version.],
)

// Author: Allan CORNET
