#import "nelson_help.typ": *

= mustBeScalar <validators:mustBeScalar>

Verifie que la valeur est un scalaire, sinon renvoie une erreur.

== Syntaxe

- #raw("mustBeScalar(var)");
- #raw("mustBeScalar(var, argPosition)");
- #raw("C++: void mustBeScalar(const ArrayOfVector& args, int argPosition)");

== Argument d'entrée

/ var: une variable : tous les types et classes pris en charge qui implementent isscalar.
/ argPosition: un entier positif : position de l'argument d'entree.

== Description

#strong[mustBeScalar]; verifie que la valeur est un scalaire, sinon renvoie une erreur.


== Exemple

``````matlab
mustBeScalar(true)
mustBeScalar(zeros(0, 1))
mustBeScalar([true false])
``````


== Voir aussi

#nlink(<elementary_functions:7_indexing_dimensions.isscalar>)[isscalar];, #nlink(<validators:mustBeScalarOrEmpty>)[mustBeScalarOrEmpty];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.15.0], [version initiale],
)

// Auteur: Allan CORNET
