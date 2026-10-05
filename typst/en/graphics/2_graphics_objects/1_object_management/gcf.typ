#import "../../nelson_help.typ": *

= gcf <graphics:2_graphics_objects.1_object_management.gcf>

get current figure graphics object.

== Syntax

- #raw("cf = gcf()");

== Output argument

/ cf: a graphics object: figure graphics object.

== Description

#strong[cf \= gcf()]; returns the current figure graphics object.

 If a figure does not exist,#strong[gcf()]; creates a figure and returns its graphics object.


== Example

``````matlab
cf = gcf();
root = groot();
isequal(root.CurrentFigure, cf)
``````


== See also

#nlink(<graphics:2_graphics_objects.1_object_management.figure>)[figure];, #nlink(<graphics:2_graphics_objects.1_object_management.groot>)[groot];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
