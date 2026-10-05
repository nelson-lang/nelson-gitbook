#import "../../nelson_help.typ": *

= feather <graphics:1_plots.5_vector_fields.feather>

Display vectors from a baseline.

== Syntax

- #raw("feather(Z)");
- #raw("feather(U, V)");
- #raw("feather(..., LineSpec)");
- #raw("feather(..., propertyName, propertyValue)");
- #raw("feather(parent, ...)");
- #raw("h = feather(...)");

== Description

#strong[feather]; displays 2-D vectors from y \= 0. Complex input uses real parts as horizontal components and imaginary parts as vertical components.

 The output is a column vector of #strong[line]; graphics objects: one line for each arrow and one line for the baseline.


== Examples

Display vectors from complex values.

``````matlab
z = [1 + 2i, 2 - 1i, -1 + 1i];
feather(z);
``````


#align(center)[#image("feather_1.svg")]
Use line style and line properties.

``````matlab
u = [1 3 2];
v = [2 1 -1];
h = feather(u, v, '-or', 'LineWidth', 1.5);
``````


#align(center)[#image("feather_2.svg")]

== See also

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.line.properties>)[line properties];, #nlink(<graphics:1_plots.5_vector_fields.quiver>)[quiver];, #nlink(<graphics:1_plots.5_vector_fields.compassplot>)[compassplot];.
