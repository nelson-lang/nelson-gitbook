#import "../../nelson_help.typ": *

= streamline <graphics:1_plots.5_vector_fields.streamline>

Display streamlines from vector field data.

== Syntax

- #raw("streamline(U, V, sx, sy)");
- #raw("streamline(vertices)");
- #raw("streamline(X, Y, U, V, sx, sy)");
- #raw("streamline(X, Y, Z, U, V, W, sx, sy, sz)");
- #raw("streamline(..., options)");
- #raw("streamline(parent, ...)");
- #raw("h = streamline(...)");

== Description

#strong[streamline]; traces paths through 2-D or 3-D vector fields from the supplied start points.

 #strong[streamline(vertices)]; draws precomputed streamline vertices supplied as a cell array. Each cell contains an N-by-2 or N-by-3 numeric array.

 The optional #strong[options]; input is #strong[\[stepsize\]]; or #strong[\[stepsize, maxvert\]];. #strong[stepsize]; is counted in grid cells and defaults to 0.1. #strong[maxvert]; is the largest number of vertices to produce, the start point counted in, and defaults to 500.


== Example

Trace a 2-D streamline.

``````matlab
[x, y] = meshgrid(-2:2, -2:2);
streamline(x, y, -y, x, 0, 0);
``````


#align(center)[#image("streamline_1.svg")]

== See also

#nlink(<graphics:1_plots.5_vector_fields.stream2>)[stream2];, #nlink(<graphics:1_plots.5_vector_fields.stream3>)[stream3];, #nlink(<graphics:1_plots.5_vector_fields.streamslice>)[streamslice];, #nlink(<graphics:1_plots.5_vector_fields.quiver>)[quiver];.
