#import "../../nelson_help.typ": *

= setappdata <graphics:2_graphics_objects.1_object_management.setappdata>

Store application-defined data on an object.

== Syntax

- #raw("setappdata(h, name, value)");

== Input argument

/ h: a graphics object.
/ name: a string: the data name.
/ value: any value to store.

== Description

#strong[setappdata]; stores the named #strong[value]; as application-defined data on the object #strong[h];, retrievable with #strong[getappdata];.


== Example

``````matlab
f = figure();
setappdata(gca, 'state', 42);
getappdata(gca, 'state')
``````


== See also

#nlink(<graphics:2_graphics_objects.1_object_management.getappdata>)[getappdata];, #nlink(<graphics:2_graphics_objects.1_object_management.isappdata>)[isappdata];, #nlink(<graphics:2_graphics_objects.1_object_management.rmappdata>)[rmappdata];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Initial version.],
)

// Author: Allan CORNET
