#import "../nelson_help.typ": *

= insertAfter <string:7_edit_text.insertAfter>

Insere du texte apres une limite.

== Syntaxe

- #raw("R = insertAfter(...)");

== Description

#strong[insertAfter]; Insere du texte apres une limite.


== Exemple

``````matlab
insertAfter("a=b", "=", "1")
``````


== Voir aussi

#nlink(<string:7_edit_text.insertBefore>)[insertBefore];, #nlink(<string:3_find_replace.replaceBetween>)[replaceBetween];, #nlink(<string:6_join_split_extract.extractAfter>)[extractAfter];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
