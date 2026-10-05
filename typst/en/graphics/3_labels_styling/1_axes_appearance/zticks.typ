#import "../../nelson_help.typ": *

= zticks <graphics:3_labels_styling.1_axes_appearance.zticks>

Set or get z-axis tick values.

== Syntax

- #raw("ticks = zticks()");
- #raw("zticks(values)");
- #raw("zticks('auto')");
- #raw("zticks('manual')");
- #raw("m = zticks('mode')");
- #raw("zticks(ax, ...)");

== Input argument

/ values: Numeric vector of z-axis tick values.
/ 'auto': Enable automatic z-tick selection.
/ 'manual': Freeze the current z-tick values.
/ 'mode': Return the z-tick mode.
/ ax: Target axes. Default is the current axes.

== Output argument

/ ticks: Numeric row vector of z-axis tick values.
/ m: 'auto' or 'manual'.

== Description

#strong[zticks]; gets or sets the tick values along the z-axis of the current axes.

 Specifying tick values switches the z-tick mode to #strong[manual];.


== Example

Set z-axis ticks.

``````matlab

t = linspace(0, 10, 50);
plot3(sin(t), cos(t), t);
zticks(0:2:10);
ticks = zticks()

``````


== See also

#nlink(<graphics:3_labels_styling.1_axes_appearance.zticklabels>)[zticklabels];, #nlink(<graphics:3_labels_styling.1_axes_appearance.ztickangle>)[ztickangle];, #nlink(<graphics:3_labels_styling.1_axes_appearance.zlim>)[zlim];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
