#import "../../nelson_help.typ": *

= ishold <graphics:2_graphics_objects.1_object_management.ishold>

Obtient l'état actuel du mode hold.

== Syntaxe

- #raw("tf = ishold()");
- #raw("tf = ishold(ax)");

== Argument d'entrée

/ ax: Objet graphique scalaire : axes.

== Argument de sortie

/ tf: Un scalaire logique : vrai si le mode hold est activé.

== Description

#strong[tf \= ishold(ax)]; retourne l'état du mode hold de l'objet axes spécifié.


== Voir aussi

#nlink(<graphics:2_graphics_objects.1_object_management.hold>)[hold];, #nlink(<graphics:2_graphics_objects.1_object_management.newplot>)[newplot];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
