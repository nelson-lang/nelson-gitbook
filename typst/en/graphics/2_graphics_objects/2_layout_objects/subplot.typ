#import "../../nelson_help.typ": *

= subplot <graphics:2_graphics_objects.2_layout_objects.subplot>

Create axes in tiled positions.

== Syntax

- #raw("subplot(m, n, p)");
- #raw("subplot('mnp')");
- #raw("subplot('Position', pos)");
- #raw("ax = subplot(...)");

== Input argument

/ m: Number of grid rows: scalar positive integer.
/ n: Number of grid columns: scalar positive integer.
/ p: Grid position for new axes: scalar or vector.
/ pos: Custom position for new axes: \[left bottom width height\].

== Output argument

/ ax: a graphics object: axes type.

== Description

#strong[subplot(n, m, p)]; divides the current figure into a 2-dimensional grid.

 Each of which can contain a plot of some kind.


== Examples

``````matlab
f = figure();
X = linspace(-pi, pi) * 2;
Y1 = cos(X) .* exp(-2 * X);
Y2 = cos(X * 2) .* exp(-2 * X);
Y3 = cos(X * 3) .* exp(-2 * X);
Y4 = cos(X * 4) .* exp(-2 * X);

subplot(4, 1, 1)
plot(X, Y1,'b');
subplot(4, 1, 2)
plot(X, Y2, 'r');
subplot(4, 1, 3);
plot(X, Y3, 'g');
subplot(4, 1, 4);
plot(X, Y4, 'k');
``````


#align(center)[#image("subplot_1.svg")]
``````matlab
f = figure();
t = 0 : (2 * pi/100) : (2 * pi);
X = cos(t * 2) .* (2 + sin(t * 3) * 0.3);
Y = sin(t * 2) .* (2 + sin(t * 3) * 0.3);
Z = cos(t * 3) * 0.3;
subplot(2, 2, 1)
surf(peaks());
axis equal
view(3)
subplot(2, 2, 2);
plot(t, X);
subplot(2, 2, 3);
plot(t, Y);
subplot(2, 2, 4);
plot(t, Z);
``````


#align(center)[#image("subplot_2.svg")]

== See also

#nlink(<graphics:1_plots.1_line_plots.plot>)[plot];, #nlink(<graphics:2_graphics_objects.1_object_management.axes>)[axes];, #nlink(<graphics:2_graphics_objects.2_layout_objects.tiledlayout>)[tiledlayout];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
