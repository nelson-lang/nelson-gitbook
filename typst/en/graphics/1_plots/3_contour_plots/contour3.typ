#import "../../nelson_help.typ": *

= contour3 <graphics:1_plots.3_contour_plots.contour3>

Contour 3D plot of matrix

== Syntax

- #raw("contour3(Z)");
- #raw("contour3(X, Y, Z)");
- #raw("contour3(..., levels)");
- #raw("contour3(..., LineSpec)");
- #raw("contour3(ax, ...)");
- #raw("M = contour3(...)");
- #raw("[M, h] = contour3(...)");

== Input argument

/ X: x-coordinates: vector or matrix.
/ Y: y-coordinates: vector or matrix.
/ Z: z-coordinates: vector or matrix.
/ levels: Contour levels: scalar or vector.
/ LineSpec: Line style and color
/ ax: a scalar graphics object value: parent container, specified as a axes.

== Output argument

/ M: Contour matrix.
/ h: a graphics object: contour type.

== Description

#strong[contour3(Z)]; generates a 3-D contour plot illustrating the isolines of the matrix Z, where Z represents heights on the x-y plane.

 The x and y coordinates in the plane correspond to the column and row indices of Z, respectively.

 To specify the x and y coordinates for Z values, use #strong[contour3(X,Y,Z)];.


== Example

``````matlab
f = figure();
[X,Y,Z] = sphere(50);
[M, C ]= contour3(X,Y,Z);
C.LineWidth = 3;
``````


#align(center)[#image("contour3_1.svg")]

== See also

#nlink(<graphics:1_plots.3_contour_plots.contour>)[contour];, #nlink(<graphics:1_plots.3_contour_plots.contourc>)[contourc];, #nlink(<graphics:1_plots.3_contour_plots.contourf>)[contourf];, #nlink(<graphics:1_plots.3_contour_plots.clabel>)[clabel];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.surf>)[surf];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.mesh>)[mesh];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.3.0], [initial version],
)

// Author: Allan CORNET
