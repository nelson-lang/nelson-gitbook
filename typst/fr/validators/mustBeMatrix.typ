#import "nelson_help.typ": *

= mustBeMatrix <validators:mustBeMatrix>

Vérifie que la valeur est une matrice ou renvoie une erreur.

== Syntaxe

- #raw("mustBeMatrix(var)");
- #raw("mustBeMatrix(var, argPosition)");
- #raw("C++: void mustBeMatrix(const ArrayOfVector& args, int argPosition)");

== Argument d'entrée

/ var: une variable : tous les types et classes pris en charge qui implémentent la méthode ismatrix.
/ argPosition: a positive integer value: Position of input argument.

== Description

#strong[mustBeMatrix]; vérifie que la valeur est une matrice ou renvoie une erreur.


== Exemple

``````matlab
mustBeMatrix(true)
mustBeMatrix([])
mustBeMatrix(ones(3, 2, 4))
``````


== Voir aussi

#nlink(<elementary_functions:7_indexing_dimensions.ismatrix>)[ismatrix];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.10.0], [version initiale],
)

// Auteur: Allan CORNET
