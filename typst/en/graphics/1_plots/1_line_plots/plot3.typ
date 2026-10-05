#import "../../nelson_help.typ": *

= plot3 <graphics:1_plots.1_line_plots.plot3>

3-D line plot.

== Syntax

- #raw("plot3(X1, Y1, Z1, ...)");
- #raw("plot3(X1, Y1, Z1, LineSpec, ...)");
- #raw("plot3(..., propertyName, propertyValue, ...)");
- #raw("plot3(ax, ...)");
- #raw("go = plot3(...)");

== Input argument

/ X1: x-coordinates: vector or matrix.
/ Y1: y-coordinates: vector or matrix.
/ Z1: z-coordinates: vector or matrix.
/ LineSpec: Line style, marker, and\/or color: character vector or scalar string.
/ ax: a scalar graphics object value: parent container, specified as a axes.
/ propertyName: a scalar string or row vector character. See #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.line.properties>)[line properties]; for the property list.
/ propertyValue: a value.

== Output argument

/ go: a graphics object: line type.

== Description

#strong[plot3(X1, Y1, Z1, ...)]; plots one or more lines in three-dimensional space.

 #strong[go \= plot3(...)]; returns a column vector of line graphics objects.

 

 see #strong[line]; or#strong[plot]; for more information about properties


== Examples

``````matlab
f  = figure();
t = 0:pi/50:10*pi;
L = plot3(sin(t), cos(t), t);
axis square
``````


#align(center)[#image("plot3_1.svg")]
``````matlab
f  = figure();
t = 0:0.1:10*pi;
r = linspace (0, 1, length(t));
z = linspace (0, 1, length(t));
h = plot3 (r .* cos (t), r .* sin (t), z);
ylabel ('r .* sin (t)');
xlabel ('r .* cos (t)');
zlabel ('z');
title ('plot3 display of 3-D helix');
axis square
``````


#align(center)[#image("plot3_2.svg")]

== See also

#nlink(<graphics:1_plots.1_line_plots.line>)[line];, #nlink(<graphics:1_plots.1_line_plots.plot>)[plot];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
