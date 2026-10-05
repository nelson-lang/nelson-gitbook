#import "../nelson_help.typ": *

= eraseBetween <string:3_find_replace.eraseBetween>

Efface le texte entre des limites.

== Syntaxe

- #raw("R = eraseBetween(...)");

== Description

#strong[eraseBetween]; Efface le texte entre des limites.


== Exemple

``````matlab
eraseBetween("a[secret]b", "[", "]")
``````


== Voir aussi

#nlink(<string:3_find_replace.erase>)[erase];, #nlink(<string:3_find_replace.replaceBetween>)[replaceBetween];, #nlink(<string:6_join_split_extract.extractBetween>)[extractBetween];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
