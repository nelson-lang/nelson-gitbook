#import "nelson_help.typ": *

= rescale <data_analysis:rescale>

Met à l'échelle les éléments dans un intervalle fixé.

== Syntaxe

- #raw("Y = rescale(X)");
- #raw("Y = rescale(X, a, b)");
- #raw("Y = rescale(..., 'InputMin', lo, 'InputMax', hi)");

== Argument d'entrée

/ X: un tableau numérique.
/ a, b: les bornes de l'intervalle de sortie (par défaut #strong[0]; et #strong[1];).
/ lo, hi: limites d'entrée optionnelles associées à #strong[a]; et #strong[b];.

== Argument de sortie

/ Y: le tableau mis à l'échelle, de même taille que #strong[X];.

== Description

#strong[Y \= rescale(X)]; met les éléments de #strong[X]; à l'échelle sur l'intervalle #strong[\[0, 1\]];.

 #strong[Y \= rescale(X, a, b)]; met les éléments à l'échelle sur l'intervalle #strong[\[a, b\]];.


== Exemple

``````matlab
Y = rescale([1 2 3 4 5])
Z = rescale([1 2 3 4 5], 0, 10)
``````


== Voir aussi

#nlink(<data_analysis:bounds>)[bounds];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
