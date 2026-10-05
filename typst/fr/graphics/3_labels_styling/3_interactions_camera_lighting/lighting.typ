#import "../../nelson_help.typ": *

= lighting <graphics:3_labels_styling.3_interactions_camera_lighting.lighting>

Definit le mode d'eclairage des surfaces et patchs.

== Syntaxe

- #raw("lighting(type)");
- #raw("lighting(ax, type)");

== Argument d'entrée

/ ax: Axes cible.
/ type: #strong[none];, #strong[flat]; ou #strong[gouraud];.

== Description

#strong[lighting]; definit #strong[FaceLighting]; et #strong[EdgeLighting]; pour les surfaces et patchs des axes.


== Exemple

``````matlab

surf(peaks(30), 'EdgeColor', 'none');
light();
lighting gouraud;

``````


#align(center)[#image("lighting_1.svg")]

== Voir aussi

#nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.light>)[light];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.material>)[material];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
