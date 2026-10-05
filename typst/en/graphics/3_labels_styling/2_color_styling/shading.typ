#import "../../nelson_help.typ": *

= shading <graphics:3_labels_styling.2_color_styling.shading>

Set surface and patch shading mode.

== Syntax

- #raw("shading(type)");
- #raw("shading(ax, type)");

== Input argument

/ ax: target axes.
/ type: #strong[faceted];, #strong[flat];, or #strong[interp];.

== Description

#strong[shading]; changes the #strong[FaceColor]; and #strong[EdgeColor]; of surface and patch children in axes.


== Example

``````matlab

surf(peaks(20));
shading interp;

``````


#align(center)[#image("shading_1.svg")]

== See also

#nlink(<graphics:1_plots.7_surfaces_volumes_polygons.surf>)[surf];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.lighting>)[lighting];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
