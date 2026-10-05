#import "../../nelson_help.typ": *

= axes <graphics:2_graphics_objects.1_object_management.axes>

Create cartesian axes.

== Syntax

- #raw("ax = axes()");
- #raw("ax = axes(parent)");
- #raw("ax = axes(propertyName, propertyValue)");
- #raw("ax = axes(parent, propertyName, propertyValue)");
- #raw("axes(cax)");

== Input argument

/ parent: a scalar graphics object value: parent container, specified as a figure.
/ cax: axes to make current.
/ propertyName: a scalar string or row vector character.
/ propertyValue: a value.

== Output argument

/ ax: a graphics object: axes type.

== Description

#strong[axes]; creates axes in the current figure and set it as the current axes.

 #strong[axes(cax)]; set current axes.

 Clicking on an axis automatically sets it as the current axes object.

 See #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.axes.properties>)[axes properties]; for the complete property list.


== Example

``````matlab
f = figure();
ax1 = axes('Position', [0.1 0.1 0.7 0.7]);
ax2 = axes('Position', [0.65 0.65 0.28 0.28]);
x = linspace(0,10);
y1 = sin(x);
y2 = cos(x);
plot(ax1, x, y1);
plot(ax2, x, y2);
``````


#align(center)[#image("axes.svg")]

== See also

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.axes.properties>)[axes properties];, #nlink(<graphics:2_graphics_objects.1_object_management.gcf>)[gcf];, #nlink(<graphics:2_graphics_objects.1_object_management.close>)[close];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [1.2.0], [Clicking on an axis automatically sets it as the current axes object.],
  [--], [GridAlpha, GridColor propertiew for Axes.],
  [1.7.0], [CreateFcn, DeleteFcn callback added.],
  [--], [BeingDeleted property added.],
  [--], [Axes property documentation updated.],
)

// Author: Allan CORNET
