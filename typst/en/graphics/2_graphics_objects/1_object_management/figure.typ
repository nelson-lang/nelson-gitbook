#import "../../nelson_help.typ": *

= figure <graphics:2_graphics_objects.1_object_management.figure>

Creates an figure window.

== Syntax

- #raw("f = figure()");
- #raw("f = figure(ID)");
- #raw("f = figure(H)");
- #raw("f = figure(propertyName, propertyValue)");
- #raw("f = figure(ID, propertyName, propertyValue)");
- #raw("f = figure(H, propertyName, propertyValue)");

== Input argument

/ ID: a scalar integer value: find or creates with ID.
/ H: a scalar graphics object on an existing figure.
/ propertyName: a scalar string or row vector character.
/ propertyValue: a value.

== Output argument

/ f: a graphics object: figure handle.

== Description

#strong[figure]; creates figure.

 Clicking on an figure automatically sets it as the current figure object.

 

 See #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.figure.properties>)[figure properties]; for the complete property list.


== Example

``````matlab
f = figure(1)
g = figure(2)
h = figure(3)
figure(g)
gcf()
figure('Name', 'Hello')

``````


== See also

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.figure.properties>)[figure properties];, #nlink(<graphics:2_graphics_objects.1_object_management.gcf>)[gcf];, #nlink(<graphics:2_graphics_objects.1_object_management.close>)[close];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [1.2.0], [Clicking on an figure automatically sets it as the current figure object.],
  [1.7.0], [CreateFcn, DeleteFcn, CloseRequestFcn, KeyPressFcn, KeyReleaseFcn, ButtonDownFcn callback added.],
  [--], [BeingDeleted property added.],
  [1.8.0], [Resize property added.],
  [1.13.0], [DevicePixelRatio property added.],
  [1.14.0], [WindowState property added.],
  [--], [Figure property documentation updated.],
)

// Author: Allan CORNET
