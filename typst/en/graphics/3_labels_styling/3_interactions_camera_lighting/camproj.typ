#import "../../nelson_help.typ": *

= camproj <graphics:3_labels_styling.3_interactions_camera_lighting.camproj>

Set or query the camera projection type.

== Syntax

- #raw("camproj");
- #raw("p = camproj");
- #raw("camproj('orthographic')");
- #raw("camproj('perspective')");
- #raw("camproj(ax, ...)");

== Input argument

/ ax: a scalar graphics object value: an axes.
/ type: the projection type: 'orthographic' or 'perspective'.

== Output argument

/ p: the current projection type.

== Description

#strong[camproj]; sets or queries the #strong[Projection]; property of an axes.

 An #strong[orthographic]; projection keeps parallel lines parallel and the apparent size independent of distance. A #strong[perspective]; projection adds foreshortening, so objects farther from the camera appear smaller.


== Example

``````matlab
f = figure();
surf(peaks(40), 'EdgeColor', 'none');
camproj('perspective');
p = camproj()
``````


== See also

#nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.camva>)[camva];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.campos>)[campos];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
