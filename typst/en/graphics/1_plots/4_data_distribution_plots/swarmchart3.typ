#import "../../nelson_help.typ": *

= swarmchart3 <graphics:1_plots.4_data_distribution_plots.swarmchart3>

Display a 3-D swarm chart.

== Syntax

- #raw("swarmchart3(x, y, z)");
- #raw("swarmchart3(x, y, z, sz, c)");
- #raw("swarmchart3(..., propertyName, propertyValue)");
- #raw("h = swarmchart3(...)");

== Description

#strong[swarmchart3]; displays 3-D points using a scatter object. The returned object keeps the original #strong[XData];, #strong[YData];, and #strong[ZData]; and uses scatter jitter properties for the displayed x and y positions.

 Supported chart properties are #strong[XJitter];, #strong[XJitterWidth];, #strong[YJitter];, #strong[YJitterWidth];, and #strong[ColorVariable];.


== Example

Display 3-D grouped observations.

``````matlab
swarmchart3([1 1 2 2], [1 2 1 2], [4 5 6 7], 40, [0 0.4 0.8], 'filled');
``````


#align(center)[#image("swarmchart3_1.svg")]

== See also

#nlink(<graphics:1_plots.4_data_distribution_plots.scatter3>)[scatter3];, #nlink(<graphics:1_plots.4_data_distribution_plots.swarmchart>)[swarmchart];.
