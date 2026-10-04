# shrinkfaces

Reduce patch face size.

## 📝 Syntax

- shrinkfaces(p, sf)
- nfv = shrinkfaces(p, sf)
- nfv = shrinkfaces(fv, sf)
- nfv = shrinkfaces(faces, vertices, sf)
- [newFaces, newVertices] = shrinkfaces(...)

## 📥 Input argument

- p - Patch handle.
- fv - Structure with faces and vertices fields.
- sf - Nonnegative shrink factor. The default is 0.3.

## 📤 Output argument

- nfv, newFaces, newVertices - Shrunk face and vertex data with nonshared vertices.

## 📄 Description

<b>shrinkfaces</b> moves each face vertex toward the center of its face and creates nonshared vertices.

## 🔗 See also

[isosurface](../../../graphics/1_plots/7_surfaces_volumes_polygons/isosurface.md), [patch](../../../graphics/1_plots/7_surfaces_volumes_polygons/patch.md).
