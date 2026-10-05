#import "../../nelson_help.typ": *

= box <graphics:3_labels_styling.1_axes_appearance.box>

Afficher ou masquer le contour d'un objet graphique.

== Syntaxe

- #raw("box");
- #raw("box('on')");
- #raw("box('off')");
- #raw("box(visibility)");
- #raw("box(target, ...)");

== Argument d'entrée

/ visibility: Visibilite du contour : 'on', 'off', true, false, 1 ou 0.
/ target: Objet cible avec une propriete Box, comme des axes, une legende ou une colorbar.

== Description

#strong[box()]; active ou desactive le contour des axes courants.

 #strong[box('on')]; affiche le contour des axes courants.

 #strong[box('off')]; masque le contour des axes courants.

 #strong[box(target, ...)]; modifie le contour de la cible specifiee au lieu des axes courants.


== Exemple

``````matlab
f = figure();
plot(1:10)
box on
``````


#align(center)[#image("box.svg")]

== Voir aussi

#nlink(<graphics:2_graphics_objects.1_object_management.axes>)[axes];, #nlink(<graphics:3_labels_styling.1_axes_appearance.grid>)[grid];, #nlink(<graphics:3_labels_styling.4_labels_annotations.legend>)[legend];, #nlink(<graphics:3_labels_styling.4_labels_annotations.colorbar>)[colorbar];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
