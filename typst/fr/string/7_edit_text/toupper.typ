#import "../nelson_help.typ": *

= toupper <string:7_edit_text.toupper>

Conversion en majuscules.

== Syntaxe

- #raw("res = toupper(str)");

== Argument d'entrée

/ str: un tableau de caractères (ligne), une cellule de chaînes ou un tableau de chaînes.

== Argument de sortie

/ res: une chaîne en majuscules

== Description

#strong[toupper]; convertit une chaîne en majuscules.
== Exemples

``````matlab
toupper('NelSon')
``````

``````matlab
upper(["NelSon", "is", "open"])
``````


== Voir aussi

#nlink(<string:7_edit_text.tolower>)[tolower];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
