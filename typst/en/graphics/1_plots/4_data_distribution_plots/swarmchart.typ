#import "../../nelson_help.typ": *

= swarmchart <graphics:1_plots.4_data_distribution_plots.swarmchart>

Display a 2-D swarm chart.

== Syntax

- #raw("swarmchart(x, y)");
- #raw("swarmchart(x, y, sz, c)");
- #raw("swarmchart(..., propertyName, propertyValue)");
- #raw("h = swarmchart(...)");

== Description

#strong[swarmchart]; displays points using a scatter object. The returned object keeps the original #strong[XData]; and #strong[YData]; and uses scatter jitter properties for the displayed x positions.

 Supported chart properties are #strong[XJitter];, #strong[XJitterWidth];, and #strong[ColorVariable];. Other arguments are forwarded to #strong[scatter];.


== Example

Display grouped observations.

``````matlab
swarmchart([1 1 1 2 2 2], [4 5 3 7 6 8], 'filled');
``````


#align(center)[#image("swarmchart_1.svg")]

== See also

#nlink(<graphics:1_plots.4_data_distribution_plots.scatter>)[scatter];, #nlink(<graphics:1_plots.4_data_distribution_plots.swarmchart3>)[swarmchart3];.
