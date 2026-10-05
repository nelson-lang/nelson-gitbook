#import "nelson_help.typ": *

= mustBeVector <validators:mustBeVector>

Vérifie que la valeur est un vecteur ou renvoie une erreur.

== Syntaxe

- #raw("mustBeVector(var)");
- #raw("mustBeVector(var, 'allow-all-empties')");
- #raw("mustBeVector(var, argPosition)");
- #raw("mustBeVector(var, 'allow-all-empties', argPosition)");
- #raw("C++: void mustBeVector(const ArrayOfVector& args, bool allowsAllEmpties, int argPosition)");

== Argument d'entrée

/ var: une variable : tous les types et classes pris en charge qui implémentent la méthode isvector.
/ argPosition: a positive integer value: Position of input argument.

== Description

#strong[mustBeVector]; vérifie que la valeur est un vecteur ou renvoie une erreur.


== Exemple

``````matlab
mustBeVector(true)
mustBeVector([1 2])
mustBeVector([])
mustBeVector([], 'allows-all-empties')
``````


== Voir aussi

#nlink(<elementary_functions:7_indexing_dimensions.isvector>)[isvector];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
