#import "../../nelson_help.typ": *

= stream3 <graphics:1_plots.5_vector_fields.stream3>

Compute 3-D streamline vertices from vector field data.

== Syntax

- #raw("vertices = stream3(U, V, W, startx, starty, startz)");
- #raw("vertices = stream3(X, Y, Z, U, V, W, startx, starty, startz)");
- #raw("vertices = stream3(..., options)");

== Description

#strong[stream3]; follows a 3-D vector field from each start point and returns the vertices it passed through. Nothing is drawn: hand the result to #strong[streamline]; to see it.

 The result is a cell array with one entry per start point, each an N-by-3 array of #strong[\[x, y, z\]]; coordinates whose first row is the start point itself. A start point outside the field gives an empty entry; a start point the field does not move keeps its single vertex.

 Without #strong[X];, #strong[Y]; and #strong[Z]; the field is indexed from 1.

 The optional #strong[options]; input is #strong[\[stepsize\]]; or #strong[\[stepsize, maxvert\]];. #strong[stepsize]; is counted in grid cells and defaults to 0.1. #strong[maxvert]; is the largest number of vertices to produce, the start point counted in, and defaults to 500.


== Example

Trace a rising spiral through a rotating field.

``````matlab
[x, y, z] = meshgrid(-2:0.5:2, -2:0.5:2, -2:0.5:2);
vertices = stream3(x, y, z, -y, x, 0.2 * ones(size(x)), 1, 0, -2);
streamline(vertices);
``````


#align(center)[#image("stream3_1.svg")]

== See also

#nlink(<graphics:1_plots.5_vector_fields.stream2>)[stream2];, #nlink(<graphics:1_plots.5_vector_fields.streamline>)[streamline];, #nlink(<graphics:1_plots.5_vector_fields.coneplot>)[coneplot];.
