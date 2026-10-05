#import "../../nelson_help.typ": *

= contourf <graphics:1_plots.3_contour_plots.contourf>

Filled contour plot of matrix

== Syntax

- #raw("contourf(Z)");
- #raw("contourf(X, Y, Z)");
- #raw("contourf(..., levels)");
- #raw("contourf(..., LineSpec)");
- #raw("contourf(ax, ...)");
- #raw("M = contourf(...)");
- #raw("[M, h] = contourf(...)");

== Input argument

/ X: x-coordinates: vector or matrix.
/ Y: y-coordinates: vector or matrix.
/ Z: z-coordinates: numeric matrix.
/ levels: Contour levels: scalar count, vector of levels, or \[k k\] for one level.
/ LineSpec: Line style and color.
/ ax: Parent axes.

== Output argument

/ M: Contour matrix.
/ h: Contour graphics object.

== Description

#strong[contourf]; draws filled contour bands for the values in #strong[Z];. The returned contour matrix matches the object's #strong[ContourMatrix]; property.

 The contour object supports line, fill, transparency, label, and contour-level properties including #strong[FaceColor];, #strong[FaceAlpha];, #strong[ShowText];, #strong[LabelColor];, #strong[LabelSpacing];, #strong[LabelFormat];, #strong[TextList];, #strong[TextStep];, and #strong[ZLocation];.


== Examples

Draw filled contours.

``````matlab
figure();
[X,Y,Z] = peaks(40);
[M,h] = contourf(X,Y,Z,10);
h.FaceAlpha = 0.75;
``````

Draw filled contours.

``````matlab
x = linspace(-2*pi, 2*pi, 100);
y = linspace(-2*pi, 2*pi, 100);
[X, Y] = meshgrid(x, y);
Z = sin(X) .* cos(Y);
figure;
contourf(X, Y, Z, 20);
colorbar;
title('Demo contourf');
xlabel('X');
ylabel('Y');
colormap parula;
``````


#align(center)[#image("contourf.svg")]

== See also

#nlink(<graphics:1_plots.3_contour_plots.contour>)[contour];, #nlink(<graphics:1_plots.3_contour_plots.contourc>)[contourc];, #nlink(<graphics:1_plots.3_contour_plots.contour3>)[contour3];, #nlink(<graphics:1_plots.3_contour_plots.clabel>)[clabel];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.17.0], [initial version],
)

// Author: Allan CORNET
