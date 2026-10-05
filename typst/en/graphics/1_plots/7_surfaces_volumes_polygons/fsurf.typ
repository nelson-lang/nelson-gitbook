#import "../../nelson_help.typ": *

= fsurf <graphics:1_plots.7_surfaces_volumes_polygons.fsurf>

Plot a function surface.

== Syntax

- #raw("fsurf(fun)");
- #raw("fsurf(fun, range)");
- #raw("fsurf(ax, ...)");
- #raw("fsurf(..., propertyName, propertyValue)");
- #raw("go = fsurf(...)");

== Input argument

/ fun: function handle evaluated as fun(X, Y).
/ range: two element range for both axes or four element \[xmin xmax ymin ymax\].
/ MeshDensity: number of sample points in each direction.
/ XRange, YRange: sampling intervals. Changing either range after creation resamples the function surface.
/ XRangeMode, YRangeMode: #strong[auto]; for the default range, #strong[manual]; after an explicit range assignment.
/ ShowContours: set to #strong[on]; to add contour lines under the function surface.

== Output argument

/ go: a graphics object: functionsurface type.

== Description

#strong[fsurf]; samples a function on a rectangular grid and displays the result as a function surface object. The grid is resampled when #strong[Function];, #strong[XRange];, #strong[YRange];, or #strong[MeshDensity]; changes.

 See #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.functionsurface.properties>)[functionsurface properties]; for the complete property list.


== Example

``````matlab

fsurf(@(x, y) sin(x) + cos(y), [-3 3 -3 3], 'FaceColor', 'interp', 'EdgeColor', 'none', 'ShowContours', 'on');
light();
lighting gouraud;

``````


#align(center)[#image("fsurf_1.svg")]

== See also

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.functionsurface.properties>)[functionsurface properties];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.surf>)[surf];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.surface>)[surface];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
