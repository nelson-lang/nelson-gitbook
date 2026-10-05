#import "../../nelson_help.typ": *

= pcolor <graphics:1_plots.7_surfaces_volumes_polygons.pcolor>

Pseudocolor plot.

== Syntax

- #raw("pcolor(C)");
- #raw("pcolor(X, Y, C)");
- #raw("pcolor(parent, ...)");
- #raw("go = pcolor(...)");

== Input argument

/ X: x-coordinates: vector or matrix.
/ Y: y-coordinates: vector or matrix.
/ C: Color array: m-by-n-by-3 array of RGB triplets.
/ parent: a scalar graphics object value: parent container, specified as a axes.

== Output argument

/ go: a graphics object: surface type.

== Description

#strong[pcolor(C)]; creates a pseudocolor plot of the data in the matrix#strong[C];, where each cell or 'face' in the plot is colored according to the corresponding value in the matrix.

 The color of each face is determined by a colormap, which maps data values to colors.


== Examples

``````matlab
X = linspace(0, 2*pi, 100);
Y = linspace(0, 2*pi, 100);
Z = sin(X' * Y);
f = figure()
pcolor(X, Y, Z)
``````


#align(center)[#image("pcolor_1.svg")]
``````matlab
f = figure();
rng('default');
ax1 = subplot(1, 2, 1);
C1 = rand(20, 10);
pcolor(ax1, C1)
ax2 = subplot(1, 2, 2);
C2 = rand(50, 10);
pcolor(ax2, C2)
``````


#align(center)[#image("pcolor_2.svg")]

== See also

#nlink(<graphics:1_plots.7_surfaces_volumes_polygons.surf>)[surf];, #nlink(<elementary_functions:1_array_creation_shape.meshgrid>)[meshgrid];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
