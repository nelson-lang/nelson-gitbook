#import "../../nelson_help.typ": *

= ylim <graphics:3_labels_styling.1_axes_appearance.ylim>

set or get y-axis limits.

== Syntax

- #raw("lims = ylim()");
- #raw("ylim([ymin, ymax])");
- #raw("ylim('auto')");
- #raw("ylim('manual')");
- #raw("m = ylim('mode')");
- #raw("method = ylim('method')");
- #raw("ylim('tight')");
- #raw("ylim('padded')");
- #raw("ylim('tickaligned')");
- #raw("ylim(ax, ...)");

== Input argument

/ \[ymin, ymax\]: y-coordinates: vector or matrix.
/ 'auto': enable automatic limit selection.
/ 'manual': freeze the y-axis limits at their current value.
/ 'mode': returns the current y-axis limits mode.
/ 'method': returns the current automatic y-axis limit selection method.
/ 'tight', 'padded' or 'tickaligned': sets the automatic y-axis limit selection method.
/ ax: a scalar graphics object value: parent container, specified as a axes.

== Output argument

/ lims: two-element vector: \[ymin, ymax\]
/ m: 'auto' or 'manual'.
/ method: 'tight', 'padded' or 'tickaligned'.

== Description

#strong[ylim]; get or set the limits of the y-axis for the current plot.


== Example

``````matlab
x = linspace(-1, 1);
y = sin(2*pi*x);
plot(x, y);
lim = ylim()
m = ylim('mode')

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
