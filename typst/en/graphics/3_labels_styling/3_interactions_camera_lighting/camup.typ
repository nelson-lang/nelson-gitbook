#import "../../nelson_help.typ": *

= camup <graphics:3_labels_styling.3_interactions_camera_lighting.camup>

Set or query the camera up vector.

== Syntax

- #raw("camup");
- #raw("u = camup");
- #raw("camup([x y z])");
- #raw("camup('auto')");
- #raw("camup('manual')");
- #raw("mode = camup('mode')");
- #raw("camup(ax, ...)");

== Input argument

/ ax: a scalar graphics object value: an axes.
/ \[x y z\]: the camera up vector, specified as a three-element vector.

== Output argument

/ u: the current camera up vector, a three-element vector.

== Description

#strong[camup]; sets or queries the #strong[CameraUpVector]; property of an axes.

 Specifying an up vector switches #strong[CameraUpVectorMode]; to #strong[manual];.


== Example

``````matlab
f = figure();
surf(peaks(40), 'EdgeColor', 'none');
camup([0 0 1]);
u = camup()
``````


== See also

#nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.campos>)[campos];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.camroll>)[camroll];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
