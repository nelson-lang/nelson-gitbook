#import "../nelson_help.typ": *

= isinf <elementary_functions:7_indexing_dimensions.isinf>

Recherche les éléments infinis.

== Syntaxe

- #raw("tf = isinf(M)");

== Argument d'entrée

/ M: une variable

== Argument de sortie

/ tf: logique : résultat de 'isinf'.

== Description

#strong[isinf]; renvoie un tableau logique qui vaut true là où les éléments de M sont des valeurs infinies.


== Exemple

``````matlab
isnan(pi)
isinf(Inf)
isinf(-Inf)
isinf(int32(3))
X = sparse([1 2 NaN 3 0 Inf 0 4]);
R = isinf(X)
``````


== Voir aussi

#nlink(<elementary_functions:7_indexing_dimensions.isnan>)[isnan];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
