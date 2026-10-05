#import "../../nelson_help.typ": *

= yticklabels <graphics:3_labels_styling.1_axes_appearance.yticklabels>

Set or query y-axis tick labels.

== Syntax

- #raw("yticklabels(labels)");
- #raw("yticklabels('auto')");
- #raw("yticklabels('manual')");
- #raw("mode = yticklabels('mode')");
- #raw("labels = yticklabels");
- #raw("yticklabels(ax, ...)");
- #raw("labels = yticklabels(ax)");

== Input argument

/ labels: string array, cell array of character vectors, or character vector used as y-axis tick labels.
/ ax: target axes object. If omitted, the current axes is used.

== Output argument

/ labels: current y-axis tick labels.
/ mode: current y-axis tick label mode: 'auto' or 'manual'.

== Description

#strong[yticklabels]; sets or queries the #strong[YTickLabel]; property of an axes.

 Assigning labels switches #strong[YTickLabelMode]; to #strong[manual];. Use #strong[yticklabels('auto')]; to return to automatic labels.


== Examples

Set y-axis tick labels for a horizontal bar graph.

``````matlab
f = figure();
barh([10 20 30 41]);
yticklabels({'April', 'May', 'June', 'July'});

``````


#align(center)[#image("yticklabels_1.svg")]
Set labels on specified axes and query the mode.

``````matlab
f = figure();
ax = axes('Parent', f);
plot(ax, 1:4, [2 4 3 5]);
ax.YTick = 2:5;
yticklabels(ax, ["low"; "mid"; "high"; "top"]);
mode = yticklabels(ax, 'mode')

``````


== See also

#nlink(<graphics:2_graphics_objects.1_object_management.axes>)[axes];, #nlink(<graphics:1_plots.6_discrete_data_plots.barh>)[barh];.

// Author: Allan CORNET
