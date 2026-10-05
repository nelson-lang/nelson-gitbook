#import "nelson_help.typ": *

= mustBeNonZero <validators:mustBeNonZero>

Vérifie que la valeur n'est pas zéro.

== Syntaxe

- #raw("mustBeNonZero(var)");
- #raw("mustBeNonZero(var, argPosition)");
- #raw("C++: void mustBeNonZero(const ArrayOfVector& args, int argPosition)");

== Argument d'entrée

/ var: une variable : tous les types et classes pris en charge qui implémentent eq, isnumeric et islogical.
/ argPosition: a positive integer value: Position of input argument.

== Description

#strong[mustBeNonZero]; vérifie que la valeur n'est pas zéro ou renvoie une erreur.


== Exemple

``````matlab
mustBeNonZero(1)
mustBeNonZero([])
mustBeNonZero(NaN)
mustBeNonZero(0)

``````


== Voir aussi

#nlink(<types:isempty>)[isempty];, #nlink(<operators:eq>)[eq];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
