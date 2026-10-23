# surf2patch

Convert surface data to patch data.

## 📝 Syntax

- fvc = surf2patch(Z)
- fvc = surf2patch(X, Y, Z)
- fvc = surf2patch(X, Y, Z, C)
- fvc = surf2patch(h)
- fvc = surf2patch(..., 'triangles')
- [F, V] = surf2patch(...)
- [F, V, C] = surf2patch(...)

## 📥 Input argument

- X, Y, Z - the surface coordinates. X and Y may be vectors or matrices; Z is a matrix with at least two rows and two columns.
- C - the color data; defaults to Z when omitted.
- h - a surface object whose data is converted.

## 📤 Output argument

- fvc - a structure with the fields 'faces', 'vertices' and 'facevertexcdata', suitable for <b>patch</b>.
- F, V, C - the faces, vertices and face/vertex color data returned separately.

## 📄 Description


<b>surf2patch</b> converts the geometry of a surface into the faces and vertices of a patch. The grid of a <b>(m)</b>-by-<b>(n)</b> surface becomes <b>(m-1)\*(n-1)</b> quadrilateral faces (or twice as many triangular faces with the <b>'triangles'</b> option). 

Called with a single output, the result is a structure that can be passed directly to <b>patch</b>; with several outputs the faces, vertices and color data are returned separately.

## 💡 Example



```matlab
f = figure();
colormap(jet);
patch(surf2patch(peaks(20)), 'FaceColor', 'interp', 'EdgeColor', 'none');
view(3);
axis equal
```


## 🔗 See also

[surf](../../../graphics/1_plots/7_surfaces_volumes_polygons/surf.md), [patch](../../../graphics/1_plots/7_surfaces_volumes_polygons/patch.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
