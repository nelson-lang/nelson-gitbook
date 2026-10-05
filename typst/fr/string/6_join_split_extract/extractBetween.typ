#import "../nelson_help.typ": *

= extractBetween <string:6_join_split_extract.extractBetween>

Extrait le texte entre des limites.

== Syntaxe

- #raw("R = extractBetween(...)");

== Description

#strong[extractBetween]; Extrait le texte entre des limites.


== Exemple

``````matlab
extractBetween("a[bc]d", "[", "]")
``````


== Voir aussi

#nlink(<string:6_join_split_extract.extractAfter>)[extractAfter];, #nlink(<string:6_join_split_extract.extractBefore>)[extractBefore];, #nlink(<string:6_join_split_extract.extract>)[extract];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
