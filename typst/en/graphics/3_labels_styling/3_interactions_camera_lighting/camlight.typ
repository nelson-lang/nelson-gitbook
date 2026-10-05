#import "../../nelson_help.typ": *

= camlight <graphics:3_labels_styling.3_interactions_camera_lighting.camlight>

Create or position a light relative to the camera.

== Syntax

- #raw("camlight()");
- #raw("camlight('headlight')");
- #raw("camlight('left')");
- #raw("camlight('right')");
- #raw("camlight(az, el)");
- #raw("go = camlight(...)");

== Description

#strong[camlight]; creates or repositions an infinite light using the current axes camera or a relative angular position.


== Example

``````matlab

surf(peaks(30), 'EdgeColor', 'none', 'FaceLighting', 'gouraud');
camlight('headlight');
material('shiny');
view(35, 28);

``````


#align(center)[#image("camlight_1.svg")]

== See also

#nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.light>)[light];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.lightangle>)[lightangle];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
