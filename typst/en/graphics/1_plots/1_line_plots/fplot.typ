#import "../../nelson_help.typ": *

= fplot <graphics:1_plots.1_line_plots.fplot>

Plot an expression or parametric function.

== Syntax

- #raw("fplot(f)");
- #raw("fplot(f, [xmin xmax])");
- #raw("fplot(xfun, yfun)");
- #raw("fplot(xfun, yfun, [tmin tmax])");
- #raw("fplot(..., lineSpec)");
- #raw("fplot(..., propertyName, propertyValue)");
- #raw("fplot(ax, ...)");
- #raw("h = fplot(...)");

== Input argument

/ f: function handle evaluated on x values.
/ xfun: function handle evaluated on parameter values to produce x data.
/ yfun: function handle evaluated on parameter values to produce y data.
/ lineSpec: line style, marker, and color specification.
/ propertyName: #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.line.properties>)[line property]; name.
/ propertyValue: line object property value.
/ ax: target axes object.

== Output argument

/ h: #strong[functionline]; graphics object for y \= f(x), or #strong[parameterizedfunctionline]; graphics object for x \= x(t), y \= y(t).

== Description

#strong[fplot]; samples functions over a finite range and plots the result as a function graphics object. The default range is \[-5 5\].

 For y \= f(x), #strong[fplot]; returns a #strong[functionline]; object. For parametric curves, it returns a #strong[parameterizedfunctionline]; object.

 See #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.functionline.properties>)[functionline properties]; and #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.parameterizedfunctionline.properties>)[parameterizedfunctionline properties]; for the complete property lists.


== Examples

``````matlab
fplot(@(x) sin(x), [0 2*pi]);

``````


#align(center)[#image("fplot_1.svg")]
``````matlab
fplot(@(x) exp(-x.^2), [-3 3], '-r', 'LineWidth', 1.5);

``````


#align(center)[#image("fplot_2.svg")]
``````matlab
fplot(@(t) cos(t), @(t) sin(t), [0 2*pi]);
axis equal

``````


#align(center)[#image("fplot_3.svg")]

== See also

#nlink(<graphics:1_plots.1_line_plots.plot>)[plot];, #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.functionline.properties>)[functionline properties];, #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.parameterizedfunctionline.properties>)[parameterizedfunctionline properties];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.fsurf>)[fsurf];.

// Author: Allan CORNET
