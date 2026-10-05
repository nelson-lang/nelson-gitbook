#import "../../nelson_help.typ": *

= grid <graphics:3_labels_styling.1_axes_appearance.grid>

Display or hide axes grid lines.

== Syntax

- #raw("grid");
- #raw("grid('on')");
- #raw("grid('off')");
- #raw("grid('minor')");
- #raw("grid(ax, ...)");

== Input argument

/ 'on': displays the major grid line.
/ 'off': removes all grid lines.
/ 'minor': toggles the visibility of the minor grid lines.
/ ax: Target object: axes.

== Description

#strong[grid()]; toggles the visibility of the major grid lines.


== Example

``````matlab
f = figure();
x = linspace(0, 20);
y = cos(x);
plot(x, y)
grid on
``````


#align(center)[#image("grid.svg")]

== See also

#nlink(<graphics:2_graphics_objects.1_object_management.axes>)[axes];, #nlink(<graphics:1_plots.1_line_plots.plot>)[plot];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
