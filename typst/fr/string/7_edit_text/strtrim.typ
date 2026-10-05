#import "../nelson_help.typ": *

= strtrim <string:7_edit_text.strtrim>

Supprime les espaces en début et fin de chaîne.

== Syntaxe

- #raw("res = strtrim(str)");

== Argument d'entrée

/ str: une chaîne, une cellule de chaînes ou un tableau de chaînes.

== Argument de sortie

/ res: une chaîne sans espaces en début ou en fin.

== Description

#strong[strtrim]; supprime les espaces en début et en fin de chaîne.

 #strong[strtrim]; ne supprime pas tous les espaces significatifs (seuls les caractères ' \\t\\n\\r\\f\\v' sont supprimés).


== Exemples

``````matlab
strtrim(' Nel Son')
``````

``````matlab
strtrim(" Nel Son")
``````

``````matlab
strtrim([' Nel Son', char(160)])
``````


== Voir aussi

#nlink(<string:7_edit_text.deblank>)[deblank];, #nlink(<string:7_edit_text.toupper>)[toupper];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
