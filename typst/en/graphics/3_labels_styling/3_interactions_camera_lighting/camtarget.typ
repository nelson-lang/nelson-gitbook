#import "../../nelson_help.typ": *

= camtarget <graphics:3_labels_styling.3_interactions_camera_lighting.camtarget>

Set or query the camera target.

== Syntax

- #raw("camtarget");
- #raw("t = camtarget");
- #raw("camtarget([x y z])");
- #raw("camtarget('auto')");
- #raw("camtarget('manual')");
- #raw("mode = camtarget('mode')");
- #raw("camtarget(ax, ...)");

== Input argument

/ ax: a scalar graphics object value: an axes.
/ \[x y z\]: the camera target point, specified as a three-element vector.

== Output argument

/ t: the current camera target, a three-element vector.

== Description

#strong[camtarget]; sets or queries the #strong[CameraTarget]; property of an axes.

 Specifying a target switches #strong[CameraTargetMode]; to #strong[manual];.


== Example

``````matlab
f = figure();
surf(peaks(40), 'EdgeColor', 'none');
camtarget([20 20 0]);
t = camtarget()
``````


== See also

#nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.campos>)[campos];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.camup>)[camup];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.camlookat>)[camlookat];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
