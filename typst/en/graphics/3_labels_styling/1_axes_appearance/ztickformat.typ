#import "../../nelson_help.typ": *

= ztickformat <graphics:3_labels_styling.1_axes_appearance.ztickformat>

Set or get the z-axis tick label format.

== Syntax

- #raw("ztickformat(fmt)");
- #raw("fmt = ztickformat()");
- #raw("ztickformat(ax, ...)");

== Input argument

/ fmt: Format specifier: a sprintf-style conversion or a preset keyword.
/ ax: Target axes. Default is the current axes.

== Output argument

/ fmt: Current tick label format.

== Description

#strong[ztickformat]; sets or gets the format used for the z-axis tick labels of the current axes.

 The format applies to automatically generated tick labels.

 The format is a sprintf-style conversion (for example #strong[%.2f]; or #strong[%g];) applied to each numeric tick value. The preset keywords #strong[usd];, #strong[eur];, #strong[gbp];, #strong[jpy];, #strong[degrees]; and #strong[percentage]; are also accepted. Custom tick labels set with zticklabels take precedence over the format.


== Example

Format z-axis tick labels.

``````matlab

t = linspace(0, 10, 50);
plot3(sin(t), cos(t), t / 4);
ztickformat('%.1f');

``````


== See also

#nlink(<graphics:3_labels_styling.1_axes_appearance.zticks>)[zticks];, #nlink(<graphics:3_labels_styling.1_axes_appearance.zticklabels>)[zticklabels];, #nlink(<graphics:3_labels_styling.1_axes_appearance.xtickformat>)[xtickformat];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
