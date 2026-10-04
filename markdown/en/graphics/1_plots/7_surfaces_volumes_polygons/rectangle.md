# rectangle

Create a rectangle with sharp, rounded or curved corners

## 📝 Syntax

- rectangle()
- rectangle('Position', pos)
- rectangle('Position', pos, 'Curvature', cur)
- rectangle(..., propertyName, propertyValue)
- rectangle(ax, ...)
- go = rectangle(...)

## 📥 Input argument

- pos - position and size, specified as a four-element vector [x y w h]. x and y set the location of the lower-left corner, w and h set the width and height in data units.
- cur - curvature, specified as a scalar or a two-element vector [horizontal vertical], with each value in the range [0, 1]. 0 gives sharp corners and 1 gives the maximum curvature. Use [1 1] to draw an ellipse.
- ax - a scalar graphics object value: parent container, specified as an axes.
- propertyName - a scalar string or row vector character.
- propertyValue - a value.

## 📤 Output argument

- go - a graphics object: rectangle type.

## 📄 Description

<b>rectangle('Position', pos)</b> draws a rectangle at the location and size given by <b>pos</b> = [x y w h].

<b>rectangle('Position', pos, 'Curvature', cur)</b> draws a rectangle with rounded corners. The horizontal curvature is the fraction of the width that is curved along the top and bottom edges; the vertical curvature is the fraction of the height that is curved along the left and right edges. A scalar value applies the same curvature length to both directions, using the shorter side, so the corners are circular. Use <b>[1 1]</b> to draw an ellipse.

<b>rectangle(..., propertyName, propertyValue, ...)</b> sets optional properties using name-value pairs, such as <b>FaceColor</b>, <b>EdgeColor</b>, <b>LineStyle</b> and <b>LineWidth</b>.

By default a rectangle has no fill (<b>FaceColor</b> is <b>'none'</b>), a dark grey outline (<b>EdgeColor</b>), a solid line style and a line width of 0.5 point.

<b>go = rectangle(...)</b> returns the handle <b>go</b> to the created rectangle object.

## 💡 Example

Rounded rectangle and ellipse

```matlab
f = figure('Color', 'w');
rectangle('Position', [0 0 2 1], 'Curvature', 0.2, ...
  'FaceColor', [0.6 0.8 1], 'EdgeColor', 'k', 'LineWidth', 2);
rectangle('Position', [2.5 0 1 1], 'Curvature', [1 1], ...
  'FaceColor', [1 0.8 0.6], 'EdgeColor', 'k', 'LineWidth', 2);
xlim([-0.3 3.8]);
ylim([-0.3 1.3]);
axis equal
axis off
```

## 🔗 See also

[patch](../../../graphics/1_plots/7_surfaces_volumes_polygons/patch.md), [fill](../../../graphics/1_plots/7_surfaces_volumes_polygons/fill.md), [annotation](../../../graphics/3_labels_styling/4_labels_annotations/annotation.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
