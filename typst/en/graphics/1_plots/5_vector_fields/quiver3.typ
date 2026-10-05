#import "../../nelson_help.typ": *

= quiver3 <graphics:1_plots.5_vector_fields.quiver3>

3-D vector field plot.

== Syntax

- #raw("quiver3(Z, U, V, W)");
- #raw("quiver3(X, Y, Z, U, V, W)");
- #raw("quiver3(..., scale)");
- #raw("quiver3(..., LineSpec)");
- #raw("quiver3(..., propertyName, propertyValue)");
- #raw("quiver3(parent, ...)");
- #raw("h = quiver3(...)");

== Input argument

/ X, Y, Z: Arrow base coordinates, specified as scalars, vectors, matrices, or arrays that match the vector component size.
/ U, V, W: Vector components, specified as numeric arrays of the same size.
/ scale: Automatic scale factor. Use 0 to disable automatic scaling.
/ LineSpec: Line style, marker, and color specification.
/ parent: Axes or hggroup parent.
/ propertyName: Scalar string or character vector property name.
/ propertyValue: Property value.

== Output argument

/ h: Quiver graphics object.

== Description

#strong[quiver3(Z,U,V,W)]; plots 3-D arrows on a regular x-y grid using #strong[Z]; as the z-coordinate data.

 #strong[quiver3(X,Y,Z,U,V,W)]; plots arrows at the coordinates specified by #strong[X];, #strong[Y];, and #strong[Z];.

 The returned object has type #strong[quiver];. Its public properties include #strong[XData];, #strong[YData];, #strong[ZData];, #strong[UData];, #strong[VData];, #strong[WData];, #strong[AutoScale];, #strong[AutoScaleFactor];, #strong[ScaleFactor];, #strong[Color];, #strong[LineStyle];, #strong[LineWidth];, #strong[Marker];, #strong[MarkerSize];, #strong[MaxHeadSize];, #strong[ShowArrowHead];, #strong[Alignment];, #strong[DisplayName];, and common graphics interaction properties.


== Examples

Plot a 3-D vector field.

``````matlab
[x, y, z] = meshgrid(-1:1, -1:1, -1:1);
u = y;
v = -x;
w = z;
quiver3(x, y, z, u, v, w);
axis equal
``````


#align(center)[#image("quiver3_1.svg")]
Disable automatic scaling and style the arrows.

``````matlab
x = [0 1 2];
y = [0 1 0];
z = [0 0 1];
u = [1 0 -1];
v = [0 1 0];
w = [0.5 0.5 1];
h = quiver3(x, y, z, u, v, w, 0, 'r--o');
h.LineWidth = 1.5;
``````

Plot surface normals as 3-D arrows.

``````matlab
[X,Y] = meshgrid(-2:0.25:2,-1:0.2:1);
Z = X.*exp(-X.^2 - Y.^2);
[U,V,W] = surfnorm(X,Y,Z);
quiver3(X,Y,Z,U,V,W)
hold on
surf(X,Y,Z)
axis equal
``````


== See also

#nlink(<graphics:1_plots.5_vector_fields.quiver>)[quiver];, #nlink(<graphics:1_plots.1_line_plots.plot3>)[plot3];, #nlink(<elementary_functions:1_array_creation_shape.meshgrid>)[meshgrid];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [native quiver graphics object],
)

// Author: Allan CORNET
