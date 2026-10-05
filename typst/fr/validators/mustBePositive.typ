#import "nelson_help.typ": *

= mustBePositive <validators:mustBePositive>

Vérifie que la valeur est positive ou renvoie une erreur.

== Syntaxe

- #raw("mustBePositive(var)");
- #raw("mustBePositive(var, argPosition)");
- #raw("C++: void mustBePositive(const ArrayOfVector& args, int argPosition)");

== Argument d'entrée

/ var: a variable: all supported types and classes that implement isnumeric, islogical, all, isreal, and gt methods.
/ argPosition: a positive integer value: Position of input argument.

== Description

#strong[mustBePositive]; vérifie que la valeur est positive ou renvoie une erreur.


== Exemple

``````matlab
mustBePositive(1)
mustBePositive(-1)
``````


== Voir aussi

#nlink(<validators:mustBeNonnegative>)[mustBeNonnegative];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
