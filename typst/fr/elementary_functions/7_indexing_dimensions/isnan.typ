#import "../nelson_help.typ": *

= isnan <elementary_functions:7_indexing_dimensions.isnan>

Recherche les éléments Not a Number.

== Syntaxe

- #raw("tf = isnan(M)");

== Argument d'entrée

/ M: une variable

== Argument de sortie

/ tf: logique : résultat de 'isnan'.

== Description

#strong[isnan]; renvoie un tableau logique qui vaut true là où les éléments de M sont des valeurs "Not a Number".


== Exemple

``````matlab
isnan(pi)
isnan(NaN)
isnan(int32(3))
X = sparse([1 2 NaN 3 0 NaN 0 4]);
R = isnan(X)
``````


== Voir aussi

#nlink(<elementary_functions:7_indexing_dimensions.isinf>)[isinf];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
