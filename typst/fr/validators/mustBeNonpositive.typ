#import "nelson_help.typ": *

= mustBeNonpositive <validators:mustBeNonpositive>

Vérifie que la valeur est non positive ou renvoie une erreur.

== Syntaxe

- #raw("mustBeNonpositive(var)");
- #raw("mustBeNonpositive(var, argPosition)");
- #raw("C++: void mustBeNonpositive(const ArrayOfVector& args, int argPosition)");

== Argument d'entrée

/ var: une variable : tous les types et classes pris en charge qui implémentent isnumeric, islogical, all, isreal et la méthode le (\<\=).
/ argPosition: un entier positif : position de l'argument d'entrée.

== Description

#strong[mustBeNonpositive]; vérifie que la valeur est non positive ou renvoie une erreur.


== Exemple

``````matlab
mustBeNonpositive(-1)
mustBeNonpositive(1)
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
