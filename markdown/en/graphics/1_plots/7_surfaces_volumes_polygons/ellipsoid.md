# ellipsoid

Create an ellipsoid.

## 📝 Syntax

- [X, Y, Z] = ellipsoid(xc, yc, zc, xr, yr, zr)
- [X, Y, Z] = ellipsoid(xc, yc, zc, xr, yr, zr, n)
- ellipsoid(...)
- ellipsoid(ax, ...)

## 📥 Input argument

- xc, yc, zc - the center of the ellipsoid.
- xr, yr, zr - the semi-axis lengths along x, y and z.
- n - a positive integer: the grid resolution (default 20). The result is (n+1)-by-(n+1).

## 📤 Output argument

- X, Y, Z - the coordinates of the ellipsoid surface.

## 📄 Description


<b>ellipsoid</b> generates the coordinates of an ellipsoid centered at <b>(xc, yc, zc)</b> with semi-axes <b>(xr, yr, zr)</b>. Called without an output argument, it draws the surface.

## 💡 Example



```matlab
f = figure();
ellipsoid(0, 0, 0, 3, 2, 1);
axis equal
```


## 🔗 See also

[sphere](../../../graphics/1_plots/7_surfaces_volumes_polygons/sphere.md), [surf](../../../graphics/1_plots/7_surfaces_volumes_polygons/surf.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Initial version. |

<!--
## 👤 Author

Allan CORNET
-->
