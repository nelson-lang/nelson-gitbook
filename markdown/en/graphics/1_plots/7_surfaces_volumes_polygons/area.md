# area

Create area plots.

## 📝 Syntax

- area(Y)
- area(X, Y)
- area(..., basevalue)
- area(..., propertyName, propertyValue)
- area(ax, ...)
- go = area(...)

## 📥 Input argument

- X - x-coordinates.
- Y - area data. Matrix columns create stacked area objects.
- basevalue - baseline value. Default is 0.

## 📤 Output argument

- go - graphics object handles of area type.

## 📄 Description


<b>area</b> creates one native area graphics object per data column. Area objects use filled polygon rendering and support face, edge, line, alpha, base value, and interaction properties. 

See [area properties](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.area.properties.md) for the complete property list.

## 💡 Example



```matlab
y = [1 2; 3 1; 2 4];
area(y);
```
<img src="area_1.svg" align="middle"/>


## 🔗 See also

[area properties](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.area.properties.md), [fill](../../../graphics/1_plots/7_surfaces_volumes_polygons/fill.md), [patch](../../../graphics/1_plots/7_surfaces_volumes_polygons/patch.md).
<!--
## 👤 Author

Allan CORNET
-->
