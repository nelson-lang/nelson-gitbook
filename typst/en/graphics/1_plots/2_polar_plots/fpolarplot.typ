#import "../../nelson_help.typ": *

= fpolarplot <graphics:1_plots.2_polar_plots.fpolarplot>

Plot a function in polar coordinates.

== Syntax

- #raw("fpolarplot(fun)");
- #raw("fpolarplot(fun, [tmin tmax])");
- #raw("fpolarplot(..., LineSpec)");
- #raw("fpolarplot(..., Name, Value)");
- #raw("fpolarplot(parent, ...)");
- #raw("h = fpolarplot(...)");

== Output argument

/ h: Function line graphics object drawn in polar axes.

== Description

#strong[fpolarplot]; samples a function over an angle interval and plots the resulting radius values in polar coordinates. The returned object is a #strong[functionline];.

 Name-value pairs can set line properties and functionline properties such as #strong[MeshDensity];.


== Example

Plot a polar function.

``````matlab
fpolarplot(@(t) 1 + sin(4*t), [0 2*pi], 'r-');
``````


#align(center)[#image("fpolarplot_1.svg")]

== See also

#nlink(<graphics:1_plots.2_polar_plots.polarplot>)[polarplot];, #nlink(<graphics:1_plots.1_line_plots.fplot>)[fplot];, #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.functionline.properties>)[functionline properties];.
