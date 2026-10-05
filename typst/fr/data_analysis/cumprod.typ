#import "nelson_help.typ": *

= cumprod <data_analysis:cumprod>

Produit cumulatif des éléments d'un tableau.

== Syntaxe

- #raw("R = cumprod(M)");
- #raw("R = cumprod(M, d)");
- #raw("R = cumprod(M, d, direction)");
- #raw("R = cumprod(M, d, direction, nanflag)");

== Argument d'entrée

/ M: un tableau de double, single, entiers, ...
/ d: dimension le long de laquelle opérer : entier positif scalaire.
/ direction: une chaîne : 'reverse', 'forward' (par défaut).
/ nanflag: une chaîne : 'includenan' (par défaut) ou 'omitnan'.

== Argument de sortie

/ R: Produit cumulatif des éléments du tableau.

== Description

#strong[R \= cumprod(M)]; renvoie le produit cumulatif des éléments du tableau M.


== Exemple

``````matlab
M = uint8([10:30:70;20:30:80;30:30:90]);
R = cumprod(M)
R = cumprod(M, 'reverse')
``````


== Voir aussi

#nlink(<elementary_functions:7_indexing_dimensions.ndims>)[ndims];, #nlink(<data_analysis:prod>)[prod];, #nlink(<data_analysis:cumsum>)[cumsum];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
