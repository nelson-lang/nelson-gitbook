#import "../nelson_help.typ": *

= splitlines <string:6_join_split_extract.splitlines>

Decoupe le texte aux sauts de ligne.

== Syntaxe

- #raw("R = splitlines(...)");

== Description

#strong[splitlines]; Decoupe le texte aux sauts de ligne.


== Exemple

``````matlab
splitlines("a" + newline + "b")
``````


== Voir aussi

#nlink(<string:6_join_split_extract.split>)[split];, #nlink(<string:1_create_convert_text.newline>)[newline];, #nlink(<string:6_join_split_extract.strsplit>)[strsplit];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
