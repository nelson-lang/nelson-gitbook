#import "../../nelson_help.typ": *

= semilogx <graphics:1_plots.1_line_plots.semilogx>

Semilog plot (x-axis has log scale).

== Syntax

- #raw("semilogx(X, Y)");
- #raw("semilogx(X, Y, LineSpec)");
- #raw("semilogx(Y)");
- #raw("semilogx(Y, LineSpec)");
- #raw("semilogx(ax, ...)");
- #raw("semilogx(..., propertyName, propertyValue)");
- #raw("go = semilogx(...)");

== Input argument

/ X: Log scale coordinates: scalar, vector or matrix.
/ Y: Linear scale coordinates: scalar, vector or matrix.
/ LineSpec: Line style, marker, and\/or color: character vector or scalar string.
/ ax: a scalar graphics object value: parent container, specified as a axes.
/ propertyName: a scalar string or row vector character. See #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.line.properties>)[line properties]; for the property list.
/ propertyValue: a value.

== Output argument

/ go: a graphics object: line type.

== Description

#strong[semilogx(X, Y)]; plots data using a base 10 logarithmic scale for the x-axis and a normal (linear) scale for the y-axis.

 #strong[semilogx]; has the exact same syntax as the #strong[plot]; command.


== Examples

``````matlab
f = figure();
x = logspace(-1,2);
semilogx(x, x);
grid on
``````


#align(center)[#image("semilogx_1.svg")]
``````matlab
f = figure();
x = logspace(-1, 2, 15);
y = 13 + x;
semilogx(x, y, 'x', 'MarkerFaceColor', [0 0.447 0.741])
grid on
``````


#align(center)[#image("semilogx_2.svg")]

== See also

#nlink(<graphics:1_plots.1_line_plots.semilogy>)[semilogy];, #nlink(<graphics:1_plots.1_line_plots.line>)[line];, #nlink(<graphics:1_plots.1_line_plots.plot>)[plot];, #nlink(<graphics:3_labels_styling.1_axes_appearance.grid>)[grid];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
