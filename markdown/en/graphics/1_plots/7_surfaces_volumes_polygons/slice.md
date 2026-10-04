# slice

Display orthogonal slices through volume data.

## 📝 Syntax

- slice(V, xs, ys, zs)
- slice(V, XI, YI, ZI)
- slice(X, Y, Z, V, xs, ys, zs)
- slice(X, Y, Z, V, XI, YI, ZI)
- slice(..., method)
- slice(parent, ...)
- h = slice(...)

## 📥 Input argument

- V - Numeric 3-D volume data.
- X, Y, Z - Volume grid coordinates or vectors.
- xs, ys, zs - Slice locations along the x, y, and z axes. Use [] to omit an axis.
- XI, YI, ZI - Arrays defining a slice surface through the volume.
- method - Interpolation method: 'linear', 'nearest', or 'cubic'. The default is 'linear'.

## 📤 Output argument

- h - Surface handles for the generated slices.

## 📄 Description

<b>slice</b> samples volume data on requested planes or on a requested surface and displays each result as a surface colored by interpolated values.

## 💡 Example

Display two slices through a volume.

```matlab
[x, y, z] = meshgrid(-2:2, -2:2, -2:2);
v = x.^2 + y.^2 + z.^2;
slice(x, y, z, v, 0, [], 0);
```

<img src="slice_1.svg" align="middle"/>

## 🔗 See also

[surface](../../../graphics/1_plots/7_surfaces_volumes_polygons/surface.md), [contourslice](../../../graphics/1_plots/7_surfaces_volumes_polygons/contourslice.md).
