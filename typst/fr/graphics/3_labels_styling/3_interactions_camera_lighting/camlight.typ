#import "../../nelson_help.typ": *

= camlight <graphics:3_labels_styling.3_interactions_camera_lighting.camlight>

Cree ou positionne une lumiere par rapport a la camera.

== Syntaxe

- #raw("camlight()");
- #raw("camlight('headlight')");
- #raw("camlight('left')");
- #raw("camlight('right')");
- #raw("camlight(az, el)");
- #raw("go = camlight(...)");

== Description

#strong[camlight]; place une lumiere infinie depuis la camera courante ou une position angulaire.


== Exemple

``````matlab

surf(peaks(30), 'EdgeColor', 'none', 'FaceLighting', 'gouraud');
camlight('headlight');
material('shiny');
view(35, 28);

``````


#align(center)[#image("camlight_1.svg")]

== Voir aussi

#nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.light>)[light];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.lightangle>)[lightangle];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
