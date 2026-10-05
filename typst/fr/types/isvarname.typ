#import "nelson_help.typ": *

= isvarname <types:isvarname>

Renvoie vrai si l'entrée est un nom de variable valide.

== Syntaxe

- #raw("res = isvarname(var)");

== Argument d'entrée

/ var: une variable

== Argument de sortie

/ res: un logique : vrai ou faux

== Description

#strong[isvarname]; renvoie 1 logique si l'argument est un nom de variable valide et 0 logique sinon.
== Exemple

``````matlab
isvarname(4)
isvarname('t')
isvarname('8t')
isvarname('t8t')
``````


== Voir aussi

#nlink(<types:ischar>)[ischar];, #nlink(<core:namelengthmax>)[namelengthmax];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
