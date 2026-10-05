#import "../../nelson_help.typ": *

= view <graphics:3_labels_styling.3_interactions_camera_lighting.view>

Camera line of sigh.

== Syntax

- #raw("view(az, el)");
- #raw("view([az, el])");
- #raw("view([x, y, z])");
- #raw("view(dim)");
- #raw("view(ax, ...)");
- #raw("[az, el] = view(...)");

== Input argument

/ dim: Dimensions: 2 equivalent to view(0, 90) or 3 equivalent to view(-37.5, 30).
/ az: Azimuth: scalar
/ el: Elevation: scalar
/ ax: a scalar graphics object value: parent container, specified as a axes.

== Description

#strong[view]; sets the view into a plot.


== Examples

``````matlab
f = figure();
[X,Y] = meshgrid(-6:.5:6);
Z = Y .* sin(X) - X .* cos(Y);
surf(X, Y, Z)
``````


#align(center)[#image("view_1.svg")]
``````matlab
f = figure();
[X,Y] = meshgrid(-6:.5:6);
Z = Y .* sin(X) - X .* cos(Y);
surf(X, Y, Z)
view(90, 0)
``````


#align(center)[#image("view_2.svg")]
``````matlab
f = figure();
[X,Y] = meshgrid(-6:.5:6);
Z = Y .* sin(X) - X .* cos(Y);
surf(X, Y, Z)
view(2)
``````


#align(center)[#image("view_3.svg")]

== See also

#nlink(<graphics:2_graphics_objects.1_object_management.axes>)[axes];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [1.2.0], [azimuth and elevation as output arguments.],
)

// Author: Allan CORNET
