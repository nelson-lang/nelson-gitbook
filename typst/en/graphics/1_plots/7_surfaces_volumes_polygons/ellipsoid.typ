#import "../../nelson_help.typ": *

= ellipsoid <graphics:1_plots.7_surfaces_volumes_polygons.ellipsoid>

Create an ellipsoid.

== Syntax

- #raw("[X, Y, Z] = ellipsoid(xc, yc, zc, xr, yr, zr)");
- #raw("[X, Y, Z] = ellipsoid(xc, yc, zc, xr, yr, zr, n)");
- #raw("ellipsoid(...)");
- #raw("ellipsoid(ax, ...)");

== Input argument

/ xc, yc, zc: the center of the ellipsoid.
/ xr, yr, zr: the semi-axis lengths along x, y and z.
/ n: a positive integer: the grid resolution (default 20). The result is (n+1)-by-(n+1).

== Output argument

/ X, Y, Z: the coordinates of the ellipsoid surface.

== Description

#strong[ellipsoid]; generates the coordinates of an ellipsoid centered at #strong[(xc, yc, zc)]; with semi-axes #strong[(xr, yr, zr)];. Called without an output argument, it draws the surface.


== Example

``````matlab
f = figure();
ellipsoid(0, 0, 0, 3, 2, 1);
axis equal
``````


== See also

#nlink(<graphics:1_plots.7_surfaces_volumes_polygons.sphere>)[sphere];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.surf>)[surf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Initial version.],
)

// Author: Allan CORNET
