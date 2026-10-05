#import "../nelson_help.typ": *

= strread <string:6_join_split_extract.strread>

Lit des valeurs depuis un texte.

== Syntaxe

- #raw("R = strread(...)");

== Description

#strong[strread]; Lit des valeurs depuis un texte.


== Exemple

``````matlab
[A, B] = strread("1 one 2 two", "%d%s")
``````


== Voir aussi

#nlink(<string:6_join_split_extract.strsplit>)[strsplit];, #nlink(<string:6_join_split_extract.strtok>)[strtok];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
