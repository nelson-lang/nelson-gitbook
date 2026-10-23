#import "../../nelson_help.typ": *

= viscircles <graphics:1_plots.1_line_plots.viscircles>

Draw circles.

== Syntax

- #raw("viscircles(centers, radii)");
- #raw("viscircles(ax, centers, radii)");
- #raw("viscircles(..., 'Color', c)");
- #raw("viscircles(..., 'LineWidth', w)");
- #raw("h = viscircles(...)");

== Input argument

/ centers: an N-by-2 matrix of circle centers \[x y\].
/ radii: a scalar or an N-element vector of circle radii.
/ ax: the target axes.

== Output argument

/ h: the group object containing the drawn circles.

== Description

#strong[viscircles]; draws circles with the given #strong[centers]; and #strong[radii]; on the axes. The colour (default red) and line width are set with the #strong['Color']; and #strong['LineWidth']; name-value arguments.


== Example

``````matlab
f = figure();
axis equal
viscircles([0 0; 2 1], [1; 0.5], 'Color', 'b');
``````


== See also

#nlink(<graphics:1_plots.1_line_plots.line>)[line];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Initial version.],
)

// Author: Allan CORNET
