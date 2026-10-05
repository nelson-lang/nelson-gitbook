#import "../../nelson_help.typ": *

= streamtube <graphics:1_plots.5_vector_fields.streamtube>

Display stream paths with tube-like line styling.

== Syntax

- #raw("streamtube(U, V, W, sx, sy, sz)");
- #raw("streamtube(X, Y, Z, U, V, W, sx, sy, sz)");
- #raw("streamtube(vertices)");
- #raw("streamtube(vertices, width)");
- #raw("h = streamtube(...)");

== Description

#strong[streamtube]; displays 3-D stream paths as tube surfaces.

 #strong[streamtube(vertices)]; uses precomputed streamline vertices. The returned handles are surface objects.


== Example

Display a stream tube style path.

``````matlab
t = 0:.15:2;
vertices = {[cos(t)' sin(t)' t']};
streamtube(vertices);
``````


#align(center)[#image("streamtube_1.svg")]

== See also

#nlink(<graphics:1_plots.5_vector_fields.streamline>)[streamline];, #nlink(<graphics:1_plots.5_vector_fields.streamribbon>)[streamribbon];.
