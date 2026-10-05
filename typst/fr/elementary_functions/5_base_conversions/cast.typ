#import "../nelson_help.typ": *

= cast <elementary_functions:5_base_conversions.cast>

Convertit une variable vers un autre type de données

== Syntaxe

- #raw("R = cast(V, type_destination)");
- #raw("R = cast(V, 'like', W)");

== Argument d'entrée

/ V: une variable
/ type\_destination: une chaîne : nom du type de destination.
/ W: une variable

== Argument de sortie

/ R: une variable avec le nouveau type de données.

== Description

#strong[cast]; convertit une variable vers un autre type de données.

 #strong[R \= cast(V, 'like', W)]; convertit la variable V pour qu'elle ait la même sparsité et le même type de données que W.


== Exemple

``````matlab
r = cast([3.6 1.2 -2.4], 'like', int64(3))
r = cast([3.6 1.2 -2.4], 'int64')
``````


== Voir aussi

#nlink(<types:class>)[class];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
