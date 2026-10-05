#import "nelson_help.typ": *

= getfield <data_structures:getfield>

Renvoie la valeur d'un champ dans un struct.

== Syntaxe

- #raw("value = getfield(st, field)");

== Argument d'entrée

/ st: une structure.
/ field: une chaîne.

== Argument de sortie

/ value: la valeur d'un champ d'une structure.

== Description

#strong[value \= getfield(st, field)]; renvoie la valeur du champ nommé #strong[field]; d'une structure.


== Exemple

``````matlab
example.a = 1
example.b = 'nelson'
example.c = []
getfield(example, 'b')
``````


== Voir aussi

#nlink(<data_structures:struct>)[struct];, #nlink(<data_structures:fieldnames>)[fieldnames];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
