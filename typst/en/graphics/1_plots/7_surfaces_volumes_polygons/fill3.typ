#import "../../nelson_help.typ": *

= fill3 <graphics:1_plots.7_surfaces_volumes_polygons.fill3>

Create filled 3-D patches.

== Syntax

- #raw("fill3(X, Y, Z, C)");
- #raw("fill3(X1, Y1, Z1, C1, ..., Xn, Yn, Zn, Cn)");
- #raw("fill3(..., propertyName, propertyValue)");
- #raw("fill3(ax, ...)");
- #raw("go = fill3(...)");

== Input argument

/ X: x-coordinates: vector or matrix.
/ Y: y-coordinates: vector or matrix.
/ Z: z-coordinates: vector or matrix.
/ C: Color data or color specification.

== Output argument

/ go: graphics object handles of patch type.

== Description

#strong[fill3]; creates filled polygons in 3-D coordinates. Each input group creates one or more patch objects and supports patch name-value properties.


== Example

``````matlab
x = [0 1 0];
y = [0 0 1];
z = [0 1 0];
fill3(x, y, z, 'red');
view(3)
``````


#align(center)[#image("fill3_1.svg")]

== See also

#nlink(<graphics:1_plots.7_surfaces_volumes_polygons.fill>)[fill];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.patch>)[patch];.

// Author: Allan CORNET
