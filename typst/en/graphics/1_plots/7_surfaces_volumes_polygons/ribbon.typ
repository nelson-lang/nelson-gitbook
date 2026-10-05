#import "../../nelson_help.typ": *

= ribbon <graphics:1_plots.7_surfaces_volumes_polygons.ribbon>

Ribbon plot.

== Syntax

- #raw("ribbon(Z)");
- #raw("ribbon(Y, Z)");
- #raw("ribbon(Y, Z, width)");
- #raw("ribbon(ax, ...)");
- #raw("s = ribbon(...)");

== Input argument

/ Z: z-coordinates: vector or matrix.
/ Y: y-coordinates: vector or matrix.
/ width: ribbon width.
/ ax: a scalar graphics object value: parent container, specified as a axes.

== Output argument

/ s: a vector of surface objects.

== Description

#strong[ribbon(Z)]; plots a 3D ribbon graph based on the matrix Z with the values of Y defining the y-axis of the graph.

 #strong[ribbon(Y, Z)]; plots a 3D ribbon graph based on the matrix Y with the values of Z defining the z-axis of the graph.

 #strong[s \= ribbon(...)]; returns a vector of surface objects.

 Note that Y and Z must have the same size.


== Example

``````matlab
f = figure();
Y = peaks(25);
ribbon(Y)

``````


#align(center)[#image("ribbon_1.svg")]

== See also

#nlink(<graphics:1_plots.7_surfaces_volumes_polygons.surf>)[surf];, #nlink(<elementary_functions:1_array_creation_shape.meshgrid>)[meshgrid];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
