#import "../../nelson_help.typ": *

= semilogy <graphics:1_plots.1_line_plots.semilogy>

Semilog plot (y-axis has log scale).

== Syntax

- #raw("semilogy(X, Y)");
- #raw("semilogy(X, Y, LineSpec)");
- #raw("semilogy(Y)");
- #raw("semilogy(Y, LineSpec)");
- #raw("semilogy(ax, ...)");
- #raw("semilogy(..., propertyName, propertyValue)");
- #raw("go = semilogy(...)");

== Input argument

/ X: Linear scale coordinates: scalar, vector or matrix.
/ Y: Log scale coordinates: scalar, vector or matrix.
/ LineSpec: Line style, marker, and\/or color: character vector or scalar string.
/ ax: a scalar graphics object value: parent container, specified as a axes.
/ propertyName: a scalar string or row vector character. See #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.line.properties>)[line properties]; for the property list.
/ propertyValue: a value.

== Output argument

/ go: a graphics object: line type.

== Description

#strong[semilogy(X, Y)]; plots data using a base 10 logarithmic scale for the y-axis and a normal (linear) scale for the x-axis.

 #strong[semilogy]; has the exact same syntax as the #strong[plot]; command.


== Examples

``````matlab
f = figure();
x = 1:100;
y1 = x.^2;
y2 = x.^3;
semilogy(x,y1,'--',x,y2)
legend('x^2','x^3','Location','northwest')
``````


#align(center)[#image("semilogy_1.svg")]
``````matlab
f = figure();
y = [ 0.1    1     10
      0.2    2     20
      1.0    10    100
      10     100   1000
      1000   10000 100000];

semilogy(y)
grid on
``````


#align(center)[#image("semilogy_2.svg")]

== See also

#nlink(<graphics:1_plots.1_line_plots.semilogx>)[semilogx];, #nlink(<graphics:1_plots.1_line_plots.line>)[line];, #nlink(<graphics:1_plots.1_line_plots.plot>)[plot];, #nlink(<graphics:3_labels_styling.1_axes_appearance.grid>)[grid];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
