#import "../../nelson_help.typ": *

= surf2patch <graphics:1_plots.7_surfaces_volumes_polygons.surf2patch>

Convert surface data to patch data.

== Syntax

- #raw("fvc = surf2patch(Z)");
- #raw("fvc = surf2patch(X, Y, Z)");
- #raw("fvc = surf2patch(X, Y, Z, C)");
- #raw("fvc = surf2patch(h)");
- #raw("fvc = surf2patch(..., 'triangles')");
- #raw("[F, V] = surf2patch(...)");
- #raw("[F, V, C] = surf2patch(...)");

== Input argument

/ X, Y, Z: the surface coordinates. X and Y may be vectors or matrices; Z is a matrix with at least two rows and two columns.
/ C: the color data; defaults to Z when omitted.
/ h: a surface object whose data is converted.

== Output argument

/ fvc: a structure with the fields 'faces', 'vertices' and 'facevertexcdata', suitable for #strong[patch];.
/ F, V, C: the faces, vertices and face\/vertex color data returned separately.

== Description

#strong[surf2patch]; converts the geometry of a surface into the faces and vertices of a patch. The grid of a #strong[(m)];-by-#strong[(n)]; surface becomes #strong[(m-1)\*(n-1)]; quadrilateral faces (or twice as many triangular faces with the #strong['triangles']; option).

 Called with a single output, the result is a structure that can be passed directly to #strong[patch];; with several outputs the faces, vertices and color data are returned separately.


== Example

``````matlab
f = figure();
colormap(jet);
patch(surf2patch(peaks(20)), 'FaceColor', 'interp', 'EdgeColor', 'none');
view(3);
axis equal
``````


== See also

#nlink(<graphics:1_plots.7_surfaces_volumes_polygons.surf>)[surf];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.patch>)[patch];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
