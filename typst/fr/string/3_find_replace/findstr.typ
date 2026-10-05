#import "../nelson_help.typ": *

= findstr <string:3_find_replace.findstr>

Recherche un vecteur de caracteres dans un autre.

== Syntaxe

- #raw("R = findstr(...)");

== Description

#strong[findstr]; Recherche un vecteur de caracteres dans un autre.


== Exemple

``````matlab
findstr("hello", "l")
``````


== Voir aussi

#nlink(<string:3_find_replace.strfind>)[strfind];, #nlink(<string:3_find_replace.contains>)[contains];, #nlink(<string:8_compare_text.strcmp>)[strcmp];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
