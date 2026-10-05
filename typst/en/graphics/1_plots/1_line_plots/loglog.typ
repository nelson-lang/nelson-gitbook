#import "../../nelson_help.typ": *

= loglog <graphics:1_plots.1_line_plots.loglog>

Log-log scale plot.

== Syntax

- #raw("loglog(X, Y)");
- #raw("loglog(X, Y, LineSpec)");
- #raw("loglog(Y)");
- #raw("loglog(Y, LineSpec)");
- #raw("loglog(ax, ...)");
- #raw("loglog(..., propertyName, propertyValue)");
- #raw("go = loglog(...)");

== Input argument

/ X: Log scale coordinates: scalar, vector or matrix.
/ Y: Log scale coordinates: scalar, vector or matrix.
/ LineSpec: Line style, marker, and\/or color: character vector or scalar string.
/ ax: a scalar graphics object value: parent container, specified as a axes.
/ propertyName: a scalar string or row vector character. See #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.line.properties>)[line properties]; for the property list.
/ propertyValue: a value.

== Output argument

/ go: a graphics object: line type.

== Description

#strong[loglog(X, Y)]; plots data using a base 10 logarithmic scale for the x-axis and the y-axis.

 #strong[loglog]; has the exact same syntax as the #strong[plot]; command.


== Examples

``````matlab
f = figure();
x = logspace(-1,2);
y = 2 .^ x;
loglog(x,y)
grid on
``````


#align(center)[#image("loglog_1.svg")]
``````matlab
f = figure();
x = logspace(-1,2,20);
y = 10 .^ x;
loglog(x,y,'s','MarkerFaceColor',[0 0.447 0.741])
grid on
``````


#align(center)[#image("loglog_2.svg")]

== See also

#nlink(<graphics:1_plots.1_line_plots.semilogx>)[semilogx];, #nlink(<graphics:1_plots.1_line_plots.semilogy>)[semilogy];, #nlink(<graphics:1_plots.1_line_plots.line>)[line];, #nlink(<graphics:1_plots.1_line_plots.plot>)[plot];, #nlink(<graphics:3_labels_styling.1_axes_appearance.grid>)[grid];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
