#import "../../nelson_help.typ": *

= compass <graphics:1_plots.5_vector_fields.compass>

Display arrows from the origin on a polar grid.

== Syntax

- #raw("compass(Z)");
- #raw("compass(U, V)");
- #raw("compass(..., LineSpec)");
- #raw("compass(..., propertyName, propertyValue)");
- #raw("compass(parent, ...)");
- #raw("h = compass(...)");

== Description

#strong[compass]; draws arrows starting from the origin toward the cartesian points defined by the input components on a polar grid.

 With a single complex input #strong[Z];, the real parts are the horizontal components and the imaginary parts are the vertical components; this is equivalent to #strong[compass(real(Z), imag(Z))];.

 With two real inputs #strong[U]; and #strong[V];, each pair (U, V) is a cartesian point and the arrow points from the origin to that point. When #strong[U]; and #strong[V]; are matrices, one arrow is drawn for each element.

 Each vector is drawn as a #strong[Line]; object made of a shaft from the origin and a short two-segment arrowhead, over a polar reference grid. #strong[h \= compass(...)]; returns a column vector of #strong[Line]; objects, one per vector.


== Examples

Display arrows from complex values.

``````matlab
Z = [1 + 2i, 2 - 1i, -1 + 1i];
compass(Z);
``````

Use cartesian components with a line style and line properties.

``````matlab
U = [1 3 2];
V = [2 1 -1];
h = compass(U, V, '-r');
set(h, 'LineWidth', 1.5);
``````


== See also

#nlink(<graphics:1_plots.5_vector_fields.compassplot>)[compassplot];, #nlink(<graphics:1_plots.5_vector_fields.feather>)[feather];, #nlink(<graphics:1_plots.5_vector_fields.quiver>)[quiver];.
