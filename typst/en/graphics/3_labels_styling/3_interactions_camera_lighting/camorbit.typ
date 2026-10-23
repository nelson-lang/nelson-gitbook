#import "../../nelson_help.typ": *

= camorbit <graphics:3_labels_styling.3_interactions_camera_lighting.camorbit>

Rotate the camera position around the target.

== Syntax

- #raw("camorbit(dtheta, dphi)");
- #raw("camorbit(dtheta, dphi, coordsys)");
- #raw("camorbit(ax, ...)");

== Input argument

/ ax: a scalar graphics object value: an axes.
/ dtheta: horizontal rotation in degrees.
/ dphi: vertical rotation in degrees.
/ coordsys: 'data' (default, horizontal rotation about the z axis) or 'camera' (horizontal rotation about the camera up vector).

== Description

#strong[camorbit]; rotates the camera position around the camera target, keeping the camera-to-target distance constant. It is the programmatic equivalent of orbiting the scene with the mouse.


== Example

``````matlab
f = figure();
surf(peaks(40), 'EdgeColor', 'none');
camproj('perspective');
for k = 1:36
  camorbit(10, 0);
  drawnow();
end
``````


== See also

#nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.campan>)[campan];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.camdolly>)[camdolly];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.camroll>)[camroll];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
