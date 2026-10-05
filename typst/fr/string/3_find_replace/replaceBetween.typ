#import "../nelson_help.typ": *

= replaceBetween <string:3_find_replace.replaceBetween>

Remplace le texte entre des limites.

== Syntaxe

- #raw("R = replaceBetween(...)");

== Description

#strong[replaceBetween]; Remplace le texte entre des limites.


== Exemple

``````matlab
replaceBetween("a[old]b", "[", "]", "new")
``````


== Voir aussi

#nlink(<string:3_find_replace.eraseBetween>)[eraseBetween];, #nlink(<string:3_find_replace.replace>)[replace];, #nlink(<string:6_join_split_extract.extractBetween>)[extractBetween];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
