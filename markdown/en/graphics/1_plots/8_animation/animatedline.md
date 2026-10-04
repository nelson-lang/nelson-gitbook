# animatedline

Create animated line.

## 📝 Syntax

- an = animatedline()
- an = animatedline(x, y)
- an = animatedline(x, y, z)
- an = animatedline(ax, ...)
- an = animatedline(..., propertyName, propertyValue)

## 📥 Input argument

- x, y, z - numeric coordinates: scalars or arrays with the same number of elements.
- ax - target axes or group object.
- propertyName - a scalar string or character vector.
- propertyValue - a property value.

## 📤 Output argument

- an - a graphics object: animatedline type.

## 📄 Description

<b>animatedline</b> creates an animated line with no stored points.

<b>animatedline(x, y)</b> creates an animated line initialized with two-dimensional coordinates.

<b>animatedline(x, y, z)</b> creates an animated line initialized with three-dimensional coordinates.

Use <b>addpoints</b>, <b>clearpoints</b>, and <b>getpoints</b> to mutate or query the stored coordinates.

<b>MaximumNumPoints</b> limits the number of stored points. When the limit is reached, older points are discarded.

See [animatedline properties](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.animatedline.properties.md) for the complete property list.

## 💡 Example

```matlab
f = figure();
ax = axes('Parent', f);
an = animatedline(ax, 'Color', [0 0.4 0.8], 'LineWidth', 2);
x = linspace(0, 2*pi, 120);
addpoints(an, x, sin(x));
drawnow
```

## 🔗 See also

[animatedline properties](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.animatedline.properties.md), [addpoints](../../../graphics/1_plots/8_animation/addpoints.md), [clearpoints](../../../graphics/1_plots/8_animation/clearpoints.md), [getpoints](../../../graphics/1_plots/8_animation/getpoints.md), [comet](../../../graphics/1_plots/8_animation/comet.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
