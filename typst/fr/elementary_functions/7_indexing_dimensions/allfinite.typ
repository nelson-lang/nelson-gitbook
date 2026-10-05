#import "../nelson_help.typ": *

= allfinite <elementary_functions:7_indexing_dimensions.allfinite>

Vérifie si tous les éléments du tableau sont finis.

== Syntaxe

- #raw("tf = allfinite(M)");

== Argument d'entrée

/ M: une variable

== Argument de sortie

/ tf: logique : résultat de 'allfinite'.

== Description

#strong[allfinite]; renvoie un scalaire logique valant vrai si tous les éléments de M sont des valeurs finies.


== Exemple

``````matlab
X = sparse([1 2 NaN 3 0 Inf 0 4]);
R = allfinite(X)
R2 = isfinite(X)
``````


== Voir aussi

#nlink(<elementary_functions:7_indexing_dimensions.isfinite>)[isfinite];, #nlink(<elementary_functions:7_indexing_dimensions.isnan>)[isnan];, #nlink(<operators:all>)[all];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.6.0], [version initiale],
)

// Auteur: Allan CORNET
