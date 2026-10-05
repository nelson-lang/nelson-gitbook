#import "../../nelson_help.typ": *

= refresh <graphics:3_labels_styling.3_interactions_camera_lighting.refresh>

Rafraîchir la figure courante.

== Syntaxe

- #raw("refresh()");
- #raw("refresh(F)");

== Argument d'entrée

/ F: Objet graphique figure.

== Description

#strong[refresh]; efface et redessine la figure courante.

 #strong[refresh(F)]; redessine la figure identifiée par #strong[F];.


== Voir aussi

#nlink(<graphics:2_graphics_objects.1_object_management.clf>)[clf];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
