#import "../../nelson_help.typ": *

= streamribbon <graphics:1_plots.5_vector_fields.streamribbon>

Display stream paths with ribbon-like line styling.

== Syntax

- #raw("streamribbon(U, V, W, sx, sy, sz)");
- #raw("streamribbon(X, Y, Z, U, V, W, sx, sy, sz)");
- #raw("streamribbon(vertices, twistangle)");
- #raw("streamribbon(..., width)");
- #raw("h = streamribbon(...)");

== Description

#strong[streamribbon]; displays 3-D stream paths as ribbon surfaces.

 #strong[streamribbon(vertices, twistangle)]; uses precomputed streamline vertices and a cell array of twist angles. The returned handles are surface objects.


== Example

Display a stream ribbon style path.

``````matlab
t = 0:.15:2;
vertices = {[cos(t)' sin(t)' t']};
twistangle = {cos(t)'};
streamribbon(vertices, twistangle);
``````


#align(center)[#image("streamribbon_1.svg")]

== See also

#nlink(<graphics:1_plots.5_vector_fields.streamline>)[streamline];, #nlink(<graphics:1_plots.5_vector_fields.streamtube>)[streamtube];.
