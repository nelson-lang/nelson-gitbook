#import "nelson_help.typ": *

= isvar <memory_manager:isvar>

Vérifie l'existence d'une variable.

== Syntaxe

- #raw("tf = isvar(varname)");
- #raw("tf = isvar(scope, varname)");

== Argument d'entrée

/ scope: une chaîne : 'global', 'base', 'caller', 'local'.
/ varname: une chaîne : nom de la variable.

== Argument de sortie

/ tf: un booléen : vrai si la variable existe.

== Description

#strong[isvar]; vérifie l'existence d'une variable.


== Exemple

``````matlab
isvar('A')
A = 3
isvar('A')
isvar('global','B')
global B
isvar('global','B')
``````


== Voir aussi

#nlink(<core:exist>)[exist];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
