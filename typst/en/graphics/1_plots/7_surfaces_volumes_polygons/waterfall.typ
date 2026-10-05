#import "../../nelson_help.typ": *

= waterfall <graphics:1_plots.7_surfaces_volumes_polygons.waterfall>

waterfall plot.

== Syntax

- #raw("waterfall(X, Y, Z)");
- #raw("waterfall(Z)");
- #raw("waterfall(Z, C)");
- #raw("waterfall(X, Y, Z, C)");
- #raw("waterfall(parent, ...)");
- #raw("waterfall(..., propertyName, propertyValue)");
- #raw("go = waterfall(...)");

== Input argument

/ X: x-coordinates: vector or matrix.
/ Y: y-coordinates: vector or matrix.
/ Z: z-coordinates: vector or matrix.
/ C: Color array: m-by-n-by-3 array of RGB triplets.
/ parent: a scalar graphics object value: parent container, specified as a axes.
/ propertyName: a scalar string or row vector character.
/ propertyValue: a value.

== Output argument

/ go: a graphics object: surface type.

== Description

#strong[waterfall]; creates a waterfall plot, which is a mesh plot with a partial curtain along the y dimension.

 This results in a 'waterfall' effect.

 The function takes the same input arguments as the #strong[mesh]; function.


== Examples

``````matlab
f = figure();
Z = peaks();
waterfall(Z);
title ("waterfall function");

``````


#align(center)[#image("waterfall_1.svg")]
``````matlab
f = figure();
[X,Y] = meshgrid(-5:.5:5);
Z = Y.*sin(X) - X.*cos(Y);
p = waterfall(X, Y, Z);

``````


#align(center)[#image("waterfall_2.svg")]

== See also

#nlink(<graphics:1_plots.7_surfaces_volumes_polygons.mesh>)[mesh];, #nlink(<elementary_functions:1_array_creation_shape.meshgrid>)[meshgrid];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
