#import "../nelson_help.typ": *

= meshgrid <elementary_functions:1_array_creation_shape.meshgrid>

Cartesian rectangular grid in 2-D or 3-D.

== Syntax

- #raw("[X, Y] = meshgrid(x, y)");
- #raw("[X, Y] = meshgrid(x)");
- #raw("[X, Y, Z] = meshgrid(x, y, z)");
- #raw("[X, Y, Z] = meshgrid(x)");

== Input argument

/ x: x-coordinates of points: vector
/ y: y-coordinates of points: vector
/ z: z-coordinates of points: vector

== Output argument

/ X: x-coordinates over grid: 2-D or 3-D array.
/ Y: y-coordinates over grid: 2-D or 3-D array.
/ Z: z-coordinates over grid: 3-D array.

== Description

#strong[meshgrid]; creates Cartesian rectangular grid in 2-D or 3-D.


== Example

``````matlab
x = -1:0.4:1;
y = -1:0.4:1;
[X, Y] = meshgrid(x, y)

x = 0:2:6;
y = 0:1:6;
z = 0:3:6;
[X,Y,Z] = meshgrid(x, y, z)
``````


== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
