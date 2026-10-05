#import "../../nelson_help.typ": *

= fmesh <graphics:1_plots.7_surfaces_volumes_polygons.fmesh>

Plot a mesh from a function of two variables.

== Syntax

- #raw("fmesh(fun)");
- #raw("fmesh(fun, xyinterval)");
- #raw("fmesh(fun, [xmin xmax ymin ymax])");
- #raw("fmesh(funx, funy, funz)");
- #raw("fmesh(..., Name, Value)");
- #raw("fmesh(parent, ...)");
- #raw("h = fmesh(...)");

== Description

#strong[fmesh]; creates a #strong[functionsurface]; graphics object and displays a mesh for a function of two variables.

 The function can be specified as #strong[fun(x,y)];. A parametric surface can be specified with #strong[funx(u,v)];, #strong[funy(u,v)];, and #strong[funz(u,v)];.

 The default range is #strong[\[-5 5 -5 5\]];. A two-element interval applies to both x and y ranges.

 See #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.functionsurface.properties>)[functionsurface properties]; for the complete property list.


== Examples

Display a function mesh.

``````matlab
fmesh(@(x, y) sin(x) + cos(y), [-pi pi -pi pi]);
``````


#align(center)[#image("fmesh_1.svg")]
Use a denser mesh and set a line property.

``````matlab
fmesh(@(x, y) x.^2 - y.^2, [-2 2 -2 2], 'MeshDensity', 51, 'LineWidth', 1.5);
``````


#align(center)[#image("fmesh_2.svg")]
Display a parametric mesh.

``````matlab
fmesh(@(u, v) u, @(u, v) v, @(u, v) sin(u) + cos(v), [-pi pi -pi pi]);
``````


#align(center)[#image("fmesh_3.svg")]

== See also

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.functionsurface.properties>)[functionsurface properties];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.mesh>)[mesh];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.fsurf>)[fsurf];.
