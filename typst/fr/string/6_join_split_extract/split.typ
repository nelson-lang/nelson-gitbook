#import "../nelson_help.typ": *

= split <string:6_join_split_extract.split>

Decoupe le texte aux delimiteurs.

== Syntaxe

- #raw("R = split(...)");

== Description

#strong[split]; Decoupe le texte aux delimiteurs.


== Exemple

``````matlab
split("a,b,c", ",")
``````


== Voir aussi

#nlink(<string:6_join_split_extract.splitlines>)[splitlines];, #nlink(<string:6_join_split_extract.strsplit>)[strsplit];, #nlink(<string:6_join_split_extract.join>)[join];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
