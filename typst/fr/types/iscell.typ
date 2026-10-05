#import "nelson_help.typ": *

= iscell <types:iscell>

Renvoie vrai si la variable var est un tableau de cellules.

== Syntaxe

- #raw("res = iscell(var)");

== Argument d'entrée

/ var: une variable

== Argument de sortie

/ res: un logique : vrai ou faux

== Description

#strong[iscell]; renvoie 1 logique (vrai) si l'argument est un tableau de cellules et 0 logique (faux) sinon.


== Exemples

``````matlab
A = 3;
res = iscell(A)
``````

``````matlab
B = {'NelSon', 3, true};
res = iscell(B)
``````


== Voir aussi

#nlink(<types:class>)[class];, #nlink(<types:isstruct>)[isstruct];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
