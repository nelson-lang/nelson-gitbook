#import "../../nelson_help.typ": *

= polarhistogram <graphics:1_plots.2_polar_plots.polarhistogram>

Display angle data as a polar histogram.

== Syntax

- #raw("polarhistogram(theta)");
- #raw("polarhistogram(theta, nbins)");
- #raw("polarhistogram(..., 'BinEdges', edges)");
- #raw("h = polarhistogram(...)");

== Description

#strong[polarhistogram]; bins angle data and displays the bin counts as polar sectors.


== Example

Create a polar histogram.

``````matlab
theta = 2*pi*rand(200, 1);
polarhistogram(theta, 16);
``````


#align(center)[#image("polarhistogram_1.svg")]

== See also

#nlink(<graphics:1_plots.4_data_distribution_plots.histogram>)[histogram];, #nlink(<graphics:1_plots.2_polar_plots.polarplot>)[polarplot];.
