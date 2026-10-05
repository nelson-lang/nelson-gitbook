#import "../nelson_help.typ": *

= tolower <string:7_edit_text.tolower>

Conversion en minuscules.

== Syntaxe

- #raw("res = tolower(str)");

== Argument d'entrée

/ str: un tableau de caractères (ligne), une cellule de chaînes ou un tableau de chaînes.

== Argument de sortie

/ res: équivalent en minuscules

== Description

#strong[tolower]; convertit une chaîne en minuscules.


== Exemples

``````matlab
tolower('NelSon')
``````

``````matlab
tolower(["NelSon", "is", "open"])
``````


== Voir aussi

#nlink(<string:7_edit_text.toupper>)[toupper];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
