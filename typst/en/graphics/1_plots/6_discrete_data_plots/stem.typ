#import "../../nelson_help.typ": *

= stem <graphics:1_plots.6_discrete_data_plots.stem>

Plot discrete sequence data.

== Syntax

- #raw("stem(Y)");
- #raw("stem(X, Y)");
- #raw("stem(..., 'filled')");
- #raw("stem(..., LineSpec)");
- #raw("stem(..., propertyName, propertyValue)");
- #raw("stem(ax, ...)");
- #raw("go = stem(...)");

== Input argument

/ X: Locations to plot data values in Y.
/ Y: Data sequence to display.
/ LineSpec: Line style, marker and\/or color: character vector or scalar string.
/ propertyName: a scalar string or row vector character.
/ propertyValue: a value.
/ ax: Axes object.

== Output argument

/ gr: Stem graphics object or vector of stem graphics objects.

== Description

A two-dimensional#strong[stem]; plot is a way to visualize data by representing it as lines extending from a horizontal baseline along the x-axis.

 At the end of each line, there is a circle (which is the default marker), and the vertical position of this circle corresponds to the value of the data it represents.

 #strong[stem(Y)]; creates a stem plot by taking the data sequence #strong[Y]; and drawing stems that extend from regularly spaced and automatically determined points along the x-axis.

 If #strong[Y]; is a matrix, the stem function plots all elements in a row against the same x-value.

 #strong[stem(X, Y)]; creates a stem plot that shows how#strong[X]; relates to the columns of #strong[Y];.

 Both #strong[X]; and#strong[Y]; can be vectors or matrices of the same size.

 #strong[X]; can be either a row or a column vector, and#strong[Y]; should be a matrix with the same number of rows as the length of #strong[X];.

 If you want to specify whether to fill the circle at the end of each stem, you can use #strong[stem(...,'fill')];.

 Moreover, by using#strong[stem(..., LineSpec)];, you can define the line style, marker symbol, and color for the stems and the top marker.

 Refer to #strong[LineSpec]; for more details on how to customize the appearance of the stem plot.

 See #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.stem.properties>)[nelson.graphics.stem.properties]; for supported stem object properties.


== Examples

``````matlab
f = figure();
x = 1:10;
y = 2*x;
h = stem (x, y, 'MarkerFaceColor', [1 0 1]);
title('stem plot modified with property/value pair');
``````


#align(center)[#image("stem_1.svg")]
``````matlab
f =figure();
% Defining base line - X input vector ranging from 0 to 2*pi
X = 0 : pi/100 : 2*pi;
% Defining the Y input vector as function of X
Y = exp(-3*X/4) .* cos(2*X);
% Third, we use the 'stem' function to plot discrete values
stem(X,Y)
``````


#align(center)[#image("stem_2.svg")]

== See also

#nlink(<graphics:1_plots.1_line_plots.plot>)[plot];, #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.stem.properties>)[nelson.graphics.stem.properties];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
