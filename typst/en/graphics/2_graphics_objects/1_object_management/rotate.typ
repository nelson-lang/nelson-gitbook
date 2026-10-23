#import "../../nelson_help.typ": *

= rotate <graphics:2_graphics_objects.1_object_management.rotate>

Rotate graphics objects about an axis.

== Syntax

- #raw("rotate(h, direction, alpha)");
- #raw("rotate(h, direction, alpha, origin)");

== Input argument

/ h: a graphics object or an array of objects with XData\/YData(\/ZData).
/ direction: the rotation axis: a three-element vector \[x y z\], or a two-element \[azimuth elevation\] in degrees.
/ alpha: the rotation angle in degrees.
/ origin: the center of rotation (default: the center of the axes plot box).

== Description

#strong[rotate]; rotates the graphics objects #strong[h]; by #strong[alpha]; degrees about the axis given by #strong[direction];, passing through #strong[origin];. The object data is transformed in place.


== Example

``````matlab
f = figure();
s = surf(peaks(20));
rotate(s, [0 0 1], 45);
``````


== See also

#nlink(<graphics:2_graphics_objects.1_object_management.gca>)[gca];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Initial version.],
)

// Author: Allan CORNET
