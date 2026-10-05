#import "../../nelson_help.typ": *

= lighting <graphics:3_labels_styling.3_interactions_camera_lighting.lighting>

Set surface and patch lighting mode.

== Syntax

- #raw("lighting(type)");
- #raw("lighting(ax, type)");

== Input argument

/ ax: target axes.
/ type: #strong[none];, #strong[flat];, or #strong[gouraud];.

== Description

#strong[lighting]; sets #strong[FaceLighting]; and #strong[EdgeLighting]; on surface and patch children in axes.


== Example

``````matlab

surf(peaks(30), 'EdgeColor', 'none');
light();
lighting gouraud;

``````


#align(center)[#image("lighting_1.svg")]

== See also

#nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.light>)[light];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.material>)[material];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
