#import "../../nelson_help.typ": *

= camroll <graphics:3_labels_styling.3_interactions_camera_lighting.camroll>

Fait rouler la caméra autour de l'axe de visée.

== Syntaxe

- #raw("camroll(dtheta)");
- #raw("camroll(ax, dtheta)");

== Argument d'entrée

/ ax: Un objet graphique scalaire : des axes.
/ dtheta: L'angle de roulis en degrés.

== Description

#strong[camroll]; fait tourner le #strong[CameraUpVector]; autour de la droite joignant la position et la cible de la caméra, faisant rouler la vue de l'angle indiqué.


== Exemple

``````matlab
f = figure();
surf(peaks(40), 'EdgeColor', 'none');
camroll(30);
``````


== Voir aussi

#nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.camup>)[camup];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.camorbit>)[camorbit];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Version initiale],
)

// Auteur: Allan CORNET
