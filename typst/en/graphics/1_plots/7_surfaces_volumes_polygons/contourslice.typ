#import "../../nelson_help.typ": *

= contourslice <graphics:1_plots.7_surfaces_volumes_polygons.contourslice>

Display contour lines on slices through volume data.

== Syntax

- #raw("contourslice(V, xs, ys, zs)");
- #raw("contourslice(V, XI, YI, ZI)");
- #raw("contourslice(X, Y, Z, V, xs, ys, zs)");
- #raw("contourslice(X, Y, Z, V, XI, YI, ZI)");
- #raw("contourslice(..., levels)");
- #raw("contourslice(..., method)");
- #raw("contourslice(parent, ...)");
- #raw("h = contourslice(...)");

== Description

#strong[contourslice]; computes contour lines on selected volume slices and returns a column vector of patch objects.

 The #strong[levels]; input can be a scalar number of contour levels or a vector of contour values. A slice value equal to #strong[NaN]; selects all slices along that direction.

 When #strong[XI];, #strong[YI];, and #strong[ZI]; are matrices, contours are drawn along the surface defined by those matrices.

 The optional #strong[method]; input can be #strong['nearest'];, #strong['linear'];, or #strong['cubic'];. The default method for axis-aligned slices is #strong['nearest'];; the default for surface slices is #strong['linear'];.


== Examples

Display contours in several slice planes.

``````matlab
[X, Y, Z] = meshgrid(-2:.2:2);
V = X .* exp(-X.^2 - Y.^2 - Z.^2);
xslice = [-1.2, 0.8, 2];
yslice = [];
zslice = [];
contourslice(X, Y, Z, V, xslice, yslice, zslice);
view(3);
grid on;
``````


#align(center)[#image("contourslice_1.svg")]
Specify contour levels and add a colorbar.

``````matlab
[X, Y, Z] = meshgrid(-2:.2:2);
V = X .* exp(-X.^2 - Y.^2 - Z.^2);
xslice = [-1.2, 0.8, 2];
levels = -0.2:0.01:0.4;
contourslice(X, Y, Z, V, xslice, [], [], levels);
colorbar;
view(3);
grid on;
``````


#align(center)[#image("contourslice_2.svg")]
Display contours on a surface slice.

``````matlab
[X, Y, Z] = meshgrid(-5:0.2:5);
V = X .* exp(-X.^2 - Y.^2 - Z.^2);
[xsurf, ysurf] = meshgrid(-2:0.2:2);
zsurf = xsurf.^2 - ysurf.^2;
contourslice(X, Y, Z, V, xsurf, ysurf, zsurf, 20);
view(3);
grid on;
``````


#align(center)[#image("contourslice_3.svg")]

== See also

#nlink(<graphics:1_plots.7_surfaces_volumes_polygons.slice>)[slice];, #nlink(<graphics:1_plots.3_contour_plots.contour>)[contour];.
