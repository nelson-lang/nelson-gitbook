#import "../../nelson_help.typ": *

= getappdata <graphics:2_graphics_objects.1_object_management.getappdata>

Récupère des données applicatives d'un objet.

== Syntaxe

- #raw("value = getappdata(h, name)");
- #raw("s = getappdata(h)");

== Argument d'entrée

/ h: un objet graphique.
/ name: une chaîne : le nom de la donnée.

== Argument de sortie

/ value: la valeur stockée, ou \[\] si le nom n'est pas défini.
/ s: une structure de toutes les données applicatives si aucun nom n'est donné.

== Description

#strong[getappdata]; renvoie la donnée applicative nommée #strong[name]; stockée sur #strong[h];, ou l'ensemble sous forme de structure si #strong[name]; est omis.


== Exemple

``````matlab
f = figure();
setappdata(gca, 'state', 42);
getappdata(gca, 'state')
``````


== Voir aussi

#nlink(<graphics:2_graphics_objects.1_object_management.setappdata>)[setappdata];, #nlink(<graphics:2_graphics_objects.1_object_management.isappdata>)[isappdata];, #nlink(<graphics:2_graphics_objects.1_object_management.rmappdata>)[rmappdata];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Version initiale.],
)

// Auteur: Allan CORNET
