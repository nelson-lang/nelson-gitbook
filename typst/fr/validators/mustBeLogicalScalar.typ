#import "nelson_help.typ": *

= mustBeLogicalScalar <validators:mustBeLogicalScalar>

Vérifie que la valeur est un scalaire logique ou renvoie une erreur.

== Syntaxe

- #raw("mustBeLogicalScalar(var)");
- #raw("mustBeLogicalScalar(var, argPosition)");
- #raw("C++: void mustBeLogicalScalar(const ArrayOfVector& args, int argPosition)");

== Argument d'entrée

/ var: une variable : tous les types et classes pris en charge qui implémentent islogical et isscalar.
/ argPosition: un entier positif : position de l'argument d'entrée.

== Description

#strong[mustBeLogicalScalar]; vérifie que la valeur est un scalaire logique ou renvoie une erreur.


== Exemple

``````matlab
mustBeLogicalScalar(true)
mustBeLogicalScalar([])
mustBeLogicalScalar([true false])
``````


== Voir aussi

#nlink(<elementary_functions:7_indexing_dimensions.isscalar>)[isscalar];, #nlink(<types:islogical>)[islogical];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
