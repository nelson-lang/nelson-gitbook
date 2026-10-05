#import "../../nelson_help.typ": *

= yticks <graphics:3_labels_styling.1_axes_appearance.yticks>

Set or get y-axis tick values.

== Syntax

- #raw("ticks = yticks()");
- #raw("yticks(values)");
- #raw("yticks('auto')");
- #raw("yticks('manual')");
- #raw("m = yticks('mode')");
- #raw("yticks(ax, ...)");

== Input argument

/ values: Numeric vector of y-axis tick values.
/ 'auto': Enable automatic y-tick selection.
/ 'manual': Freeze the current y-tick values.
/ 'mode': Return the y-tick mode.
/ ax: Target axes. Default is the current axes.

== Output argument

/ ticks: Numeric row vector of y-axis tick values.
/ m: 'auto' or 'manual'.

== Description

#strong[yticks]; gets or sets the tick values along the y-axis of the current axes.

 Specifying tick values switches the y-tick mode to #strong[manual];.


== Example

Set y-axis ticks.

``````matlab

x = linspace(0, 10, 50);
plot(x, sin(x));
yticks(-1:0.5:1);
ticks = yticks()

``````


== See also

#nlink(<graphics:3_labels_styling.1_axes_appearance.yticklabels>)[yticklabels];, #nlink(<graphics:3_labels_styling.1_axes_appearance.ytickangle>)[ytickangle];, #nlink(<graphics:3_labels_styling.1_axes_appearance.ylim>)[ylim];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
