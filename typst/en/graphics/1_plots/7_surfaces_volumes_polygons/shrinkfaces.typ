#import "../../nelson_help.typ": *

= shrinkfaces <graphics:1_plots.7_surfaces_volumes_polygons.shrinkfaces>

Reduce patch face size.

== Syntax

- #raw("shrinkfaces(p, sf)");
- #raw("nfv = shrinkfaces(p, sf)");
- #raw("nfv = shrinkfaces(fv, sf)");
- #raw("nfv = shrinkfaces(faces, vertices, sf)");
- #raw("[newFaces, newVertices] = shrinkfaces(...)");

== Input argument

/ p: Patch handle.
/ fv: Structure with faces and vertices fields.
/ sf: Nonnegative shrink factor. The default is 0.3.

== Output argument

/ nfv, newFaces, newVertices: Shrunk face and vertex data with nonshared vertices.

== Description

#strong[shrinkfaces]; moves each face vertex toward the center of its face and creates nonshared vertices.


== See also

#nlink(<graphics:1_plots.7_surfaces_volumes_polygons.isosurface>)[isosurface];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.patch>)[patch];.
