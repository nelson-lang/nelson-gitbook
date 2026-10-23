#import "../../nelson_help.typ": *

= setappdata <graphics:2_graphics_objects.1_object_management.setappdata>

Stocke des données applicatives sur un objet.

== Syntaxe

- #raw("setappdata(h, name, value)");

== Argument d'entrée

/ h: un objet graphique.
/ name: une chaîne : le nom de la donnée.
/ value: une valeur quelconque à stocker.

== Description

#strong[setappdata]; stocke la #strong[value]; nommée comme donnée applicative sur l'objet #strong[h];, récupérable avec #strong[getappdata];.


== Exemple

``````matlab
f = figure();
setappdata(gca, 'state', 42);
getappdata(gca, 'state')
``````


== Voir aussi

#nlink(<graphics:2_graphics_objects.1_object_management.getappdata>)[getappdata];, #nlink(<graphics:2_graphics_objects.1_object_management.isappdata>)[isappdata];, #nlink(<graphics:2_graphics_objects.1_object_management.rmappdata>)[rmappdata];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Version initiale.],
)

// Auteur: Allan CORNET
