#import "../../nelson_help.typ": *

= campos <graphics:3_labels_styling.3_interactions_camera_lighting.campos>

Set or query the camera position.

== Syntax

- #raw("campos");
- #raw("pos = campos");
- #raw("campos([x y z])");
- #raw("campos('auto')");
- #raw("campos('manual')");
- #raw("mode = campos('mode')");
- #raw("campos(ax, ...)");

== Input argument

/ ax: a scalar graphics object value: an axes.
/ \[x y z\]: the camera position, specified as a three-element vector.

== Output argument

/ pos: the current camera position, a three-element vector.

== Description

#strong[campos]; sets or queries the #strong[CameraPosition]; property of an axes.

 Specifying a position switches #strong[CameraPositionMode]; to #strong[manual];.


== Example

``````matlab
f = figure();
surf(peaks(40), 'EdgeColor', 'none');
camproj('perspective');
camtarget([0 0 0]);
campos([80 -120 90]);
camva(35);
``````


== See also

#nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.camtarget>)[camtarget];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.camva>)[camva];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.camproj>)[camproj];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.view>)[view];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
