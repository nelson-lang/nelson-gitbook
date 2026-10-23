#import "../../nelson_help.typ": *

= camva <graphics:3_labels_styling.3_interactions_camera_lighting.camva>

Set or query the camera view angle.

== Syntax

- #raw("camva");
- #raw("a = camva");
- #raw("camva(angle)");
- #raw("camva('auto')");
- #raw("camva('manual')");
- #raw("mode = camva('mode')");
- #raw("camva(ax, ...)");

== Input argument

/ ax: a scalar graphics object value: an axes.
/ angle: the camera view angle in degrees, a real scalar in the range (0, 180).

== Output argument

/ a: the current camera view angle in degrees.

== Description

#strong[camva]; sets or queries the #strong[CameraViewAngle]; property of an axes.

 The view angle is the field of view of the camera: a larger angle makes the scene appear smaller. With a perspective projection it controls the strength of the foreshortening. Specifying an angle switches #strong[CameraViewAngleMode]; to #strong[manual];.


== Example

``````matlab
f = figure();
surf(peaks(40), 'EdgeColor', 'none');
camproj('perspective');
camva(30);
``````


== See also

#nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.campos>)[campos];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.camzoom>)[camzoom];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.camproj>)[camproj];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
