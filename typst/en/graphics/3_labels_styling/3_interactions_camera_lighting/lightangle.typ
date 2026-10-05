#import "../../nelson_help.typ": *

= lightangle <graphics:3_labels_styling.3_interactions_camera_lighting.lightangle>

Create or position a light from angles.

== Syntax

- #raw("lightangle(az, el)");
- #raw("lightangle(ax, az, el)");
- #raw("lightangle(go, az, el)");
- #raw("go = lightangle(...)");

== Description

#strong[lightangle]; converts azimuth and elevation angles to a light position. If no light handle is supplied, it creates one.


== Example

``````matlab

surf(peaks(30), 'EdgeColor', 'none', 'FaceLighting', 'gouraud');
lightangle(45, 30);
material('shiny');
view(35, 28);

``````


#align(center)[#image("lightangle_1.svg")]

== See also

#nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.light>)[light];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.camlight>)[camlight];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
