#import "../../nelson_help.typ": *

= camroll <graphics:3_labels_styling.3_interactions_camera_lighting.camroll>

Roll the camera about the viewing axis.

== Syntax

- #raw("camroll(dtheta)");
- #raw("camroll(ax, dtheta)");

== Input argument

/ ax: a scalar graphics object value: an axes.
/ dtheta: the roll angle in degrees.

== Description

#strong[camroll]; rotates the #strong[CameraUpVector]; about the line joining the camera position and the camera target, rolling the view by the given angle.


== Example

``````matlab
f = figure();
surf(peaks(40), 'EdgeColor', 'none');
camroll(30);
``````


== See also

#nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.camup>)[camup];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.camorbit>)[camorbit];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
