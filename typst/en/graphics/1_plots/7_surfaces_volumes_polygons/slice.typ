#import "../../nelson_help.typ": *

= slice <graphics:1_plots.7_surfaces_volumes_polygons.slice>

Display orthogonal slices through volume data.

== Syntax

- #raw("slice(V, xs, ys, zs)");
- #raw("slice(V, XI, YI, ZI)");
- #raw("slice(X, Y, Z, V, xs, ys, zs)");
- #raw("slice(X, Y, Z, V, XI, YI, ZI)");
- #raw("slice(..., method)");
- #raw("slice(parent, ...)");
- #raw("h = slice(...)");

== Input argument

/ V: Numeric 3-D volume data.
/ X, Y, Z: Volume grid coordinates or vectors.
/ xs, ys, zs: Slice locations along the x, y, and z axes. Use \[\] to omit an axis.
/ XI, YI, ZI: Arrays defining a slice surface through the volume.
/ method: Interpolation method: 'linear', 'nearest', or 'cubic'. The default is 'linear'.

== Output argument

/ h: Surface handles for the generated slices.

== Description

#strong[slice]; samples volume data on requested planes or on a requested surface and displays each result as a surface colored by interpolated values.


== Example

Display two slices through a volume.

``````matlab
[x, y, z] = meshgrid(-2:2, -2:2, -2:2);
v = x.^2 + y.^2 + z.^2;
slice(x, y, z, v, 0, [], 0);
``````


#align(center)[#image("slice_1.svg")]

== See also

#nlink(<graphics:1_plots.7_surfaces_volumes_polygons.surface>)[surface];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.contourslice>)[contourslice];.
