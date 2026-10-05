#import "../nelson_help.typ": *

= isfinite <elementary_functions:7_indexing_dimensions.isfinite>

Recherche les éléments finis.

== Syntaxe

- #raw("tf = isfinite(M)");

== Argument d'entrée

/ M: une variable

== Argument de sortie

/ tf: logique : résultat de 'isfinite'.

== Description

#strong[isfinite]; renvoie un tableau logique qui vaut true là où les éléments de M sont des valeurs finies.


== Exemple

``````matlab
isfinite(pi)
isfinite(Inf)
isfinite(-Inf)
isfinite(int32(3))
X = sparse([1 2 NaN 3 0 Inf 0 4]);
R = isfinite(X)
``````


== Voir aussi

#nlink(<elementary_functions:7_indexing_dimensions.isnan>)[isnan];, #nlink(<elementary_functions:7_indexing_dimensions.isinf>)[isinf];, #nlink(<elementary_functions:7_indexing_dimensions.allfinite>)[allfinite];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
