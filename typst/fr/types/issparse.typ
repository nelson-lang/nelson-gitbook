#import "nelson_help.typ": *

= issparse <types:issparse>

Renvoie vrai si la variable var est un tableau creux (sparse).

== Syntaxe

- #raw("res = issparse(var)");

== Argument d'entrée

/ var: une variable

== Argument de sortie

/ res: un logique : vrai ou faux

== Description

#strong[issparse]; renvoie 1 logique (vrai) si l'argument est un tableau creux et 0 logique (faux) sinon.

 Le test porte sur le stockage sparse, pas sur la classe des valeurs. Les tableaux sparse double, single, logiques, double complexes et single complexes retournent tous vrai.

 Les tableaux pleins retournent faux meme lorsqu'ils contiennent principalement des valeurs nulles.


== Exemples

``````matlab
A = 1;
res = issparse(A)
``````

``````matlab
B = sparse(1);
res = issparse(B)
``````

``````matlab
S = sparse(single([1 + 2i 0; 0 0]));
res = issparse(S)
``````


== Voir aussi

#nlink(<sparse:sparse>)[sparse];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [comportement sparse single et single complexe documente],
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
