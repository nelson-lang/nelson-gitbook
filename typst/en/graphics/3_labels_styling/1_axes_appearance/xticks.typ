#import "../../nelson_help.typ": *

= xticks <graphics:3_labels_styling.1_axes_appearance.xticks>

Set or get x-axis tick values.

== Syntax

- #raw("ticks = xticks()");
- #raw("xticks(values)");
- #raw("xticks('auto')");
- #raw("xticks('manual')");
- #raw("m = xticks('mode')");
- #raw("xticks(ax, ...)");

== Input argument

/ values: Numeric vector of x-axis tick values.
/ 'auto': Enable automatic x-tick selection.
/ 'manual': Freeze the current x-tick values.
/ 'mode': Return the x-tick mode.
/ ax: Target axes. Default is the current axes.

== Output argument

/ ticks: Numeric row vector of x-axis tick values.
/ m: 'auto' or 'manual'.

== Description

#strong[xticks]; gets or sets the tick values along the x-axis of the current axes.

 Specifying tick values switches the x-tick mode to #strong[manual];.


== Example

Set x-axis ticks.

``````matlab

x = linspace(0, 10, 50);
plot(x, sin(x));
xticks(0:2:10);
ticks = xticks()

``````


== See also

#nlink(<graphics:3_labels_styling.1_axes_appearance.xticklabels>)[xticklabels];, #nlink(<graphics:3_labels_styling.1_axes_appearance.xtickangle>)[xtickangle];, #nlink(<graphics:3_labels_styling.1_axes_appearance.xlim>)[xlim];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
