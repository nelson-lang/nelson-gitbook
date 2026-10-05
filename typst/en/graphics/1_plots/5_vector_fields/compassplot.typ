#import "../../nelson_help.typ": *

= compassplot <graphics:1_plots.5_vector_fields.compassplot>

Display vectors from the origin in polar coordinates.

== Syntax

- #raw("compassplot(z)");
- #raw("compassplot(theta, r)");
- #raw("compassplot(parent, ...)");
- #raw("h = compassplot(...)");

== Description

#strong[compassplot]; displays complex values or polar coordinate pairs as arrows starting from the origin. The returned handle is a #strong[compassplot]; object.

 The #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.compassplot.properties>)[compassplot properties]; page lists the supported object properties.


== Example

Display complex vectors.

``````matlab
z = [1 + 1i, 1 - 1i, -1 + 0.5i];
compassplot(z);
``````


#align(center)[#image("compassplot_1.svg")]

== See also

#nlink(<graphics:1_plots.2_polar_plots.polarplot>)[polarplot];, #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.compassplot.properties>)[compassplot properties];, #nlink(<graphics:1_plots.5_vector_fields.quiver>)[quiver];.
