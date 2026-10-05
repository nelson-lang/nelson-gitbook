#import "../../nelson_help.typ": *

= groot <graphics:2_graphics_objects.1_object_management.groot>

graphic root object.

== Syntax

- #raw("g = groot()");

== Output argument

/ g: a graphics object: root object.

== Description

#strong[groot]; returns the graphics root object.

 See #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.groot.properties>)[groot properties]; for the complete property list.

Root defaults can be set with names of the form #strong[Default];#emph[Object];#emph[Property];. For example, #strong[set(groot(), 'DefaultFigureColormap', cmap)]; changes the colormap used by new figures. Use the value #strong['remove']; to restore the factory default.


== Example

``````matlab
g = groot()
g.ScreenDepth
``````


== See also

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.groot.properties>)[groot properties];, #nlink(<graphics:2_graphics_objects.1_object_management.figure>)[figure];, #nlink(<graphics:2_graphics_objects.1_object_management.gcf>)[gcf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
