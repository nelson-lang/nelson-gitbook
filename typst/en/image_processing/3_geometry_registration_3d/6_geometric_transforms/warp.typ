#import "../../nelson_help.typ": *

= warp <image_processing:3_geometry_registration_3d.6_geometric_transforms.warp>

Display an image as a texture mapped onto a surface.

== Syntax

- #raw("warp(X, Y, Z, A)");
- #raw("warp(Z, A)");
- #raw("warp(Z, A, map)");
- #raw("warp(X, Y, Z, A, map)");
- #raw("h = warp(...)");

== Input argument

/ X, Y, Z: Surface coordinates. X and Y may be vectors or matrices; Z is a matrix. When omitted (warp(Z, A) forms), X and Y are built from the size of Z.
/ A: Image mapped onto the surface: an indexed (M-by-N) image or a truecolor (M-by-N-by-3) image. Its size is independent of the surface grid.
/ map: Colormap (P-by-3) used when A is an indexed image. It is applied to the current axes.

== Output argument

/ h: Handle of the created surface object.

== Description

Display the image #strong[A]; texture mapped onto the surface defined by #strong[X];, #strong[Y]; and #strong[Z];.

 The image is mapped per fragment, so it stays crisp regardless of how coarse the surface grid is; its resolution is independent of the number of surface points.

 The created surface uses #strong[FaceColor]; set to #strong[texturemap];, #strong[EdgeColor]; set to #strong[none]; and #strong[CDataMapping]; set to #strong[direct];. The axes are displayed with a reversed Y direction and a default 3-D view.

 This is equivalent to creating a surface and setting its #strong[FaceColor]; property to #strong[texturemap]; with the image as #strong[CData];.


== Example

Warp a color gradient onto a dome

``````matlab
n = 64;
[tx, ty] = meshgrid(linspace(0, 1, n), linspace(0, 1, n));
A = zeros(n, n, 3);
A(:, :, 1) = tx;
A(:, :, 2) = ty;
A(:, :, 3) = 1 - tx;
[X, Y] = meshgrid(linspace(-1, 1, 30), linspace(-1, 1, 30));
Z = 1 - (X .^ 2 + Y .^ 2);
figure;
warp(X, Y, Z, A);
``````


#align(center)[#image("warp_1.svg")]

== See also

#nlink(<graphics:1_plots.7_surfaces_volumes_polygons.surface>)[surface];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.surf>)[surf];, #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.imwarp>)[imwarp];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
