#import "../../nelson_help.typ": *

= ancestor <graphics:2_graphics_objects.1_object_management.ancestor>

Ancestor of graphics object.

== Syntax

- #raw("p = ancestor(h, type)");
- #raw("p = ancestor(h, type, 'toplevel')");

== Input argument

/ h: graphics object
/ type: a row vector character or cell of strings:
/ 'toplevel': a row vector character: return the highest parent in the object hierarchy that matches the condition.

== Output argument

/ p: a graphics object or \[\]

== Description

#strong[ancestor]; returns the handle of the specified object's ancestor of a given type.


== Example

``````matlab
f = figure();
ax = gca();
s = surf(peaks);
AX = ancestor(s, 'axes')
F = ancestor(s, 'figure')
R = ancestor(s, 'root')
``````


== See also

#nlink(<graphics:2_graphics_objects.1_object_management.gcf>)[gcf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
