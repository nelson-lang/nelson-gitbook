#import "../../nelson_help.typ": *

= zlim <graphics:3_labels_styling.1_axes_appearance.zlim>

set or get z-axis limits.

== Syntax

- #raw("lims = zlim()");
- #raw("zlim([zmin, zmax])");
- #raw("zlim('auto')");
- #raw("zlim('manual')");
- #raw("m = zlim('mode')");
- #raw("method = zlim('method')");
- #raw("zlim('tight')");
- #raw("zlim('padded')");
- #raw("zlim('tickaligned')");
- #raw("zlim(ax, ...)");

== Input argument

/ \[zmin, zmax\]: z-coordinates: vector or matrix.
/ 'auto': enable automatic limit selection.
/ 'manual': freeze the z-axis limits at their current value.
/ 'mode': returns the current z-axis limits mode.
/ 'method': returns the current automatic z-axis limit selection method.
/ 'tight', 'padded' or 'tickaligned': sets the automatic z-axis limit selection method.
/ ax: a scalar graphics object value: parent container, specified as a axes.

== Output argument

/ lims: two-element vector: \[zmin, zmax\]
/ m: 'auto' or 'manual'.
/ method: 'tight', 'padded' or 'tickaligned'.

== Description

#strong[zlim]; get or set the limits of the z-axis for the current plot.


== Example

``````matlab
x = linspace(-1, 1);
y = sin(2*pi*x);
plot(x, y);
lim = zlim()
m = zlim('mode')

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
