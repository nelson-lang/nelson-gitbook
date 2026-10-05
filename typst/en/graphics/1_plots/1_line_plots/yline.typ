#import "../../nelson_help.typ": *

= yline <graphics:1_plots.1_line_plots.yline>

Horizontal constant line.

== Syntax

- #raw("yline(yvalue)");
- #raw("yline(yvalue, LineSpec)");
- #raw("yline(yvalue, LineSpec, label)");
- #raw("yline(yvalue, propertyName, propertyValue)");
- #raw("yline(ax, yvalue)");
- #raw("cl = yline(yvalue)");

== Input argument

/ yvalue: a real numeric scalar or vector: location of the horizontal line(s) on the y-axis.
/ LineSpec: a row vector character or a scalar string: line style and color, for example #strong['--r'];.
/ label: a row vector character, a scalar string or a cell of character vectors: text displayed next to the line.
/ ax: Target axes: axes object.
/ propertyName: a scalar string or row vector character.
/ propertyValue: a value.

== Output argument

/ cl: a graphics object: ConstantLine type.

== Description

#strong[yline(yvalue)]; draws a horizontal line at the value #strong[yvalue]; on the current axes. The line spans the full width of the axes.

 Use a #strong[LineSpec]; to set the line style and color, and a #strong[label]; to annotate the line.

 When #strong[yvalue]; is a vector, one horizontal line is created for each value.


== Examples

``````matlab
f = figure();
plot(1:10, (1:10).^2);
yline(50, '-.b', 'mean');

``````

``````matlab
f = figure();
plot(1:10, sin(1:10));
yline([-1 0 1], 'Color', [0 0 1]);

``````


== See also

#nlink(<graphics:1_plots.1_line_plots.xline>)[xline];, #nlink(<graphics:1_plots.1_line_plots.line>)[line];, #nlink(<graphics:1_plots.1_line_plots.plot>)[plot];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
