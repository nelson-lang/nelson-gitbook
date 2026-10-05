#import "../../nelson_help.typ": *

= contour <graphics:1_plots.3_contour_plots.contour>

Contour plot of matrix

== Syntax

- #raw("contour(Z)");
- #raw("contour(X, Y, Z)");
- #raw("contour(..., levels)");
- #raw("contour(..., LineSpec)");
- #raw("contour(ax, ...)");
- #raw("M = contour(...)");
- #raw("[M, h] = contour(...)");

== Input argument

/ X: x-coordinates: vector or matrix.
/ Y: y-coordinates: vector or matrix.
/ Z: z-coordinates: matrix.
/ levels: Contour levels: scalar or vector.
/ LineSpec: Line specification defining line style and color.
/ ax: a scalar graphics object value: parent container specified as an axes.

== Output argument

/ M: Contour matrix.
/ h: a graphics object: contour type.

== Description

#strong[contour(Z)]; generates a contour plot representing isolines of the matrix Z. Each isoline corresponds to a specific height value on the x-y plane.

 Nelson automatically selects contour lines based on the values in Z. The column and row indices of Z serve as the x and y coordinates in the plane, respectively.

 #strong[contour(X, Y, Z)]; allows the user to specify the x and y coordinates corresponding to the values in matrix Z. This enables more precise control over the positioning of the contour plot on the x-y plane.

 The matrices X and Y provide the coordinates, while Z contains the height values for generating the contour plot.

 See #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.contour.properties>)[contour properties]; for the complete property list.


== Examples

``````matlab

f = figure();
subplot(2, 3, 1)

x = linspace(-2 * pi, 2 * pi);
y = linspace(0, 4 * pi);

[X, Y] = meshgrid(x, y);

Z = sin(X) + cos(Y);

contour(X, Y, Z);

subplot(2, 3, 2)

[X, Y, Z] = peaks;

contour(X, Y, Z, 20)

subplot(2, 3, 3)

[X, Y, Z] = peaks;

v = [1, 1];

contour(X, Y, Z, v)

subplot(2, 3, 4)

[X, Y, Z] = peaks;

contour(X, Y, Z, '-.')

subplot(2, 3, 5)

Z = peaks;

[M, c] = contour(Z);

c.LineWidth = 3;

subplot(2, 3, 6)

[theta, r] = meshgrid(linspace(0, 2 * pi, 64), linspace(0, 1, 64));

[X, Y] = pol2cart(theta, r);

Z = sin(2 * theta) .* (1 - r);

contour(X, Y, abs(Z), 10);

``````


#align(center)[#image("contour_1.svg")]
``````matlab

rng('default');
f = figure();
N = 50;
contour(1:N, 1:N, rand(N), 5)

``````


#align(center)[#image("contour_2.svg")]
``````matlab

f = figure();
Z = peaks;
Z(:, 26) = NaN;
contour(Z)

``````


#align(center)[#image("contour_nan.svg")]
Labeled contour lines.

``````matlab

[X, Y, Z] = peaks;

[C, h] = contour(X, Y, Z);

clabel(C, h);

``````


== See also

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.contour.properties>)[contour properties];, #nlink(<graphics:1_plots.3_contour_plots.contourc>)[contourc];, #nlink(<graphics:1_plots.3_contour_plots.contourf>)[contourf];, #nlink(<graphics:1_plots.3_contour_plots.contour3>)[contour3];, #nlink(<graphics:1_plots.3_contour_plots.clabel>)[clabel];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.surf>)[surf];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.mesh>)[mesh];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.3.0], [Initial version.],
  [1.7.0], [CreateFcn and DeleteFcn callbacks added.],
  [1.8.0], [BeingDeleted property added.],
)

// Author: Allan CORNET
