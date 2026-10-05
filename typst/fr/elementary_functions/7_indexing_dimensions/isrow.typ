#import "../nelson_help.typ": *

= isrow <elementary_functions:7_indexing_dimensions.isrow>

Déterminer si l'entrée est un vecteur ligne.

== Syntaxe

- #raw("tf = isrow(V)");

== Argument d'entrée

/ V: une variable

== Argument de sortie

/ tf: booléen : résultat de 'isrow'.

== Description

#strong[isrow(V)]; renvoie #strong[true]; si size(V) renvoie \[1, n\] avec un entier non négatif n, et #strong[false]; sinon.


== Exemple

``````matlab
isrow([1:4])
isrow([1:4]')
``````


== Voir aussi

#nlink(<elementary_functions:7_indexing_dimensions.iscolumn>)[iscolumn];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
