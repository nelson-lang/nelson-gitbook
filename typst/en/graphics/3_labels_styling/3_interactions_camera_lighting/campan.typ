#import "../../nelson_help.typ": *

= campan <graphics:3_labels_styling.3_interactions_camera_lighting.campan>

Rotate the camera target around the position.

== Syntax

- #raw("campan(dtheta, dphi)");
- #raw("campan(dtheta, dphi, coordsys)");
- #raw("campan(ax, ...)");

== Input argument

/ ax: a scalar graphics object value: an axes.
/ dtheta: horizontal rotation in degrees.
/ dphi: vertical rotation in degrees.
/ coordsys: 'data' (default, horizontal rotation about the z axis) or 'camera' (horizontal rotation about the camera up vector).

== Description

#strong[campan]; rotates the camera target around the camera position, keeping the camera-to-target distance constant. This changes the direction the camera points without moving the camera itself.


== Example

``````matlab
f = figure();
surf(peaks(40), 'EdgeColor', 'none');
camproj('perspective');
campan(10, 0);
``````


== See also

#nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.camorbit>)[camorbit];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.camdolly>)[camdolly];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
