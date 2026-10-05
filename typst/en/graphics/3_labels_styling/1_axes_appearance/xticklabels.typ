#import "../../nelson_help.typ": *

= xticklabels <graphics:3_labels_styling.1_axes_appearance.xticklabels>

Set or get x-axis tick labels.

== Syntax

- #raw("labels = xticklabels()");
- #raw("xticklabels(labels)");
- #raw("xticklabels('auto')");
- #raw("xticklabels('manual')");
- #raw("m = xticklabels('mode')");
- #raw("xticklabels(ax, ...)");

== Input argument

/ labels: Cell array of character vectors or string array of x-axis tick labels.
/ 'auto': Enable automatic x-tick labels.
/ 'manual': Freeze the current x-tick labels.
/ 'mode': Return the x-tick label mode.
/ ax: Target axes. Default is the current axes.

== Output argument

/ labels: Cell array of character vectors of x-axis tick labels.
/ m: 'auto' or 'manual'.

== Description

#strong[xticklabels]; gets or sets the tick labels along the x-axis of the current axes.

 Specifying labels switches the x-tick label mode to #strong[manual];.


== Example

Set x-axis tick labels.

``````matlab

bar([10 20 30 41]);
xticks(1:4);
xticklabels({'A','B','C','D'});
labels = xticklabels()

``````


== See also

#nlink(<graphics:3_labels_styling.1_axes_appearance.xticks>)[xticks];, #nlink(<graphics:3_labels_styling.1_axes_appearance.xtickangle>)[xtickangle];, #nlink(<graphics:3_labels_styling.1_axes_appearance.yticklabels>)[yticklabels];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
