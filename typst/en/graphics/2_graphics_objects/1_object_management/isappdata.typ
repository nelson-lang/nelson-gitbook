#import "../../nelson_help.typ": *

= isappdata <graphics:2_graphics_objects.1_object_management.isappdata>

True if application-defined data exists.

== Syntax

- #raw("tf = isappdata(h, name)");

== Input argument

/ h: a graphics object.
/ name: a string: the data name.

== Output argument

/ tf: true if the named data is stored on h.

== Description

#strong[isappdata]; returns true when application-defined data named #strong[name]; exists on #strong[h];.


== Example

``````matlab
f = figure();
setappdata(gca, 'state', 42);
isappdata(gca, 'state')
``````


== See also

#nlink(<graphics:2_graphics_objects.1_object_management.setappdata>)[setappdata];, #nlink(<graphics:2_graphics_objects.1_object_management.getappdata>)[getappdata];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Initial version.],
)

// Author: Allan CORNET
