#import "../../nelson_help.typ": *

= barh <graphics:1_plots.6_discrete_data_plots.barh>

Horizontal bar graph.

== Syntax

- #raw("barh(Y)");
- #raw("barh(X, Y)");
- #raw("barh(..., width)");
- #raw("barh(..., color)");
- #raw("barh(..., 'grouped')");
- #raw("barh(..., 'stacked')");
- #raw("barh(tbl, yvar)");
- #raw("barh(tbl, xvar, yvar)");
- #raw("barh(..., propertyName, propertyValue)");
- #raw("barh(ax, ...)");
- #raw("b = barh(...)");

== Input argument

/ X: bar positions: scalar, vector, categorical array, string array, or cell array of labels.
/ Y: bar values: vector or matrix.
/ width: bar width, scalar, 0.8 by default.
/ color: color name or short color name.
/ tbl: table or timetable containing the plotted variables.
/ xvar: table variable used for bar positions or labels.
/ yvar: one or more numeric table variables used for bar values.
/ propertyName: bar object property name.
/ propertyValue: bar object property value.
/ ax: target axes object.

== Output argument

/ b: bar graphics object or vector of bar graphics objects.

== Description

#strong[barh]; creates a horizontal bar graph. Matrix input creates grouped bars by default. Use #strong['stacked']; to stack columns in each group.

 For table input, select one variable for labels or positions and one or more numeric variables for values.


== Examples

Horizontal bar graph from a vector.

``````matlab
f = figure();
y = [3 5 2 7 4];
barh(y);

``````


#align(center)[#image("barh_1.svg")]
Grouped horizontal bars.

``````matlab
f = figure();
y = [1 2; 3 4; 5 6];
barh(y, 'grouped');

``````


#align(center)[#image("barh_2.svg")]
Stacked horizontal bars with positive and negative values.

``````matlab
f = figure();
y = [3 -2 5; -4 1 -3];
barh(y, 'stacked');

``````


#align(center)[#image("barh_3.svg")]

== See also

#nlink(<graphics:1_plots.6_discrete_data_plots.bar>)[bar];, #nlink(<graphics:1_plots.6_discrete_data_plots.bar3h>)[bar3h];.

// Author: Allan CORNET
