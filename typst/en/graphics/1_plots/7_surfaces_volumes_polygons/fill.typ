#import "../../nelson_help.typ": *

= fill <graphics:1_plots.7_surfaces_volumes_polygons.fill>

Create filled 2-D patches.

== Syntax

- #raw("fill(X, Y, C)");
- #raw("fill(X1, Y1, C1, ..., Xn, Yn, Cn)");
- #raw("fill(..., propertyName, propertyValue)");
- #raw("fill(ax, ...)");
- #raw("go = fill(...)");

== Input argument

/ X: x-coordinates: vector or matrix.
/ Y: y-coordinates: vector or matrix.
/ C: Color array: scalar, vector, m-by-n-by-3 array of RGB triplets.
/ ax: a scalar graphics object value: parent container, specified as a axes.
/ propertyName: a scalar string or row vector character.
/ propertyValue: a value.

== Output argument

/ go: a graphics object: patch type.

== Description

#strong[fill(X, Y, C)]; creates a 2D polygonal shape with vertices defined by#strong[X]; and #strong[Y]; coordinates, and fills the shape with color#strong[C];.

 #strong[fill(..., PropertyName, PropertyValue, ...)]; sets optional properties for the fill\/patch object using name-value pairs.

 #strong[go \= fill(...)]; returns the handle #strong[go]; to the created patch object.

 Property Name-Value Pairs:

 

 #strong['FaceColor'];: color of the filled shape. FaceColor can be a character vector or a 3-element RGB vector. Default:#strong['flat'];.

 #strong['EdgeColor'];: color of the edges of the polygonal shape. EdgeColor can be a character vector or a 3-element RGB vector. Default:#strong['none'];.

 #strong['LineWidth'];: width of the edges of the polygonal shape. Default:#strong[0.5];.

 #strong['LineStyle'];: style of the edges of the polygonal shape. LineStyle can be a character vector or a line style code. Default:#strong['-'];.

 #strong['FaceAlpha'];: transparency of the filled shape. FaceAlpha can be a scalar between 0 and 1. Default:#strong[1];.

 #strong['EdgeAlpha'];: transparency of the edges of the polygonal shape. EdgeAlpha can be a scalar between 0 and 1. Default:#strong[1];.

 #strong['Parent'];: handle of the parent object for the patch. Default:#strong[gca()];.

 #strong['Vertices'];: matrix of vertex coordinates. The matrix must have size N-by-2 or N-by-3, where N is the number of vertices. Default: the vertex coordinates are specified by the #strong[X];, #strong[Y];, and #strong[Z]; input arguments.


== Examples

``````matlab
f = figure();
outerX = [0, 0.3, 1, 0.7, 1, 0.3, 0, -0.3, -1, -0.7, -1, -0.3, 0];
outerY = [1, 0.3, 0.3, 0, -0.3, -1, -0.3, -1, -0.3, 0, 0.3, 0.3, 1];
innerX = [0, 0.2, 0.5, 0.35, 0.5, 0.2, 0, -0.2, -0.5, -0.35, -0.5, -0.2, 0];
innerY = [0.6, 0.3, 0.3, 0, -0.3, -0.6, -0.3, -0.6, -0.3, 0, 0.3, 0.3, 0.6];
fill(outerX, outerY, 'y');
hold on
fill(innerX, innerY, 'r');
``````


#align(center)[#image("fill_1.svg")]
``````matlab
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

``````


#align(center)[#image("fill_2.svg")]
Alpha channel

``````matlab
f = figure();
x = [10 30 40 30 10 0];
y = [0 0 20 40 40 20];
hold on
fill(x, y, 'cyan', 'FaceAlpha', 0.3);
fill(x + 2, y, 'magenta', 'FaceAlpha', 0.3);
fill(x + 1, y + 2, 'yellow', 'FaceAlpha', 0.3);
``````


#align(center)[#image("fill_3.svg")]

== See also

#nlink(<graphics:1_plots.7_surfaces_volumes_polygons.patch>)[patch];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.fill3>)[fill3];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.area>)[area];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
