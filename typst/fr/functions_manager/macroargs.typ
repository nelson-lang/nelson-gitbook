#import "nelson_help.typ": *

= macroargs <functions_manager:macroargs>

Retourne les noms des variables d'une fonction.

== Syntaxe

- #raw("[argOut, argIn] = macroarg(function_name)");

== Argument d'entrée

/ function\_name: une chaîne : nom de fonction.

== Argument de sortie

/ argOut: une cellule avec les arguments de sortie.
/ argIn: une cellule avec les arguments d'entrée.

== Description

#strong[macroargs]; retourne les variables d'entrée et de sortie utilisées par la fonction.


== Exemple

``````matlab
[out_args, in_args] = macroarg('getfield')
[out_args, in_args] = macroarg('deal')
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
