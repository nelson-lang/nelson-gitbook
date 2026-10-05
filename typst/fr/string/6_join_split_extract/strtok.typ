#import "../nelson_help.typ": *

= strtok <string:6_join_split_extract.strtok>

Selectionne le premier jeton dans le texte.

== Syntaxe

- #raw("R = strtok(...)");

== Description

#strong[strtok]; Selectionne le premier jeton dans le texte.


== Exemple

``````matlab
[token, rest] = strtok("one two")
``````


== Voir aussi

#nlink(<string:6_join_split_extract.strsplit>)[strsplit];, #nlink(<string:7_edit_text.strtrim>)[strtrim];, #nlink(<string:6_join_split_extract.strread>)[strread];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
