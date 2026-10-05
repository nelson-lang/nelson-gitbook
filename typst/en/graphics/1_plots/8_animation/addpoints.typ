#import "../../nelson_help.typ": *

= addpoints <graphics:1_plots.8_animation.addpoints>

Add points to animated line.

== Syntax

- #raw("addpoints(an, x, y)");
- #raw("addpoints(an, x, y, z)");

== Input argument

/ an: animatedline graphics object.
/ x, y, z: numeric coordinates with the same number of elements.

== Description

#strong[addpoints]; appends coordinates to an animated line and refreshes the parent figure.

 If #strong[z]; is omitted, zero z-coordinates are stored.

 The #strong[MaximumNumPoints]; property limits stored coordinates and keeps the most recently added points.


== Example

``````matlab
an = animatedline('MaximumNumPoints', 50);
x = linspace(0, 4*pi, 200);
addpoints(an, x, sin(x));
drawnow
``````


== See also

#nlink(<graphics:1_plots.8_animation.animatedline>)[animatedline];, #nlink(<graphics:1_plots.8_animation.clearpoints>)[clearpoints];, #nlink(<graphics:1_plots.8_animation.getpoints>)[getpoints];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
