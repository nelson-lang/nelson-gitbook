#import "../nelson_help.typ": *

= insertBefore <string:7_edit_text.insertBefore>

Insere du texte avant une limite.

== Syntaxe

- #raw("R = insertBefore(...)");

== Description

#strong[insertBefore]; Insere du texte avant une limite.


== Exemple

``````matlab
insertBefore("a=b", "=", "1")
``````


== Voir aussi

#nlink(<string:7_edit_text.insertAfter>)[insertAfter];, #nlink(<string:3_find_replace.replaceBetween>)[replaceBetween];, #nlink(<string:6_join_split_extract.extractBefore>)[extractBefore];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
