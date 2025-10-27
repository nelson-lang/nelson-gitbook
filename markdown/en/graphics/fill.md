# fill

Create filled 2-D patches.

## 📝 Syntax

- fill(X, Y, C)
- fill(..., propertyName, propertyValue)
- fill(ax, ...)
- go = fill(...)

## 📥 Input argument

- X - x-coordinates: vector or matrix.
- Y - y-coordinates: vector or matrix.
- C - Color array: scalar, vector, m-by-n-by-3 array of RGB triplets.
- ax - a scalar graphics object value: parent container, specified as a axes.
- propertyName - a scalar string or row vector character.
- propertyValue - a value.

## 📤 Output argument

- go - a graphics object: patch type.

## 📄 Description

<b>fill(X, Y, C)</b> creates a 2D polygonal shape with vertices defined by <b>X</b> and <b>Y</b> coordinates, and fills the shape with color <b>C</b>.

<b>fill(..., PropertyName, PropertyValue, ...)</b> sets optional properties for the fill/patch object using name-value pairs.

<b>go = fill(...)</b> returns the handle <b>go</b> to the created patch object.

Property Name-Value Pairs:

<b>'FaceColor'</b>: color of the filled shape. FaceColor can be a character vector or a 3-element RGB vector. Default: <b>'flat'</b>.

<b>'EdgeColor'</b>: color of the edges of the polygonal shape. EdgeColor can be a character vector or a 3-element RGB vector. Default: <b>'none'</b>.

<b>'LineWidth'</b>: width of the edges of the polygonal shape. Default: <b>0.5</b>.

<b>'LineStyle'</b>: style of the edges of the polygonal shape. LineStyle can be a character vector or a line style code. Default: <b>'-'</b>.

<b>'FaceAlpha'</b>: transparency of the filled shape. FaceAlpha can be a scalar between 0 and 1. Default: <b>1</b>.

<b>'EdgeAlpha'</b>: transparency of the edges of the polygonal shape. EdgeAlpha can be a scalar between 0 and 1. Default: <b>1</b>.

<b>'Parent'</b>: handle of the parent object for the patch. Default: <b>gca()</b>.

<b>'Vertices'</b>: matrix of vertex coordinates. The matrix must have size N-by-2 or N-by-3, where N is the number of vertices. Default: the vertex coordinates are specified by the <b>X</b>, <b>Y</b>, and <b>Z</b> input arguments.

## 💡 Examples

```matlab
f = figure();
outerX = [0, 0.3, 1, 0.7, 1, 0.3, 0, -0.3, -1, -0.7, -1, -0.3, 0];
outerY = [1, 0.3, 0.3, 0, -0.3, -1, -0.3, -1, -0.3, 0, 0.3, 0.3, 1];
innerX = [0, 0.2, 0.5, 0.35, 0.5, 0.2, 0, -0.2, -0.5, -0.35, -0.5, -0.2, 0];
innerY = [0.6, 0.3, 0.3, 0, -0.3, -0.6, -0.3, -0.6, -0.3, 0, 0.3, 0.3, 0.6];
fill(outerX, outerY, 'y');
fill(innerX, innerY, 'r');
```

<img src="fill_1.svg" align="middle"/>

```matlab
% Define the vertices of a colorful geometric pattern
x1 = [0, 1, 1, 0];
y1 = [0, 0, 1, 1];
x2 = [0.5, 1.5, 1.5, 0.5];
y2 = [0.5, 0.5, 1.5, 1.5];
x3 = [1, 2, 2, 1];
y3 = [1, 1, 2, 2];

% Define colors for the polygons
colors = ['r', 'g', 'b'];

% Create a figure with a white background
figure('Color', 'w');

% Fill the polygons with different colors
fill(x1, y1, colors(1));
hold on;
fill(x2, y2, colors(2));
fill(x3, y3, colors(3));

% Add labels to distinguish the regions
text(0.5, 0.5, 'Polygon 1', 'Color', 'w', 'HorizontalAlignment', 'center', 'FontWeight', 'bold');
text(1.25, 1.25, 'Polygon 2', 'Color', 'w', 'HorizontalAlignment', 'center', 'FontWeight', 'bold');
text(1.5, 0.5, 'Polygon 3', 'Color', 'w', 'HorizontalAlignment', 'center', 'FontWeight', 'bold');

axis equal;
title('Colorful Geometric Pattern');

```

<img src="fill_2.svg" align="middle"/>
Alpha channel

```matlab
f = figure();
x = [10 30 40 30 10 0];
y = [0 0 20 40 40 20];
hold on
fill(x, y, 'cyan', 'FaceAlpha', 0.3);
fill(x + 2, y, 'magenta', 'FaceAlpha', 0.3);
fill(x + 1, y + 2, 'yellow', 'FaceAlpha', 0.3);
```

<img src="fill_3.svg" align="middle"/>

## 🔗 See also

[patch](../graphics/patch.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
