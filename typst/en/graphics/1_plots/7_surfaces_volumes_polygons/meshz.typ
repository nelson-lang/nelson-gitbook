#import "../../nelson_help.typ": *

= meshz <graphics:1_plots.7_surfaces_volumes_polygons.meshz>

Mesh surface plot with curtain.

== Syntax

- #raw("meshz(X, Y, Z)");
- #raw("meshz(Z)");
- #raw("meshz(Z, C)");
- #raw("meshz(X, Y, Z, C)");
- #raw("meshz(parent, ...)");
- #raw("meshz(..., propertyName, propertyValue)");
- #raw("go = meshz(...)");

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

#strong[meshz]; creates a 3-D surface plot with a wireframe plot on top.

 The function takes the same input arguments as the #strong[mesh]; function.


== Example

``````matlab
f = figure();
[X,Y] = meshgrid(-5:.5:5);
Z = Y.*sin(X) - X.*cos(Y);
s = meshz(X,Y,Z)
``````


#align(center)[#image("meshz_1.svg")]

== See also

#nlink(<graphics:1_plots.7_surfaces_volumes_polygons.mesh>)[mesh];, #nlink(<elementary_functions:1_array_creation_shape.meshgrid>)[meshgrid];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
