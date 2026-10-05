#import "../../nelson_help.typ": *

= light <graphics:3_labels_styling.3_interactions_camera_lighting.light>

Create a light object in axes.

== Syntax

- #raw("light()");
- #raw("light(ax, ...)");
- #raw("light(..., propertyName, propertyValue)");
- #raw("go = light(...)");

== Input argument

/ ax: target axes.
/ propertyName: light property name.
/ propertyValue: light property value.

== Output argument

/ go: a graphics object: light type.

== Description

#strong[light]; creates a light object in axes. Visible light objects affect surface and patch objects in the same axes when their lighting properties are enabled.

 See #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.light.properties>)[light properties]; for the complete property list.


== Example

``````matlab

f = figure();
surf(peaks(30), 'EdgeColor', 'none', 'FaceLighting', 'gouraud');
light('Position', [1 -1 1]);
material('shiny');
view(35, 28);

``````


#align(center)[#image("light_1.svg")]

== See also

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.light.properties>)[light properties];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.lighting>)[lighting];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.material>)[material];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.surf>)[surf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
