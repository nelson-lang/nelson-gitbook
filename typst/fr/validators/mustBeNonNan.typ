#import "nelson_help.typ": *

= mustBeNonNan <validators:mustBeNonNan>

Vérifie que la valeur n'est pas NaN.

== Syntaxe

- #raw("mustBeNonNan(var)");
- #raw("mustBeNonNan(var, argPosition)");
- #raw("C++: void mustBeNonNan(const ArrayOfVector& args, int argPosition)");

== Argument d'entrée

/ var: une variable : tous les types et classes pris en charge qui implémentent la méthode isnan.
/ argPosition: un entier positif : position de l'argument d'entrée.

== Description

#strong[mustBeNonNan]; vérifie que la valeur n'est pas NaN ou renvoie une erreur.


== Exemple

``````matlab
mustBeNonNan(1)
mustBeNonNan([])
mustBeNonNan(NaN)

``````


== Voir aussi

#nlink(<types:isempty>)[isempty];, #nlink(<elementary_functions:7_indexing_dimensions.isnan>)[isnan];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
