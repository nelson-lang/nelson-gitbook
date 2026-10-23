#import "../../nelson_help.typ": *

= camorbit <graphics:3_labels_styling.3_interactions_camera_lighting.camorbit>

Fait orbiter la position de la caméra autour de la cible.

== Syntaxe

- #raw("camorbit(dtheta, dphi)");
- #raw("camorbit(dtheta, dphi, coordsys)");
- #raw("camorbit(ax, ...)");

== Argument d'entrée

/ ax: Un objet graphique scalaire : des axes.
/ dtheta: Rotation horizontale en degrés.
/ dphi: Rotation verticale en degrés.
/ coordsys: 'data' (par défaut, rotation horizontale autour de l'axe z) ou 'camera' (rotation horizontale autour du vecteur vertical de la caméra).

== Description

#strong[camorbit]; fait tourner la position de la caméra autour de la cible, en conservant la distance caméra-cible constante. C'est l'équivalent programmatique de l'orbite de la scène à la souris.


== Exemple

``````matlab
f = figure();
surf(peaks(40), 'EdgeColor', 'none');
camproj('perspective');
for k = 1:36
  camorbit(10, 0);
  drawnow();
end
``````


== Voir aussi

#nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.campan>)[campan];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.camdolly>)[camdolly];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.camroll>)[camroll];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Version initiale],
)

// Auteur: Allan CORNET
