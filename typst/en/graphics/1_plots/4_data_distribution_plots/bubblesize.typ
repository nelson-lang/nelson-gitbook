#import "../../nelson_help.typ": *

= bubblesize <graphics:1_plots.4_data_distribution_plots.bubblesize>

Set or query rendered bubble diameter range.

== Syntax

- #raw("bubblesize(range)");
- #raw("bubblesize(ax, range)");
- #raw("range = bubblesize()");

== Input argument

/ range: Two-element positive numeric vector \[min max\], in points.
/ ax: Target axes. If omitted, the current axes is used.

== Output argument

/ range: Current rendered bubble diameter range.

== Description

#strong[bubblesize]; controls the minimum and maximum rendered bubble diameters for bubble charts in an axes.


== Example

Reduce bubble sizes.

``````matlab
figure();
bubblechart(1:3, [2 4 6], [10 100 1000]);
bubblesize([5 30]);
``````


#align(center)[#image("bubblesize_1.svg")]

== See also

#nlink(<graphics:1_plots.4_data_distribution_plots.bubblechart>)[bubblechart];, #nlink(<graphics:1_plots.4_data_distribution_plots.bubblelim>)[bubblelim];.

// Author: Allan CORNET
