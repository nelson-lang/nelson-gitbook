#import "nelson_help.typ": *

= ishandle <types:ishandle>

Renvoie vrai si la variable var est un objet handle.

== Syntaxe

- #raw("res = ishandle(var)");

== Argument d'entrée

/ var: une variable

== Argument de sortie

/ res: un logique : vrai ou faux

== Description

#strong[ishandle]; renvoie 1 logique (vrai) si l'argument est un objet handle et 0 logique (faux) sinon.


== Exemple

``````matlab
A = 3;
res = ishandle(A)
``````


== Voir aussi

#nlink(<types:isa>)[isa];, #nlink(<handle:isvalid>)[isvalid];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
