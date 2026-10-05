#import "nelson_help.typ": *

= mustBeSparse <validators:mustBeSparse>

Vérifie que la valeur est une matrice creuse (sparse) ou renvoie une erreur.

== Syntaxe

- #raw("mustBeSparse(var)");
- #raw("mustBeSparse(var, argPosition)");
- #raw("C++: void mustBeSparse(const ArrayOfVector& args, int argPosition)");

== Argument d'entrée

/ var: une variable : tous les types et classes pris en charge qui implémentent la méthode issparse.
/ argPosition: a positive integer value: Position of input argument.

== Description

#strong[mustBeSparse]; vérifie que la valeur est une matrice creuse (sparse) ou renvoie une erreur.


== Exemple

``````matlab
mustBeSparse(true)
mustBeSparse(eye(3, 4))
mustBeSparse(sparse(eye(3, 4)))
``````


== Voir aussi

#nlink(<types:issparse>)[issparse];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.11.0], [version initiale],
)

// Auteur: Allan CORNET
