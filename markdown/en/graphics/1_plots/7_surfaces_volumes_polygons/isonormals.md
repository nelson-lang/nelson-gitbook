# isonormals

Compute normals of isosurface vertices.

## 📝 Syntax

- n = isonormals(X, Y, Z, V, vertices)
- n = isonormals(V, vertices)
- n = isonormals(V, p)
- n = isonormals(X, Y, Z, V, p)
- n = isonormals(..., 'negate')
- isonormals(V, p)

## 📥 Input argument

- X, Y, Z - Grid vectors or 3-D grid arrays matching V.
- V - Real numeric 3-D volume data.
- vertices, p - N-by-3 vertex matrix or patch handle.

## 📤 Output argument

- n - N-by-3 normal vectors interpolated from the volume gradient.

## 📄 Description


<b>isonormals</b> computes normals at isosurface vertices. With a patch handle and no output, the VertexNormals property is set.


## 🔗 See also

[isosurface](../../../graphics/1_plots/7_surfaces_volumes_polygons/isosurface.md), [smooth3](../../../graphics/1_plots/7_surfaces_volumes_polygons/smooth3.md), [patch](../../../graphics/1_plots/7_surfaces_volumes_polygons/patch.md).