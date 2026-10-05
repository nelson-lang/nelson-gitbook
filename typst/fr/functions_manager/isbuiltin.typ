#import "nelson_help.typ": *

= isbuiltin <functions_manager:isbuiltin>

Vérifie l'existence d'une fonction intégrée.

== Syntaxe

- #raw("tf = isbuiltin(name)");

== Argument d'entrée

/ name: une chaîne : nom de fonction intégrée.

== Argument de sortie

/ tf: un booléen : vrai si la fonction intégrée existe.

== Description

#strong[isbuiltin]; vérifie l'existence d'une fonction intégrée.


== Exemple

``````matlab
isbuiltin('isbuiltin')
isbuiltin('exist')
ismacro('exist')
``````


== Voir aussi

#nlink(<functions_manager:ismacro>)[ismacro];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
