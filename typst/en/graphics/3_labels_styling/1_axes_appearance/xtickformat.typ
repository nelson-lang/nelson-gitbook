#import "../../nelson_help.typ": *

= xtickformat <graphics:3_labels_styling.1_axes_appearance.xtickformat>

Set or get the x-axis tick label format.

== Syntax

- #raw("xtickformat(fmt)");
- #raw("fmt = xtickformat()");
- #raw("xtickformat(ax, ...)");

== Input argument

/ fmt: Format specifier: a sprintf-style conversion or a preset keyword.
/ ax: Target axes. Default is the current axes.

== Output argument

/ fmt: Current tick label format.

== Description

#strong[xtickformat]; sets or gets the format used for the x-axis tick labels of the current axes.

 The format applies to automatically generated tick labels.

 The format is a sprintf-style conversion (for example #strong[%.2f]; or #strong[%g];) applied to each numeric tick value. The preset keywords #strong[usd];, #strong[eur];, #strong[gbp];, #strong[jpy];, #strong[degrees]; and #strong[percentage]; are also accepted. Custom tick labels set with xticklabels take precedence over the format.


== Example

Format x-axis tick labels.

``````matlab

plot(1:10, (1:10) / 4);
xtickformat('%.2f');

``````


== See also

#nlink(<graphics:3_labels_styling.1_axes_appearance.xticks>)[xticks];, #nlink(<graphics:3_labels_styling.1_axes_appearance.xticklabels>)[xticklabels];, #nlink(<graphics:3_labels_styling.1_axes_appearance.ytickformat>)[ytickformat];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
