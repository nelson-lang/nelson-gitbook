#import "../../nelson_help.typ": *

= waitforbuttonpress <graphics:3_labels_styling.3_interactions_camera_lighting.waitforbuttonpress>

Attendre un clic ou une pression sur une touche.

== Syntaxe

- #raw("w = waitforbuttonpress()");

== Argument de sortie

/ w: Une valeur double scalaire : 0 pour un clic de souris, 1 pour une pression sur une touche.

== Description

#strong[w \= waitforbuttonpress()]; met en pause l'exécution du code jusqu'à ce que l'utilisateur interagisse avec la figure actuelle en cliquant sur un bouton de la souris ou en appuyant sur une touche.


== Exemple

``````matlab
cf = gcf();
w = waitforbuttonpress;
axes;
``````


== Voir aussi

#nlink(<graphics:2_graphics_objects.1_object_management.figure>)[figure];, #nlink(<graphics:2_graphics_objects.1_object_management.gcf>)[gcf];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.7.0], [Version initiale],
)

// Auteur: Allan CORNET
