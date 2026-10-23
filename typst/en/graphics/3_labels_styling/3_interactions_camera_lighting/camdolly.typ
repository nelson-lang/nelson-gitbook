#import "../../nelson_help.typ": *

= camdolly <graphics:3_labels_styling.3_interactions_camera_lighting.camdolly>

Move the camera position and target.

== Syntax

- #raw("camdolly(dx, dy, dz)");
- #raw("camdolly(dx, dy, dz, coordsys)");
- #raw("camdolly(dx, dy, dz, coordsys, units)");
- #raw("camdolly(ax, ...)");

== Input argument

/ ax: a scalar graphics object value: an axes.
/ dx, dy, dz: the displacement along each axis of the chosen coordinate system.
/ coordsys: 'camera' (default: dx right, dy up, dz along the view direction) or 'data' (world axes).
/ units: 'normalized' (default: relative to the camera-to-target distance) or 'data'.

== Description

#strong[camdolly]; moves the camera position and the camera target by the same amount, sliding the view across the scene.


== Example

``````matlab
f = figure();
surf(peaks(40), 'EdgeColor', 'none');
camproj('perspective');
camdolly(0.2, 0, 0);
``````


== See also

#nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.camorbit>)[camorbit];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.camzoom>)[camzoom];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
