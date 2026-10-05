#import "../../nelson_help.typ": *

= contourc <graphics:1_plots.3_contour_plots.contourc>

Contour matrix computation

== Syntax

- #raw("M = contourc(Z)");
- #raw("M = contourc(X, Y, Z)");
- #raw("M = contourc(..., levels)");

== Input argument

/ X: x-coordinates: vector or matrix.
/ Y: y-coordinates: vector or matrix.
/ Z: z-coordinates: numeric matrix.
/ levels: Contour levels: scalar count, vector of levels, or \[k k\] for one level.

== Output argument

/ M: Two-row contour matrix.

== Description

#strong[contourc]; computes the contour matrix used by contour plotting functions without creating axes, figures, or graphics objects.

 Each contour segment starts with a header column. The first row contains the contour level and the second row contains the number of points in that segment. The following columns contain x and y point coordinates.


== Example

Compute contour lines for a matrix.

``````matlab
Z = peaks(20);
M = contourc(Z, 5)
``````


== See also

#nlink(<graphics:1_plots.3_contour_plots.contour>)[contour];, #nlink(<graphics:1_plots.3_contour_plots.contourf>)[contourf];, #nlink(<graphics:1_plots.3_contour_plots.contour3>)[contour3];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.17.0], [initial version],
)

// Author: Allan CORNET
