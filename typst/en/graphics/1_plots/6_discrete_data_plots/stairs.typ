#import "../../nelson_help.typ": *

= stairs <graphics:1_plots.6_discrete_data_plots.stairs>

Stairstep graph.

== Syntax

- #raw("stairs(Y)");
- #raw("stairs(X, Y)");
- #raw("stairs(..., LineSpec)");
- #raw("stairs(..., Name, Value)");
- #raw("stairs(ax, ...)");
- #raw("h = stairs(...)");
- #raw("[xb, yb] = stairs(...)");

== Input argument

/ X: x values.
/ Y: y values.
/ LineSpec: Line style, marker and\/or color: character vector or scalar string.
/ propertyName: a scalar string or row vector character.
/ propertyValue: a value.
/ ax: Axes object.

== Output argument

/ h: line object.
/ xb: x values for use with plot
/ yb: y values for use with plot

== Description

Stairstep graphs are a valuable tool for creating time-history plots of digitally sampled data.

 #strong[stairs(Y)]; function is used to generate such graphs by plotting the elements of the vector#strong[Y.];

 If #strong[Y]; is a matrix, it draws one line for each column, with the color of the lines determined by the ColorOrder property of the axes.

 In the case of a vector#strong[Y];, the x-axis scale spans from 1 to the length of #strong[Y];, while for a matrix#strong[Y];, the x-axis scale ranges from 1 to the number of rows in#strong[Y];.

 #strong[stairs(X, Y)]; allows you to plot the elements in#strong[Y]; at specific locations defined by the vector #strong[X];.

 It's important to note that the elements in #strong[X]; must be in a monotonic order to create a valid stairstep graph.


== Examples

``````matlab
f = figure();
x1 = linspace(0,2*pi)';
x2 = linspace(0,pi)';
X = [x1,x2];
Y = [sin(5*x1),exp(x2).*sin(5*x2)];
ax = gca();
stairs(ax, X,Y)

``````


#align(center)[#image("stairs_1.svg")]
``````matlab
X = linspace(0,1,45)';
Y = [cos(3*X), exp(X).*sin(9*X)];
h = stairs(X,Y);
h(1).Marker = 'o';
h(1).MarkerSize = 5;
h(2).Marker = '+';
h(2).MarkerFaceColor = 'm';

``````


#align(center)[#image("stairs_2.svg")]

== See also

#nlink(<graphics:1_plots.1_line_plots.plot>)[plot];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
