#import "../../nelson_help.typ": *

= xlim <graphics:3_labels_styling.1_axes_appearance.xlim>

set or get x-axis limits.

== Syntax

- #raw("lims = xlim()");
- #raw("xlim([xmin, xmax])");
- #raw("xlim('auto')");
- #raw("xlim('manual')");
- #raw("m = xlim('mode')");
- #raw("method = xlim('method')");
- #raw("xlim('tight')");
- #raw("xlim('padded')");
- #raw("xlim('tickaligned')");
- #raw("xlim(ax, ...)");

== Input argument

/ \[xmin, xmax\]: x-coordinates: vector or matrix.
/ 'auto': enable automatic limit selection.
/ 'manual': freeze the x-axis limits at their current value.
/ 'mode': returns the current x-axis limits mode.
/ 'method': returns the current automatic x-axis limit selection method.
/ 'tight', 'padded' or 'tickaligned': sets the automatic x-axis limit selection method.
/ ax: a scalar graphics object value: parent container, specified as a axes.

== Output argument

/ lims: two-element vector: \[xmin, xmax\]
/ m: 'auto' or 'manual'.
/ method: 'tight', 'padded' or 'tickaligned'.

== Description

#strong[xlim]; get or set the limits of the x-axis for the current plot.


== Example

``````matlab
x = linspace(-1, 1);
y = sin(2*pi*x);
plot(x, y);
lim = xlim()
m = xlim('mode')

``````


== See also

#nlink(<graphics:2_graphics_objects.1_object_management.axes>)[axes];, #nlink(<graphics:3_labels_styling.1_axes_appearance.axis>)[axis];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
