#import "../../nelson_help.typ": *

= sphere <graphics:1_plots.7_surfaces_volumes_polygons.sphere>

Create sphere.

== Syntax

- #raw("[X, Y, Z] = sphere()");
- #raw("[X, Y, Z] = sphere(n)");
- #raw("sphere()");
- #raw("sphere(n)");
- #raw("sphere(ax, n)");

== Input argument

/ n: Number of points: positive whole number.
/ ax: Target axes: 'axes' object.

== Output argument

/ X, Y, Z: x-, y-, and z- coordinates of a sphere without drawing it.

== Description

#strong[sphere]; creates sphere and plots it.


== Example

``````matlab
f = figure();
colormap(gray);
subplot(1, 3, 1);
ax1 = gca();
sphere(ax1);
axis equal
title('20-by-20 faces (Default)');
subplot(1, 3, 2);
ax2 = gca();
sphere(ax2, 50);
axis equal
title('50-by-50 faces');
subplot(1, 3, 3);
ax3 = gca();
sphere(ax3,100);
axis equal
title('100-by-100 faces');
``````


#align(center)[#image("sphere.svg")]

== See also

#nlink(<graphics:1_plots.7_surfaces_volumes_polygons.cylinder>)[cylinder];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.surf>)[surf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
