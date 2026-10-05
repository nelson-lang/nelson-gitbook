#import "nelson_help.typ": *

= cumsum <data_analysis:cumsum>

Somme cumulative des éléments d'un tableau.

== Syntaxe

- #raw("R = cumsum(M)");
- #raw("R = cumsum(M, d)");
- #raw("R = cumsum(M, d, direction)");
- #raw("R = cumsum(M, d, direction, nanflag)");

== Argument d'entrée

/ M: un tableau de double, single, entiers, ...
/ d: dimension le long de laquelle opérer : entier positif scalaire.
/ direction: une chaîne : 'reverse', 'forward' (par défaut).
/ nanflag: une chaîne : 'includenan' (par défaut) ou 'omitnan'.

== Argument de sortie

/ R: Somme cumulative des éléments du tableau.

== Description

#strong[R \= cumsum(M)]; renvoie la somme cumulative des éléments du tableau M.


== Exemple

``````matlab
M = uint8([10:30:70;20:30:80;30:30:90]);
R = cumsum(M)
R = cumsum(M, 'reverse')
``````


== Voir aussi

#nlink(<elementary_functions:7_indexing_dimensions.ndims>)[ndims];, #nlink(<data_analysis:sum>)[sum];, #nlink(<data_analysis:cumprod>)[cumprod];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
