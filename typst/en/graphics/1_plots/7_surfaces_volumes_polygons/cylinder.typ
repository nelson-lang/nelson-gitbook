#import "../../nelson_help.typ": *

= cylinder <graphics:1_plots.7_surfaces_volumes_polygons.cylinder>

Create cylinder.

== Syntax

- #raw("[X, Y, Z] = cylinder()");
- #raw("[X, Y, Z] = cylinder(r)");
- #raw("[X, Y, Z] = cylinder(r, n)");
- #raw("cylinder()");
- #raw("cylinder(r)");
- #raw("cylinder(r, n)");
- #raw("cylinder(ax, ...)");

== Input argument

/ r: Profile curve: vector.
/ n: Number of points: positive whole number.
/ ax: Target axes: 'axes' object.

== Output argument

/ X, Y, Z: x-, y-, and z- coordinates of a cylinder without drawing it.

== Description

#strong[cylinder]; creates cylinder and plots it.


== Examples

``````matlab
f1 = figure();
colormap(spring)
cylinder()
``````


#align(center)[#image("cylinder_1.svg")]
``````matlab
f2 = figure();
colormap(summer)
r = 4;
cylinder(r);
``````


#align(center)[#image("cylinder_2.svg")]

== See also

#nlink(<graphics:1_plots.7_surfaces_volumes_polygons.sphere>)[sphere];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.surf>)[surf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
