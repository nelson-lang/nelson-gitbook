#import "../../nelson_help.typ": *

= camzoom <graphics:3_labels_styling.3_interactions_camera_lighting.camzoom>

Zoom the camera in or out.

== Syntax

- #raw("camzoom(zf)");
- #raw("camzoom(ax, zf)");

== Input argument

/ ax: a scalar graphics object value: an axes.
/ zf: the zoom factor, a positive real scalar. A value greater than 1 zooms in, a value less than 1 zooms out.

== Description

#strong[camzoom]; zooms the camera by dividing the tangent of half the #strong[CameraViewAngle]; by the zoom factor, so the scene appears #strong[zf]; times larger, switching #strong[CameraViewAngleMode]; to #strong[manual];.


== Example

``````matlab
f = figure();
surf(peaks(40), 'EdgeColor', 'none');
camproj('perspective');
camzoom(2);
``````


== See also

#nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.camva>)[camva];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.camdolly>)[camdolly];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
