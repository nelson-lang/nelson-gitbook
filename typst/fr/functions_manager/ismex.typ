#import "nelson_help.typ": *

= ismex <functions_manager:ismex>

Vérifie l'existence d'une fonction mex.

== Syntaxe

- #raw("tf = ismex(name)");

== Argument d'entrée

/ name: une chaîne : nom de fonction mex.

== Argument de sortie

/ tf: un booléen : vrai si la fonction mex existe.

== Description

#strong[ismex]; vérifie l'existence d'une fonction mex.


== Exemple

``````matlab
ismex('isbuiltin')
ismex('exist')
ismex('exist')
``````


== Voir aussi

#nlink(<functions_manager:isbuiltin>)[isbuiltin];, #nlink(<functions_manager:ismacro>)[ismacro];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
