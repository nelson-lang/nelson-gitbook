#import "../../nelson_help.typ": *

= errorbar <graphics:1_plots.1_line_plots.errorbar>

Plot data with error bars.

== Syntax

- #raw("errorbar(Y, E)");
- #raw("errorbar(X, Y, E)");
- #raw("errorbar(X, Y, YNEG, YPOS)");
- #raw("errorbar(..., orientation)");
- #raw("errorbar(X, Y, YNEG, YPOS, XNEG, XPOS)");
- #raw("errorbar(..., lineSpec)");
- #raw("errorbar(..., propertyName, propertyValue)");
- #raw("errorbar(ax, ...)");
- #raw("h = errorbar(...)");

== Input argument

/ X: x data values.
/ Y: y data values.
/ E: symmetric y error values.
/ YNEG: negative y error values.
/ YPOS: positive y error values.
/ XNEG: negative x error values.
/ XPOS: positive x error values.
/ orientation: error bar orientation: #strong['vertical'];, #strong['horizontal'];, or #strong['both'];.
/ lineSpec: line style, marker, and color specification.
/ propertyName: errorbar object property name.
/ propertyValue: errorbar object property value.
/ ax: target axes object.

== Output argument

/ h: errorbar graphics object or row vector of errorbar objects for matrix data.

== Description

#strong[errorbar]; plots x and y data with vertical or combined x\/y error bars.

 Vector inputs create one errorbar object. Matrix inputs create one errorbar object for each column.

 See #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.errorbar.properties>)[errorbar properties]; for the complete property list.


== Examples

Plot vertical error bars of equal length.

``````matlab
x = 1:10:100;
y = [20 30 45 40 60 65 80 75 95 90];
err = 8 * ones(size(y));
errorbar(x, y, err);

``````


#align(center)[#image("errorbar_1.svg")]
Plot vertical error bars that vary in length.

``````matlab
x = 1:10:100;
y = [20 30 45 40 60 65 80 75 95 90];
err = [5 8 2 9 3 3 8 3 9 3];
errorbar(x, y, err);

``````


#align(center)[#image("errorbar_2.svg")]
Plot horizontal error bars.

``````matlab
x = 1:10:100;
y = [20 30 45 40 60 65 80 75 95 90];
err = [1 3 5 3 5 3 6 4 3 3];
errorbar(x, y, err, 'horizontal');

``````


#align(center)[#image("errorbar_3.svg")]
Plot vertical and horizontal error bars with markers only.

``````matlab
x = 1:10:100;
y = [20 30 45 40 60 65 80 75 95 90];
err = [4 3 5 3 5 3 6 4 3 3];
errorbar(x, y, err, 'both', 'o');

``````


#align(center)[#image("errorbar_4.svg")]
Control error bar lengths in all directions.

``````matlab
x = 1:10:100;
y = [20 30 45 40 60 65 80 75 95 90];
yneg = [1 3 5 3 5 3 6 4 3 3];
ypos = [2 5 3 5 2 5 2 2 5 5];
xneg = [1 3 5 3 5 3 6 4 3 3];
xpos = [2 5 3 5 2 5 2 2 5 5];
errorbar(x, y, yneg, ypos, xneg, xpos, 'o');

``````


#align(center)[#image("errorbar_5.svg")]

== See also

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.errorbar.properties>)[errorbar properties];, #nlink(<graphics:1_plots.1_line_plots.plot>)[plot];, #nlink(<graphics:1_plots.1_line_plots.line>)[line];.

// Author: Allan CORNET
