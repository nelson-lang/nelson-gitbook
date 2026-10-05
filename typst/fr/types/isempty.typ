#import "nelson_help.typ": *

= isempty <types:isempty>

Renvoie vrai si la variable var est une matrice vide.

== Syntaxe

- #raw("res = isempty(var)");

== Argument d'entrée

/ var: une variable

== Argument de sortie

/ res: un logique : vrai ou faux

== Description

#strong[isempty]; renvoie vrai (1 logique) si l'argument est une matrice vide.

 Au moins une de ses dimensions est nulle.


== Exemples

``````matlab
A = rand(3, 3, 3);
res = isempty(A)
A(:, :, :) = [];
res = isempty(A)

``````

``````matlab
B = {};
res = isempty(B)
C = struct()
res = isempty(C)
C = struct([])
res = isempty(C)
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
