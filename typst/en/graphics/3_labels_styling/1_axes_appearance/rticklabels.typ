#import "../../nelson_help.typ": *

= rticklabels <graphics:3_labels_styling.1_axes_appearance.rticklabels>

Set or get radial tick labels for polar axes.

== Syntax

- #raw("labels = rticklabels()");
- #raw("rticklabels(labels)");
- #raw("rticklabels('auto')");
- #raw("rticklabels('manual')");
- #raw("m = rticklabels('mode')");
- #raw("rticklabels(ax, ...)");

== Input argument

/ labels: Cell array, string array, character vector, or numeric values converted to labels.
/ 'auto': Generate radial tick labels from radial tick values.
/ 'manual': Keep current radial tick labels.
/ 'mode': Return the radial tick label mode.
/ ax: Target polar axes.

== Output argument

/ labels: Cell array of radial tick labels.
/ m: 'auto' or 'manual'.

== Description

#strong[rticklabels]; gets or sets labels displayed next to radial ticks.

 Setting labels switches radial tick label mode to #strong[manual];. The number of displayed labels is matched with the number of visible radial ticks.


== Example

Set radial tick labels.

``````matlab

polarplot(linspace(0, 2*pi, 80), linspace(0, 3, 80));
rticks([0 1.5 3]);
rticklabels({'zero'; 'middle'; 'maximum'});
labels = rticklabels()

``````


== See also

#nlink(<graphics:3_labels_styling.1_axes_appearance.rticks>)[rticks];, #nlink(<graphics:3_labels_styling.1_axes_appearance.thetaticklabels>)[thetaticklabels];, #nlink(<graphics:1_plots.2_polar_plots.polarplot>)[polarplot];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
