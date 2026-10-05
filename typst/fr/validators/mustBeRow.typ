#import "nelson_help.typ": *

= mustBeRow <validators:mustBeRow>

Vérifie que la valeur est un vecteur ligne ou renvoie une erreur.

== Syntaxe

- #raw("mustBeRow(var)");
- #raw("mustBeRow(var, argPosition)");
- #raw("C++: void mustBeRow(const ArrayOfVector& args, int argPosition)");

== Argument d'entrée

/ var: a variable: all supported types and classes that implement isrow method.
/ argPosition: a positive integer value: Position of input argument.

== Description

#strong[mustBeRow]; vérifie que la valeur est un vecteur ligne ou renvoie une erreur.


== Exemple

``````matlab
mustBeRow([1, 1])
mustBeRow([])
mustBeRow([1; 1])
``````


== Voir aussi

#nlink(<elementary_functions:7_indexing_dimensions.isrow>)[isrow];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.10.0], [version initiale],
)

// Auteur: Allan CORNET
