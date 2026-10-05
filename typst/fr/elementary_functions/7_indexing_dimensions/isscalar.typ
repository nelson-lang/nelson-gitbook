#import "../nelson_help.typ": *

= isscalar <elementary_functions:7_indexing_dimensions.isscalar>

Tester si l'entrée est un scalaire

== Syntaxe

- #raw("TF = iscalar(A)");

== Argument d'entrée

/ A: une variable

== Argument de sortie

/ res: résultat booléen

== Description

#strong[isscalar]; renvoie #strong[TRUE]; si l'entrée est un scalaire.


== Exemple

``````matlab
x = [1+i, -i ; i, 2i];
isscalar(x)
isscalar(1)
``````


== Voir aussi

#nlink(<elementary_functions:7_indexing_dimensions.isvector>)[isvector];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.10.0], [version initiale],
)

// Auteur: Allan CORNET
