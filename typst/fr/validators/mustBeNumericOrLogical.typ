#import "nelson_help.typ": *

= mustBeNumericOrLogical <validators:mustBeNumericOrLogical>

Vérifie que la valeur est numérique ou logique ou renvoie une erreur.

== Syntaxe

- #raw("mustBeNumericOrLogical(var)");
- #raw("mustBeNumericOrLogical(var, argPosition)");
- #raw("C++: void mustBeNumericOrLogical(const ArrayOfVector& args, int argPosition)");

== Argument d'entrée

/ var: une variable.
/ argPosition: un entier positif : position de l'argument d'entrée.

== Description

#strong[mustBeNumericOrLogical]; vérifie que la valeur est numérique ou logique ou renvoie une erreur.


== Exemple

``````matlab
mustBeNumericOrLogical(1)
mustBeNumericOrLogical([])
mustBeNumericOrLogical({1})
``````


== Voir aussi

#nlink(<types:isnumeric>)[isnumeric];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
