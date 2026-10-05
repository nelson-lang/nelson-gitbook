#import "../../nelson_help.typ": *

= isonormals <graphics:1_plots.7_surfaces_volumes_polygons.isonormals>

Compute normals of isosurface vertices.

== Syntax

- #raw("n = isonormals(X, Y, Z, V, vertices)");
- #raw("n = isonormals(V, vertices)");
- #raw("n = isonormals(V, p)");
- #raw("n = isonormals(X, Y, Z, V, p)");
- #raw("n = isonormals(..., 'negate')");
- #raw("isonormals(V, p)");

== Input argument

/ X, Y, Z: Grid vectors or 3-D grid arrays matching V.
/ V: Real numeric 3-D volume data.
/ vertices, p: N-by-3 vertex matrix or patch handle.

== Output argument

/ n: N-by-3 normal vectors interpolated from the volume gradient.

== Description

#strong[isonormals]; computes normals at isosurface vertices. With a patch handle and no output, the VertexNormals property is set.


== See also

#nlink(<graphics:1_plots.7_surfaces_volumes_polygons.isosurface>)[isosurface];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.smooth3>)[smooth3];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.patch>)[patch];.
