#import "../../nelson_help.typ": *

= fimplicit <graphics:1_plots.7_surfaces_volumes_polygons.fimplicit>

Plot an implicit function curve.

== Syntax

- #raw("fimplicit(fun)");
- #raw("fimplicit({fun1, fun2, ...})");
- #raw("fimplicit(fun, interval)");
- #raw("fimplicit(fun, [xmin xmax ymin ymax])");
- #raw("fimplicit(..., LineSpec)");
- #raw("fimplicit(..., propertyName, propertyValue)");
- #raw("fimplicit(parent, ...)");
- #raw("h = fimplicit(...)");

== Description

#strong[fimplicit]; samples #strong[fun(x,y)]; and plots the zero contour as an #strong[implicitfunctionline]; graphics object.

 When a cell array of function handles is specified, one #strong[implicitfunctionline]; object is created for each function and the returned handle array is a column vector.

 See #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.implicitfunctionline.properties>)[implicitfunctionline properties]; for the complete property list.


== Examples

Plot a unit circle.

``````matlab
fimplicit(@(x, y) x.^2 + y.^2 - 1, [-2 2 -2 2]);
``````


#align(center)[#image("fimplicit_1.svg")]
Use a line specification and line properties.

``````matlab
h = fimplicit(@(x, y) x.^2 + y.^2 - 1, [-2 2], '--r', 'LineWidth', 2);
``````


#align(center)[#image("fimplicit_2.svg")]
Plot two implicit curves.

``````matlab
f1 = @(x, y) x.^2 + y.^2 - 1;
f2 = @(x, y) x - y;
h = fimplicit({f1, f2});
``````


#align(center)[#image("fimplicit_3.svg")]

== See also

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.implicitfunctionline.properties>)[implicitfunctionline properties];, #nlink(<graphics:1_plots.3_contour_plots.fcontour>)[fcontour];, #nlink(<graphics:1_plots.3_contour_plots.contour>)[contour];.
