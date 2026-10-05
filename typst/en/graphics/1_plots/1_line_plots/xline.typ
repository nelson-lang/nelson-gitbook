#import "../../nelson_help.typ": *

= xline <graphics:1_plots.1_line_plots.xline>

Vertical constant line.

== Syntax

- #raw("xline(xvalue)");
- #raw("xline(xvalue, LineSpec)");
- #raw("xline(xvalue, LineSpec, label)");
- #raw("xline(xvalue, propertyName, propertyValue)");
- #raw("xline(ax, xvalue)");
- #raw("cl = xline(xvalue)");

== Input argument

/ xvalue: a real numeric scalar or vector: location of the vertical line(s) on the x-axis.
/ LineSpec: a row vector character or a scalar string: line style and color, for example #strong['--r'];.
/ label: a row vector character, a scalar string or a cell of character vectors: text displayed next to the line.
/ ax: Target axes: axes object.
/ propertyName: a scalar string or row vector character.
/ propertyValue: a value.

== Output argument

/ cl: a graphics object: ConstantLine type.

== Description

#strong[xline(xvalue)]; draws a vertical line at the value #strong[xvalue]; on the current axes. The line spans the full height of the axes.

 Use a #strong[LineSpec]; to set the line style and color, and a #strong[label]; to annotate the line.

 When #strong[xvalue]; is a vector, one vertical line is created for each value.


== Examples

``````matlab
f = figure();
plot(1:10, (1:10).^2);
xline(5, '--r', 'threshold');

``````

``````matlab
f = figure();
plot(-10:10, (-10:10).^2);
xline([-3 3], 'Color', [0 0 1], 'LineWidth', 2);

``````


== See also

#nlink(<graphics:1_plots.1_line_plots.yline>)[yline];, #nlink(<graphics:1_plots.1_line_plots.line>)[line];, #nlink(<graphics:1_plots.1_line_plots.plot>)[plot];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
