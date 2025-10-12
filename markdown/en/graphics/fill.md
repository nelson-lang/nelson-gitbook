# fill

Create filled 2-D patches.

## Syntax

- fill(X, Y, C)
- fill(..., propertyName, propertyValue)
- fill(ax, ...)
- go = fill(...)

## Input argument

- X - x-coordinates: vector or matrix.
- Y - y-coordinates: vector or matrix.
- C - Color array: scalar, vector, m-by-n-by-3 array of RGB triplets.
- ax - a scalar graphics object value: parent container, specified as a axes.
- propertyName - a scalar string or row vector character.
- propertyValue - a value.

## Output argument

- go - a graphics object: patch type.

## Description

<p>
            fill(X, Y, C) creates a 2D polygonal shape with vertices defined by X and Y coordinates, and fills the shape with color C.</p>

<p>
                fill(..., PropertyName, PropertyValue, ...) sets optional properties for the fill/patch object using name-value pairs.</p>

<p>
                    go = fill(...) returns the handle go to the created patch object.</p>

<p>Property Name-Value Pairs:</p>

<p></p>

<p>
                        'FaceColor': color of the filled shape. FaceColor can be a character vector or a 3-element RGB vector. Default: 'flat'.</p>

<p>
                            'EdgeColor': color of the edges of the polygonal shape. EdgeColor can be a character vector or a 3-element RGB vector. Default: 'none'.</p>

<p>
                                'LineWidth': width of the edges of the polygonal shape. Default: 0.5.</p>

<p>
                                    'LineStyle': style of the edges of the polygonal shape. LineStyle can be a character vector or a line style code. Default: '-'.</p>

<p>
                                        'FaceAlpha': transparency of the filled shape. FaceAlpha can be a scalar between 0 and 1. Default: 1.</p>

<p>
                                            'EdgeAlpha': transparency of the edges of the polygonal shape. EdgeAlpha can be a scalar between 0 and 1. Default: 1.</p>

<p>
                                                'Parent': handle of the parent object for the patch. Default: gca().</p>

<p>
                                                    'Vertices': matrix of vertex coordinates. The matrix must have size N-by-2 or N-by-3, where N is the number of vertices. Default: the vertex coordinates are specified by the X, Y, and Z input arguments.</p>

## Examples

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

## See also

[patch](../graphics/patch.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
