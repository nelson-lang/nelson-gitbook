#import "../nelson_help.typ": *

= pad <string:7_edit_text.pad>

Complete le texte jusqu'a la largeur demandee.

== Syntaxe

- #raw("R = pad(...)");

== Description

#strong[pad]; Complete le texte jusqu'a la largeur demandee.


== Exemple

``````matlab
pad(["Mary"; "Elizabeth"], "left")
``````


== Voir aussi

#nlink(<string:1_create_convert_text.blanks>)[blanks];, #nlink(<string:7_edit_text.strtrim>)[strtrim];, #nlink(<string:7_edit_text.strjust>)[strjust];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
