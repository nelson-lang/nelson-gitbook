#import "../nelson_help.typ": *

= strjoin <string:6_join_split_extract.strjoin>

Joint le texte avec un delimiteur.

== Syntaxe

- #raw("R = strjoin(...)");

== Description

#strong[strjoin]; Joint le texte avec un delimiteur.


== Exemple

``````matlab
strjoin(["a", "b", "c"], ",")
``````


== Voir aussi

#nlink(<string:6_join_split_extract.join>)[join];, #nlink(<string:6_join_split_extract.strsplit>)[strsplit];, #nlink(<string:1_create_convert_text.strcat>)[strcat];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
