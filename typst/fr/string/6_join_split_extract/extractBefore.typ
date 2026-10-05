#import "../nelson_help.typ": *

= extractBefore <string:6_join_split_extract.extractBefore>

Extrait le texte avant une limite.

== Syntaxe

- #raw("R = extractBefore(...)");

== Description

#strong[extractBefore]; Extrait le texte avant une limite.


== Exemple

``````matlab
extractBefore("abc.def", ".")
``````


== Voir aussi

#nlink(<string:6_join_split_extract.extractAfter>)[extractAfter];, #nlink(<string:6_join_split_extract.extractBetween>)[extractBetween];, #nlink(<string:6_join_split_extract.extract>)[extract];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
