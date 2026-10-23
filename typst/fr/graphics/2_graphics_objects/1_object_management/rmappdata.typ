#import "../../nelson_help.typ": *

= rmappdata <graphics:2_graphics_objects.1_object_management.rmappdata>

Supprime des données applicatives d'un objet.

== Syntaxe

- #raw("rmappdata(h, name)");

== Argument d'entrée

/ h: un objet graphique.
/ name: une chaîne : le nom de la donnée à supprimer.

== Description

#strong[rmappdata]; supprime la donnée applicative nommée #strong[name]; de #strong[h];. C'est une erreur si la donnée n'existe pas.


== Exemple

``````matlab
f = figure();
setappdata(gca, 'state', 42);
rmappdata(gca, 'state');
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
