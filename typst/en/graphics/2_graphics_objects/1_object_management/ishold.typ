#import "../../nelson_help.typ": *

= ishold <graphics:2_graphics_objects.1_object_management.ishold>

Get current hold state.

== Syntax

- #raw("tf = ishold()");
- #raw("tf = ishold(ax)");

== Input argument

/ ax: scalar graphics object: axes.

== Output argument

/ tf: a scalar logical: true if it is hold on.

== Description

#strong[tf \= ishold(ax)]; returns the hold state of the specified axes object.


== See also

#nlink(<graphics:2_graphics_objects.1_object_management.hold>)[hold];, #nlink(<graphics:2_graphics_objects.1_object_management.newplot>)[newplot];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
