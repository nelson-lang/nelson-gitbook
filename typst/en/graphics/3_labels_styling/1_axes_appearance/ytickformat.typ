#import "../../nelson_help.typ": *

= ytickformat <graphics:3_labels_styling.1_axes_appearance.ytickformat>

Set or get the y-axis tick label format.

== Syntax

- #raw("ytickformat(fmt)");
- #raw("fmt = ytickformat()");
- #raw("ytickformat(ax, ...)");

== Input argument

/ fmt: Format specifier: a sprintf-style conversion or a preset keyword.
/ ax: Target axes. Default is the current axes.

== Output argument

/ fmt: Current tick label format.

== Description

#strong[ytickformat]; sets or gets the format used for the y-axis tick labels of the current axes.

 The format applies to automatically generated tick labels.

 The format is a sprintf-style conversion (for example #strong[%.2f]; or #strong[%g];) applied to each numeric tick value. The preset keywords #strong[usd];, #strong[eur];, #strong[gbp];, #strong[jpy];, #strong[degrees]; and #strong[percentage]; are also accepted. Custom tick labels set with yticklabels take precedence over the format.


== Example

Format y-axis tick labels.

``````matlab

plot(1:10, (1:10) * 100);
ytickformat('usd');

``````


== See also

#nlink(<graphics:3_labels_styling.1_axes_appearance.yticks>)[yticks];, #nlink(<graphics:3_labels_styling.1_axes_appearance.yticklabels>)[yticklabels];, #nlink(<graphics:3_labels_styling.1_axes_appearance.xtickformat>)[xtickformat];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
