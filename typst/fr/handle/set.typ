#import "nelson_help.typ": *

= set <handle:set>

Définit la valeur d'une propriété d'un objet handle.

== Syntaxe

- #raw("R = set(h, property_name, value)");

== Argument d'entrée

/ h: un objet handle.
/ property\_name: une chaîne : nom de la propriété.
/ value: une variable.

== Argument de sortie

/ R: propriétés modifiables par l'utilisateur et valeurs possibles pour l'objet identifié par h.

== Description

Cette routine peut être utilisée pour modifier la valeur d'une propriété spécifiée d'un objet handle.


== Voir aussi

#nlink(<qml_engine:QObject_set>)[QObject\_set (set)];, #nlink(<handle:get>)[get];, #nlink(<handle:invoke>)[invoke];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
