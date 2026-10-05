#import "nelson_help.typ": *

= prod <data_analysis:prod>

Produit des éléments d'un tableau.

== Syntaxe

- #raw("R = prod(M)");
- #raw("R = prod(M, d)");
- #raw("R = prod(M, d)");
- #raw("R = prod(M, d, t)");
- #raw("R = prod(M, d, t, f)");

== Argument d'entrée

/ M: un tableau de double, single, entiers, ...
/ d: dimension le long de laquelle opérer : entier positif scalaire.
/ t: une chaîne : 'default', 'double' ou 'native'.
/ f: une chaîne : 'includenan' ou 'omitnan'.

== Argument de sortie

/ R: Produit des éléments du tableau.

== Description

#strong[R \= prod(M)]; renvoie le produit des éléments du tableau M.


== Exemple

``````matlab
M = uint8([10:30:70;20:30:80;30:30:90]);
R = prod(M, 'native')
``````


== Voir aussi

#nlink(<elementary_functions:7_indexing_dimensions.ndims>)[ndims];, #nlink(<data_analysis:sum>)[sum];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
