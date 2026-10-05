#import "../../nelson_help.typ": *

= material <graphics:3_labels_styling.3_interactions_camera_lighting.material>

Set surface and patch material properties.

== Syntax

- #raw("material(name)");
- #raw("material(ax, name)");
- #raw("material(values)");

== Input argument

/ name: #strong[default];, #strong[shiny];, #strong[dull];, or #strong[metal];.
/ values: four or five material coefficients.

== Description

#strong[material]; updates ambient, diffuse, specular, exponent, and reflectance properties on surface and patch children.


== Example

``````matlab

surf(peaks(30), 'EdgeColor', 'none', 'FaceLighting', 'gouraud');
light('Position', [1 -1 1]);
lighting gouraud;
material('metal');
view(35, 28);

``````


#align(center)[#image("material_1.svg")]

== See also

#nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.light>)[light];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.lighting>)[lighting];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
