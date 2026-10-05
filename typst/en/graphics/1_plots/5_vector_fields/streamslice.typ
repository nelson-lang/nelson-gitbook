#import "../../nelson_help.typ": *

= streamslice <graphics:1_plots.5_vector_fields.streamslice>

Display vector field direction on a slice or plane.

== Syntax

- #raw("streamslice(U, V)");
- #raw("streamslice(X, Y, U, V)");
- #raw("streamslice(X, Y, Z, U, V, W, sx, sy, sz)");
- #raw("streamslice(parent, ...)");
- #raw("h = streamslice(...)");
- #raw("[vertices, arrowVertices] = streamslice(...)");

== Description

#strong[streamslice]; displays vector field direction using line objects for stream paths and direction arrows.

 With two outputs, #strong[streamslice]; returns cell arrays of streamline vertices and arrow vertices instead of drawing.


== Example

Display direction in a 2-D field.

``````matlab
[x, y] = meshgrid(-2:2, -2:2);
streamslice(x, y, -y, x);
``````


#align(center)[#image("streamslice_1.svg")]

== See also

#nlink(<graphics:1_plots.5_vector_fields.streamline>)[streamline];, #nlink(<graphics:1_plots.5_vector_fields.quiver>)[quiver];.
