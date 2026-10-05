#import "../../nelson_help.typ": *

= fcontour <graphics:1_plots.3_contour_plots.fcontour>

Plot contours from a function of two variables.

== Syntax

- #raw("fcontour(fun)");
- #raw("fcontour(fun, xyinterval)");
- #raw("fcontour(fun, [xmin xmax ymin ymax])");
- #raw("fcontour(..., LineSpec)");
- #raw("fcontour(..., propertyName, propertyValue)");
- #raw("fcontour(parent, ...)");
- #raw("h = fcontour(...)");

== Description

#strong[fcontour]; samples #strong[fun(x,y)]; on a regular grid and displays contour lines as a #strong[functioncontour]; graphics object.

 See #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.functioncontour.properties>)[functioncontour properties]; for the complete property list.


== Examples

Display function contours.

``````matlab
fcontour(@(x, y) x.^2 - y.^2, [-2 2 -2 2]);
``````


#align(center)[#image("fcontour_1.svg")]
Use a line color and explicit levels.

``````matlab
h = fcontour(@(x, y) x + y, '-r', 'LevelList', [-2 0 2]);
h.LineWidth = 1.5;
``````


#align(center)[#image("fcontour_2.svg")]

== See also

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.functioncontour.properties>)[functioncontour properties];, #nlink(<graphics:1_plots.3_contour_plots.contour>)[contour];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.fmesh>)[fmesh];.
