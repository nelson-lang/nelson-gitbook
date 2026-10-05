#import "../../nelson_help.typ": *

= lightangle <graphics:3_labels_styling.3_interactions_camera_lighting.lightangle>

Cree ou positionne une lumiere a partir d'angles.

== Syntaxe

- #raw("lightangle(az, el)");
- #raw("lightangle(ax, az, el)");
- #raw("lightangle(go, az, el)");
- #raw("go = lightangle(...)");

== Description

#strong[lightangle]; convertit un azimut et une elevation en position de lumiere.


== Exemple

``````matlab

surf(peaks(30), 'EdgeColor', 'none', 'FaceLighting', 'gouraud');
lightangle(45, 30);
material('shiny');
view(35, 28);

``````


#align(center)[#image("lightangle_1.svg")]

== Voir aussi

#nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.light>)[light];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.camlight>)[camlight];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
