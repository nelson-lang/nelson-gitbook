#import "../../nelson_help.typ": *

= getpoints <graphics:1_plots.8_animation.getpoints>

Return points from animated line.

== Syntax

- #raw("[x, y] = getpoints(an)");
- #raw("[x, y, z] = getpoints(an)");

== Input argument

/ an: animatedline graphics object.

== Output argument

/ x, y, z: stored coordinates.

== Description

#strong[getpoints]; returns only the coordinates stored on the animated line.

 Two-dimensional lines store and return zero z-coordinates when a third output is requested.


== Example

``````matlab
an = animatedline(1:4, [1 4 2 3]);
[x, y, z] = getpoints(an)
``````


== See also

#nlink(<graphics:1_plots.8_animation.animatedline>)[animatedline];, #nlink(<graphics:1_plots.8_animation.addpoints>)[addpoints];, #nlink(<graphics:1_plots.8_animation.clearpoints>)[clearpoints];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
