#import "../nelson_help.typ": *

= strsplit <string:6_join_split_extract.strsplit>

Decoupe un vecteur de caracteres aux delimiteurs.

== Syntaxe

- #raw("R = strsplit(...)");

== Description

#strong[strsplit]; Decoupe un vecteur de caracteres aux delimiteurs.


== Exemple

``````matlab
strsplit("a,b,c", ",")
``````


== Voir aussi

#nlink(<string:6_join_split_extract.split>)[split];, #nlink(<string:6_join_split_extract.strjoin>)[strjoin];, #nlink(<string:6_join_split_extract.strtok>)[strtok];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
