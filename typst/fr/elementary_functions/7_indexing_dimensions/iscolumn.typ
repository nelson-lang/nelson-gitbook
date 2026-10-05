#import "../nelson_help.typ": *

= iscolumn <elementary_functions:7_indexing_dimensions.iscolumn>

Déterminer si l'entrée est un vecteur colonne.

== Syntaxe

- #raw("tf = iscolumn(V)");

== Argument d'entrée

/ V: une variable

== Argument de sortie

/ tf: booléen : résultat de 'iscolumn'.

== Description

#strong[iscolumn(V)]; renvoie #strong[true]; si size(V) renvoie \[n, 1\] avec un entier non négatif n, et #strong[false]; sinon.


== Exemple

``````matlab
iscolumn([1:4])
iscolumn([1:4]')
``````


== Voir aussi

#nlink(<elementary_functions:7_indexing_dimensions.isrow>)[isrow];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
