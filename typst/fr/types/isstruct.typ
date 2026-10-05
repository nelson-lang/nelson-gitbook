#import "nelson_help.typ": *

= isstruct <types:isstruct>

Renvoie vrai si la variable var est une structure.

== Syntaxe

- #raw("res = isstruct(var)");

== Argument d'entrée

/ var: une variable

== Argument de sortie

/ res: un logique : vrai ou faux

== Description

#strong[isstruct]; renvoie 1 logique (vrai) si l'argument est une struct (structure) et 0 logique (faux) sinon.
== Exemples

``````matlab
A = 1;
res = isstruct(A)
``````

``````matlab
B = struct();
res = isstruct(B)
``````

``````matlab
C.a = 1;
C.B = 'hello';
res = isstruct(C)
``````


== Voir aussi

#nlink(<types:isa>)[isa];, #nlink(<data_structures:struct>)[struct];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
