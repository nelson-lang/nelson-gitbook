#import "../../nelson_help.typ": *

= bubblelim <graphics:1_plots.4_data_distribution_plots.bubblelim>

Set or query bubble size data limits.

== Syntax

- #raw("bubblelim(limits)");
- #raw("bubblelim('auto')");
- #raw("bubblelim('manual')");
- #raw("bubblelim(ax, ...)");
- #raw("limits = bubblelim()");
- #raw("mode = bubblelim('mode')");

== Input argument

/ limits: Two-element numeric vector \[min max\].
/ ax: Target axes. If omitted, the current axes is used.

== Output argument

/ limits: Current bubble size data limits.

== Description

#strong[bubblelim]; controls the data limits used to map #strong[SizeData]; values to rendered bubble diameters.


== Example

Set bubble limits.

``````matlab
figure();
bubblechart(1:3, [2 4 6], [10 100 1000]);
bubblelim([10 1000]);
``````


#align(center)[#image("bubblelim_1.svg")]

== See also

#nlink(<graphics:1_plots.4_data_distribution_plots.bubblechart>)[bubblechart];, #nlink(<graphics:1_plots.4_data_distribution_plots.bubblesize>)[bubblesize];.

// Author: Allan CORNET
