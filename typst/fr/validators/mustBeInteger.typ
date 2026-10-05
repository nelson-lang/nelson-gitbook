#import "nelson_help.typ": *

= mustBeInteger <validators:mustBeInteger>

Vérifie que la valeur est entière ou renvoie une erreur.

== Syntaxe

- #raw("mustBeInteger(var)");
- #raw("mustBeInteger(var, argPosition)");
- #raw("C++: void mustBeInteger(const ArrayOfVector& args, int argPosition)");

== Argument d'entrée

/ var: une variable : tous les types et classes pris en charge qui implémentent isnumeric, islogical, all, isreal, eq et floor.
/ argPosition: un entier positif : position de l'argument d'entrée.

== Description

#strong[mustBeInteger]; vérifie que la valeur est entière ou renvoie une erreur.


== Exemple

``````matlab
mustBeInteger(-1)
mustBeInteger(Inf)
``````


== Voir aussi

#nlink(<validators:mustBeNumeric>)[mustBeNumeric];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
