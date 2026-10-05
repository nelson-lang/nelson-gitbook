#import "../../nelson_help.typ": *

= gca <graphics:2_graphics_objects.1_object_management.gca>

get current axes graphics object.

== Syntax

- #raw("ca = gca()");

== Output argument

/ ca: a graphics object: axes graphics object.

== Description

#strong[ca \= gca()]; returns the current axes graphics object.

 If there are no axes,#strong[gca()]; creates an axes and returns its graphics object.


== Example

``````matlab
ca = gca()
isgraphics(ax, 'axes')
``````


== See also

#nlink(<graphics:2_graphics_objects.1_object_management.isgraphics>)[isgraphics];, #nlink(<graphics:2_graphics_objects.1_object_management.axes>)[axes];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
