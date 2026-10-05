# fsurf

Plot a function surface.

## 📝 Syntax

- fsurf(fun)
- fsurf(fun, range)
- fsurf(ax, ...)
- fsurf(..., propertyName, propertyValue)
- go = fsurf(...)

## 📥 Input argument

- fun - function handle evaluated as fun(X, Y).
- range - two element range for both axes or four element [xmin xmax ymin ymax].
- MeshDensity - number of sample points in each direction.
- XRange, YRange - sampling intervals. Changing either range after creation resamples the function surface.
- XRangeMode, YRangeMode - <b>auto</b> for the default range, <b>manual</b> after an explicit range assignment.
- ShowContours - set to <b>on</b> to add contour lines under the function surface.

## 📤 Output argument

- go - a graphics object: functionsurface type.

## 📄 Description


<b>fsurf</b> samples a function on a rectangular grid and displays the result as a function surface object. The grid is resampled when <b>Function</b>, <b>XRange</b>, <b>YRange</b>, or <b>MeshDensity</b> changes. 

See [functionsurface properties](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.functionsurface.properties.md) for the complete property list.

## 💡 Example



```matlab

fsurf(@(x, y) sin(x) + cos(y), [-3 3 -3 3], 'FaceColor', 'interp', 'EdgeColor', 'none', 'ShowContours', 'on');
light();
lighting gouraud;

```
<img src="fsurf_1.svg" align="middle"/>


## 🔗 See also

[functionsurface properties](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.functionsurface.properties.md), [surf](../../../graphics/1_plots/7_surfaces_volumes_polygons/surf.md), [surface](../../../graphics/1_plots/7_surfaces_volumes_polygons/surface.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
