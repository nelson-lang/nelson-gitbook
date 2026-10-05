#import "../../nelson_help.typ": *

= gca <graphics:2_graphics_objects.1_object_management.gca>

Récupère l'objet axes courant.

== Syntaxe

- #raw("ca = gca()");

== Argument de sortie

/ ca: Un objet graphique : objet axes graphique.

== Description

#strong[ca \= gca()]; retourne l'objet axes graphique courant.

 Si aucun axes n'existe, #strong[gca()]; crée un axes et retourne son objet graphique.


== Exemple

``````matlab
ca = gca()
isgraphics(ax, 'axes')
``````


== Voir aussi

#nlink(<graphics:2_graphics_objects.1_object_management.isgraphics>)[isgraphics];, #nlink(<graphics:2_graphics_objects.1_object_management.axes>)[axes];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
