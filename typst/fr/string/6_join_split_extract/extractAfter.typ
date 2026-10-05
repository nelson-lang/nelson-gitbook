#import "../nelson_help.typ": *

= extractAfter <string:6_join_split_extract.extractAfter>

Extrait le texte apres une limite.

== Syntaxe

- #raw("R = extractAfter(...)");

== Description

#strong[extractAfter]; Extrait le texte apres une limite.


== Exemple

``````matlab
extractAfter("abc.def", ".")
``````


== Voir aussi

#nlink(<string:6_join_split_extract.extractBefore>)[extractBefore];, #nlink(<string:6_join_split_extract.extractBetween>)[extractBetween];, #nlink(<string:6_join_split_extract.extract>)[extract];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
