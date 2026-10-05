#import "nelson_help.typ": *

= mustBeNonnegative <validators:mustBeNonnegative>

Vérifie qu'une valeur est non négative, sinon émet une erreur.

== Syntaxe

- #raw("mustBeNonnegative(var)");
- #raw("mustBeNonnegative(var, argPosition)");
- #raw("C++: void mustBeNonnegative(const ArrayOfVector& args, int argPosition)");

== Argument d'entrée

/ var: une variable : tous les types et classes pris en charge qui implémentent isnumeric, islogical, all, isreal et la méthode ge (\>\=).
/ argPosition: un entier positif : position de l'argument d'entrée.

== Description

#strong[mustBeNonnegative]; vérifie que la valeur est non négative ou renvoie une erreur.


== Exemple

``````matlab
mustBeNonnegative(1)
mustBeNonnegative(-1)
``````


== Voir aussi

#nlink(<validators:mustBePositive>)[mustBePositive];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
