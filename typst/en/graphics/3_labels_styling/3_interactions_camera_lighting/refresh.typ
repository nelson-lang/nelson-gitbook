#import "../../nelson_help.typ": *

= refresh <graphics:3_labels_styling.3_interactions_camera_lighting.refresh>

Redraw current figure.

== Syntax

- #raw("refresh()");
- #raw("refresh(F)");

== Input argument

/ F: figure graphics object.

== Description

#strong[refresh]; erases and redraws the current figure.

 #strong[refresh(F)]; redraws the figure identified by #strong[F];.


== See also

#nlink(<graphics:2_graphics_objects.1_object_management.clf>)[clf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
