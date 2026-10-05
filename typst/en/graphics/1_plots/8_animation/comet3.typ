#import "../../nelson_help.typ": *

= comet3 <graphics:1_plots.8_animation.comet3>

Create 3-D comet plot.

== Syntax

- #raw("comet3(z)");
- #raw("comet3(x, y, z)");
- #raw("comet3(x, y, z, p)");
- #raw("comet3(ax, x, y, z, p)");

== Input argument

/ z: z-values: numeric vector.
/ x, y, z: numeric vectors with the same number of elements.
/ p: body length scale factor in the interval \[0, 1).
/ ax: target axes.

== Description

#strong[comet3]; animates a marker head, a trailing body, and a complete trace for a three-dimensional comet plot.

 #strong[comet3(z)]; plots #strong[z]; against index values on both x and y axes.

 The final axes state contains two animated line objects and one line object for the head marker.


== Example

``````matlab
t = -pi:pi/120:pi;
comet3(sin(5 * t), cos(3 * t), t, 0.2)
``````


== See also

#nlink(<graphics:1_plots.8_animation.comet>)[comet];, #nlink(<graphics:1_plots.8_animation.animatedline>)[animatedline];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
