#import "../../nelson_help.typ": *

= isappdata <graphics:2_graphics_objects.1_object_management.isappdata>

Vrai si des données applicatives existent.

== Syntaxe

- #raw("tf = isappdata(h, name)");

== Argument d'entrée

/ h: un objet graphique.
/ name: une chaîne : le nom de la donnée.

== Argument de sortie

/ tf: vrai si la donnée nommée est stockée sur h.

== Description

#strong[isappdata]; renvoie vrai lorsqu'une donnée applicative nommée #strong[name]; existe sur #strong[h];.


== Exemple

``````matlab
f = figure();
setappdata(gca, 'state', 42);
isappdata(gca, 'state')
``````


== Voir aussi

#nlink(<graphics:2_graphics_objects.1_object_management.setappdata>)[setappdata];, #nlink(<graphics:2_graphics_objects.1_object_management.getappdata>)[getappdata];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Version initiale.],
)

// Auteur: Allan CORNET
