#import "../../nelson_help.typ": *

= gcf <graphics:2_graphics_objects.1_object_management.gcf>

Récupère l'objet figure courant.

== Syntaxe

- #raw("cf = gcf()");

== Argument de sortie

/ cf: Un objet graphique : objet figure graphique.

== Description

#strong[cf \= gcf()]; retourne l'objet figure graphique courant.

 Si aucune figure n'existe, #strong[gcf()]; crée une figure et retourne son objet graphique.


== Exemple

``````matlab
cf = gcf();
root = groot();
isequal(root.CurrentFigure, cf)
``````


== Voir aussi

#nlink(<graphics:2_graphics_objects.1_object_management.figure>)[figure];, #nlink(<graphics:2_graphics_objects.1_object_management.groot>)[groot];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
