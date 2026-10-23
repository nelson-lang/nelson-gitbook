#import "../../nelson_help.typ": *

= rmappdata <graphics:2_graphics_objects.1_object_management.rmappdata>

Remove application-defined data from an object.

== Syntax

- #raw("rmappdata(h, name)");

== Input argument

/ h: a graphics object.
/ name: a string: the data name to remove.

== Description

#strong[rmappdata]; removes the application-defined data named #strong[name]; from #strong[h];. It is an error if the data does not exist.


== Example

``````matlab
f = figure();
setappdata(gca, 'state', 42);
rmappdata(gca, 'state');
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
