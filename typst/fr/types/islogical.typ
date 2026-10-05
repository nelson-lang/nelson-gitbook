#import "nelson_help.typ": *

= islogical <types:islogical>

Renvoie vrai si la variable var est de type logique (logical).

== Syntaxe

- #raw("res = islogical(var)");

== Argument d'entrée

/ var: une variable

== Argument de sortie

/ res: un logique : vrai ou faux

== Description

#strong[islogical]; renvoie 1 logique (vrai) si l'argument est un tableau logique et 0 logique (faux) sinon.


== Exemples

``````matlab
A = 1;
res = islogical(A)
``````

``````matlab
B = logical(1);
res = islogical(B)
``````


== Voir aussi

#nlink(<logical:logical>)[logical];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
