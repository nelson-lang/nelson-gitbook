#import "../../nelson_help.typ": *

= shading <graphics:3_labels_styling.2_color_styling.shading>

Definit le mode d'ombrage des surfaces et patchs.

== Syntaxe

- #raw("shading(type)");
- #raw("shading(ax, type)");

== Argument d'entrée

/ ax: Axes cible.
/ type: #strong[faceted];, #strong[flat]; ou #strong[interp];.

== Description

#strong[shading]; modifie #strong[FaceColor]; et #strong[EdgeColor]; pour les surfaces et patchs des axes.


== Exemple

``````matlab

surf(peaks(20));
shading interp;

``````


#align(center)[#image("shading_1.svg")]

== Voir aussi

#nlink(<graphics:1_plots.7_surfaces_volumes_polygons.surf>)[surf];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.lighting>)[lighting];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
