#import "../../nelson_help.typ": *

= stem3 <graphics:1_plots.6_discrete_data_plots.stem3>

Display 3-D stem plot.

== Syntax

- #raw("stem3(Z)");
- #raw("stem3(X, Y, Z)");
- #raw("stem3(..., LineSpec)");
- #raw("stem3(..., 'filled')");
- #raw("stem3(parent, ...)");
- #raw("h = stem3(...)");

== Input argument

/ Z: Stem heights: numeric vector or matrix.
/ X: X coordinates: numeric vector or matrix.
/ Y: Y coordinates: numeric vector or matrix.
/ LineSpec: Line style, marker, and color specification.
/ parent: Axes or hggroup parent.

== Output argument

/ h: Stem graphics object.

== Description

#strong[stem3]; displays vertical stems from z \= 0 to the values in #strong[Z];, with markers at the stem tips.

 The returned object is a #strong[stem]; graphics object. See #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.stem.properties>)[nelson.graphics.stem.properties]; for supported properties.


== Examples

Display a 3-D stem plot from a matrix.

``````matlab
Z = peaks(8);
stem3(Z);
``````


#align(center)[#image("stem3_1.svg")]
Specify coordinates and fill markers.

``````matlab
t = 0:0.2:2*pi;
stem3(cos(t), sin(t), t, 'r--', 'filled');
``````


#align(center)[#image("stem3_2.svg")]

== See also

#nlink(<graphics:1_plots.6_discrete_data_plots.stem>)[stem];, #nlink(<graphics:1_plots.1_line_plots.plot3>)[plot3];, #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.stem.properties>)[nelson.graphics.stem.properties];.
