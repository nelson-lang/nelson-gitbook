#import "../nelson_help.typ": *

= extract <string:6_join_split_extract.extract>

Extrait le texte correspondant.

== Syntaxe

- #raw("R = extract(...)");

== Description

#strong[extract]; Extrait le texte correspondant.


== Exemple

``````matlab
extract("Hello World", regexpPattern('. *'))
``````


== Voir aussi

#nlink(<string:6_join_split_extract.extractAfter>)[extractAfter];, #nlink(<string:6_join_split_extract.extractBefore>)[extractBefore];, #nlink(<string:6_join_split_extract.extractBetween>)[extractBetween];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
