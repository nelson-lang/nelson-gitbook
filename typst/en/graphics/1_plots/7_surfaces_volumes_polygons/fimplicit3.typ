#import "../../nelson_help.typ": *

= fimplicit3 <graphics:1_plots.7_surfaces_volumes_polygons.fimplicit3>

Plot an implicit 3-D function surface approximation.

== Syntax

- #raw("fimplicit3(fun)");
- #raw("fimplicit3(fun, interval)");
- #raw("fimplicit3(fun, [xmin xmax ymin ymax zmin zmax])");
- #raw("fimplicit3(..., LineSpec)");
- #raw("fimplicit3(..., propertyName, propertyValue)");
- #raw("fimplicit3(parent, ...)");
- #raw("h = fimplicit3(...)");

== Description

#strong[fimplicit3]; samples #strong[fun(x,y,z)]; on a regular grid and displays an approximated zero-level surface as an #strong[implicitfunctionsurface]; graphics object.

 See #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.implicitfunctionsurface.properties>)[implicitfunctionsurface properties]; for the complete property list.


== Examples

Plot a sphere approximation.

``````matlab
fimplicit3(@(x, y, z) x.^2 + y.^2 + z.^2 - 1, [-1.5 1.5]);
``````


#align(center)[#image("fimplicit3_1.svg")]
Use a line specification and surface properties.

``````matlab
h = fimplicit3(@(x, y, z) x.^2 + y.^2 + z.^2 - 1, [-1.5 1.5], 'r', 'FaceAlpha', 0.5);
``````


#align(center)[#image("fimplicit3_2.svg")]

== See also

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.implicitfunctionsurface.properties>)[implicitfunctionsurface properties];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.fimplicit>)[fimplicit];.
