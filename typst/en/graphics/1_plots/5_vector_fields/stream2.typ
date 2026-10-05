#import "../../nelson_help.typ": *

= stream2 <graphics:1_plots.5_vector_fields.stream2>

Compute 2-D streamline vertices from vector field data.

== Syntax

- #raw("vertices = stream2(U, V, startx, starty)");
- #raw("vertices = stream2(X, Y, U, V, startx, starty)");
- #raw("vertices = stream2(..., options)");

== Description

#strong[stream2]; follows a 2-D vector field from each start point and returns the vertices it passed through. Nothing is drawn: hand the result to #strong[streamline]; to see it.

 The result is a cell array with one entry per start point, each an N-by-2 array of #strong[\[x, y\]]; coordinates whose first row is the start point itself. A start point outside the field gives an empty entry; a start point the field does not move keeps its single vertex.

 Without #strong[X]; and #strong[Y]; the field is indexed from 1, as #strong[meshgrid(1:size(U, 2), 1:size(U, 1))]; would give it.

 The optional #strong[options]; input is #strong[\[stepsize\]]; or #strong[\[stepsize, maxvert\]];. #strong[stepsize]; is counted in grid cells and defaults to 0.1. #strong[maxvert]; is the largest number of vertices to produce, the start point counted in, and defaults to 500.


== Example

Trace two streamlines of a rotating field.

``````matlab
[x, y] = meshgrid(-2:0.25:2, -2:0.25:2);
vertices = stream2(x, y, -y, x, [1 1.5], [0 0]);
streamline(vertices);
``````


#align(center)[#image("stream2_1.svg")]

== See also

#nlink(<graphics:1_plots.5_vector_fields.stream3>)[stream3];, #nlink(<graphics:1_plots.5_vector_fields.streamline>)[streamline];, #nlink(<graphics:1_plots.5_vector_fields.quiver>)[quiver];.
