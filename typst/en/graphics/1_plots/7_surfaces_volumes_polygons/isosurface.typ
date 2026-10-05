#import "../../nelson_help.typ": *

= isosurface <graphics:1_plots.7_surfaces_volumes_polygons.isosurface>

Extract isosurface data from volume data.

== Syntax

- #raw("isosurface(X, Y, Z, V, isovalue)");
- #raw("s = isosurface(X, Y, Z, V, isovalue)");
- #raw("s = isosurface(X, Y, Z, V)");
- #raw("s = isosurface(V, isovalue)");
- #raw("s = isosurface(V)");
- #raw("s = isosurface(..., colors)");
- #raw("s = isosurface(..., 'noshare')");
- #raw("s = isosurface(..., 'verbose')");
- #raw("[faces, vertices] = isosurface(...)");
- #raw("[faces, vertices, colors] = isosurface(...)");

== Input argument

/ X, Y, Z: Grid vectors or 3-D grid arrays matching V.
/ V: Real numeric 3-D volume data.
/ isovalue: Scalar level used to extract the surface. When omitted, Nelson chooses a level from the finite data values.
/ colors: Real numeric 3-D color data with the same size as V.

== Output argument

/ s: Structure with faces and vertices fields, and facevertexcdata when color data is supplied.
/ faces, vertices, colors: Triangle connectivity, vertex coordinates, and interpolated color values.

== Description

#strong[isosurface]; extracts a triangular surface where the volume data reaches a requested scalar value. With no output arguments, the surface is displayed as a patch object in the current axes.

 The #strong['noshare']; option skips shared-vertex reduction. The #strong['verbose']; option is accepted for compatibility.


== Example

Display an isosurface from volume data.

``````matlab
[x, y, z] = meshgrid(-2:0.25:2, -2:0.25:2, -2:0.25:2);
v = x.^2 + y.^2 + z.^2;
isosurface(x, y, z, v, 1);
axis equal;
``````


#align(center)[#image("isosurface_1.svg")]

== See also

#nlink(<graphics:1_plots.7_surfaces_volumes_polygons.patch>)[patch];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.slice>)[slice];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.contourslice>)[contourslice];.
