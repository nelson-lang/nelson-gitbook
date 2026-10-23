#import "../../nelson_help.typ": *

= getappdata <graphics:2_graphics_objects.1_object_management.getappdata>

Retrieve application-defined data from an object.

== Syntax

- #raw("value = getappdata(h, name)");
- #raw("s = getappdata(h)");

== Input argument

/ h: a graphics object.
/ name: a string: the data name.

== Output argument

/ value: the stored value, or \[\] if the name is not set.
/ s: a structure of all application data when no name is given.

== Description

#strong[getappdata]; returns the application-defined data named #strong[name]; stored on #strong[h];, or all of it as a structure when #strong[name]; is omitted.


== Example

``````matlab
f = figure();
setappdata(gca, 'state', 42);
getappdata(gca, 'state')
``````


== See also

#nlink(<graphics:2_graphics_objects.1_object_management.setappdata>)[setappdata];, #nlink(<graphics:2_graphics_objects.1_object_management.isappdata>)[isappdata];, #nlink(<graphics:2_graphics_objects.1_object_management.rmappdata>)[rmappdata];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Initial version.],
)

// Author: Allan CORNET
