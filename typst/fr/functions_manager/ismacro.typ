#import "nelson_help.typ": *

= ismacro <functions_manager:ismacro>

Vérifie l'existence d'une macro (fonction).

== Syntaxe

- #raw("tf = ismacro(name)");

== Argument d'entrée

/ name: une chaîne : nom de macro.

== Argument de sortie

/ tf: un booléen : vrai si la macro existe.

== Description

#strong[ismacro]; vérifie l'existence d'une macro.


== Exemple

``````matlab
ismacro('isbuiltin')
ismacro('exist')
``````


== Voir aussi

#nlink(<functions_manager:isbuiltin>)[isbuiltin];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
