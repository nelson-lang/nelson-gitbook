#import "../../nelson_help.typ": *

= quiver <graphics:1_plots.5_vector_fields.quiver>

2-D vector field plot.

== Syntax

- #raw("quiver(U, V)");
- #raw("quiver(X, Y, U, V)");
- #raw("quiver(..., scale)");
- #raw("quiver(..., LineSpec)");
- #raw("quiver(..., propertyName, propertyValue)");
- #raw("quiver(parent, ...)");
- #raw("h = quiver(...)");

== Input argument

/ X, Y: Arrow base coordinates, specified as scalars, vectors, or matrices.
/ U, V: Vector components, specified as numeric arrays of the same size.
/ scale: Automatic scale factor. Use 0 to disable automatic scaling.
/ LineSpec: Line style, marker, and color specification.
/ parent: Axes or hggroup parent.
/ propertyName: Scalar string or character vector property name.
/ propertyValue: Property value.

== Output argument

/ h: Quiver graphics object.

== Description

#strong[quiver(U,V)]; plots arrows with vector components #strong[U]; and #strong[V]; on a regular grid.

 #strong[quiver(X,Y,U,V)]; plots arrows at the coordinates specified by #strong[X]; and #strong[Y];.

 See #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.quiver.properties>)[quiver properties]; for the complete property list.


== Examples

Plot a vector field on a regular grid.

``````matlab
[X, Y] = meshgrid(-2:0.5:2, -2:0.5:2);
U = -Y;
V = X;
h = quiver(X, Y, U, V);
axis equal
``````


#align(center)[#image("quiver_1.svg")]
Style the arrows and disable automatic scaling.

``````matlab
x = 1:5;
y = [1 2 1 2 1];
u = [1 0 -1 0 1];
v = [0 1 0 -1 0];
h = quiver(x, y, u, v, 0, 'r--o', 'LineWidth', 1.5);
h.ShowArrowHead = 'on';
``````


#align(center)[#image("quiver_2.svg")]

== See also

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.quiver.properties>)[quiver properties];, #nlink(<elementary_functions:1_array_creation_shape.meshgrid>)[meshgrid];, #nlink(<graphics:1_plots.5_vector_fields.quiver3>)[quiver3];, #nlink(<graphics:1_plots.1_line_plots.plot>)[plot];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [2.0.0], [native quiver graphics object],
)

// Author: Allan CORNET
