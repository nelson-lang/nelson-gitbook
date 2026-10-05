#import "../../nelson_help.typ": *

= comet <graphics:1_plots.8_animation.comet>

Create 2-D comet plot.

== Syntax

- #raw("comet(y)");
- #raw("comet(x, y)");
- #raw("comet(x, y, p)");
- #raw("comet(ax, x, y, p)");

== Input argument

/ x, y: numeric vectors with the same number of elements.
/ p: body length scale factor in the interval \[0, 1).
/ ax: target axes.

== Description

#strong[comet]; animates a marker head, a trailing body, and a complete trace for a two-dimensional comet plot.

 The final axes state contains two animated line objects and one marker-only line object.


== Example

``````matlab
t = 0:pi/80:2*pi;
comet(cos(t), sin(t), 0.2)
``````


== See also

#nlink(<graphics:1_plots.8_animation.comet3>)[comet3];, #nlink(<graphics:1_plots.8_animation.animatedline>)[animatedline];, #nlink(<graphics:1_plots.1_line_plots.plot>)[plot];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
