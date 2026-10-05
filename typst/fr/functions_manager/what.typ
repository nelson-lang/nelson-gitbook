#import "nelson_help.typ": *

= what <functions_manager:what>

Obtient la liste des fonctions intégrées et macros de Nelson.

== Syntaxe

- #raw("list_builtin = what()");
- #raw("[list_builtin, list_macro] = what()");

== Argument de sortie

/ list\_builtin: une cellule de chaînes
/ list\_macro: une cellule de chaînes

== Description

#strong[what]; retourne la liste de toutes les fonctions intégrées et macros disponibles dans la session Nelson actuelle.


== Exemple

``````matlab
l = what()
[l, m] = what()
``````


== Voir aussi

#nlink(<functions_manager:which>)[which];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
