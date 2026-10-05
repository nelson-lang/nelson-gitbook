#import "nelson_help.typ": *

= mustBeFloat <validators:mustBeFloat>

Vérifie que la valeur est en virgule flottante ou renvoie une erreur.

== Syntaxe

- #raw("mustBeFloat(var)");
- #raw("mustBeFloat(var, argPosition)");
- #raw("C++: void mustBeFloat(const ArrayOfVector& args, int argPosition)");

== Argument d'entrée

/ var: une variable : tous les types et classes pris en charge qui implémentent la méthode isfloat.
/ argPosition: un entier positif : position de l'argument d'entrée.

== Description

#strong[mustBeFloat]; vérifie que la valeur est en virgule flottante (single ou double) ou renvoie une erreur.


== Exemple

``````matlab
mustBeFloat(true)
mustBeFloat([])
mustBeFloat(single([true false]))
``````


== Voir aussi

#nlink(<types:isfloat>)[isfloat];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
