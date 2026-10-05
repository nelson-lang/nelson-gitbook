#import "../nelson_help.typ": *

= deblank <string:7_edit_text.deblank>

Supprime les espaces en fin de chaîne.

== Syntaxe

- #raw("res = deblank(str)");

== Argument d'entrée

/ str: une chaîne, une cellule de chaînes ou un tableau de chaînes.

== Argument de sortie

/ res: une chaîne sans espaces en fin.

== Description

#strong[deblank]; enlève les espaces en fin de chaîne.

 #strong[deblank]; ne supprime pas tous les espaces significatifs (seuls les caractères ' \\t\\n\\r\\f\\v' sont supprimés).


== Exemples

``````matlab
deblank(' Nel Son ')
``````

``````matlab
deblank(" Nel Son ")
``````

``````matlab
deblank([' Nel Son ', char(160)])
``````


== Voir aussi

#nlink(<string:7_edit_text.strtrim>)[strtrim];, #nlink(<string:7_edit_text.toupper>)[toupper];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
