#import "../../nelson_help.typ": *

= material <graphics:3_labels_styling.3_interactions_camera_lighting.material>

Definit les proprietes de materiau.

== Syntaxe

- #raw("material(name)");
- #raw("material(ax, name)");
- #raw("material(values)");

== Argument d'entrée

/ name: #strong[default];, #strong[shiny];, #strong[dull]; ou #strong[metal];.
/ values: Quatre ou cinq coefficients de materiau.

== Description

#strong[material]; modifie les coefficients ambiant, diffus, speculaire, exposant et reflectance.


== Exemple

``````matlab

surf(peaks(30), 'EdgeColor', 'none', 'FaceLighting', 'gouraud');
light('Position', [1 -1 1]);
lighting gouraud;
material('metal');
view(35, 28);

``````


#align(center)[#image("material_1.svg")]

== Voir aussi

#nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.light>)[light];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.lighting>)[lighting];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
