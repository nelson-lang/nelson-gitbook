#import "nelson_help.typ": *

= rectint <geometry:rectint>

Area of intersection of rectangles.

== Syntax

- #raw("out = rectint(A, B)");

== Input argument

/ A: an M-by-4 matrix; each row is a rectangle #strong[\[x y width height\]];.
/ B: an N-by-4 matrix; each row is a rectangle #strong[\[x y width height\]];.

== Output argument

/ out: an M-by-N matrix; #strong[out(i, j)]; is the area of the intersection of rectangle #strong[A(i, :)]; and rectangle #strong[B(j, :)];.

== Description

#strong[rectint]; returns the area of intersection of rectangles. Each rectangle is given as a four-element row #strong[\[x y width height\]];, where #strong[(x, y)]; is a corner and #strong[width]; and #strong[height]; are the side lengths. Rectangles that do not overlap contribute a zero area.


== Example

``````matlab
area = rectint([0 0 1 1], [0.5 0.5 1 1])
``````


== See also

#nlink(<geometry:polyarea>)[polyarea];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Initial version.],
)

// Author: Allan CORNET
