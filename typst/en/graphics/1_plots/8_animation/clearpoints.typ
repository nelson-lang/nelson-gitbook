#import "../../nelson_help.typ": *

= clearpoints <graphics:1_plots.8_animation.clearpoints>

Clear points from animated line.

== Syntax

- #raw("clearpoints(an)");

== Input argument

/ an: animatedline graphics object.

== Description

#strong[clearpoints]; removes all stored coordinates from an animated line and refreshes the parent figure.


== Example

``````matlab
an = animatedline(1:5, [2 4 1 3 5]);
clearpoints(an);
[x, y] = getpoints(an)
``````


== See also

#nlink(<graphics:1_plots.8_animation.animatedline>)[animatedline];, #nlink(<graphics:1_plots.8_animation.addpoints>)[addpoints];, #nlink(<graphics:1_plots.8_animation.getpoints>)[getpoints];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
