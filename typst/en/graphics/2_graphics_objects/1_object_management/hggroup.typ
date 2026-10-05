#import "../../nelson_help.typ": *

= hggroup <graphics:2_graphics_objects.1_object_management.hggroup>

Create group object.

== Syntax

- #raw("h = hggroup()");
- #raw("h = hggroup(..., propertyName, propertyValue, ...)");
- #raw("h = hggroup(ax, ...)");

== Input argument

/ ax: graphics object: axes or hggroup.
/ propertyName: a scalar string or row vector character.
/ propertyValue: a value.

== Output argument

/ p: a graphics object of type: hggroup

== Description

#strong[hggroup]; creates a hggroup object as a child of the current axes and returns its handle, h.

 The #strong[hggroup]; object is used to group graphics objects, such as lines, patches, and text, so that they can be manipulated together.

 See #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.hggroup.properties>)[hggroup properties]; for the complete property list.


== Example

``````matlab
figure();
ax = gca();
g = hggroup();
h = text(0.1, 0.1, 'tttt', 'Parent', g);
h.Parent
h.Visible
h.Visible = 'off';

``````


== See also

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.hggroup.properties>)[hggroup properties];, #nlink(<graphics:2_graphics_objects.1_object_management.gca>)[gca];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
