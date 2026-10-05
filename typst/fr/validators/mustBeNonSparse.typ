#import "nelson_help.typ": *

= mustBeNonSparse <validators:mustBeNonSparse>

Vérifie que la valeur n'est pas creuse (sparse).

== Syntaxe

- #raw("mustBeNonSparse(var)");
- #raw("mustBeNonSparse(var, argPosition)");
- #raw("C++: void mustBeNonSparse(const ArrayOfVector& args, int argPosition)");

== Argument d'entrée

/ var: une variable : tous les types et classes pris en charge qui implémentent la méthode issparse.
/ argPosition: un entier positif : position de l'argument d'entrée.

== Description

#strong[mustBeNonSparse]; vérifie que la valeur n'est pas creuse (sparse) ou renvoie une erreur.


== Exemple

``````matlab
mustBeNonSparse(1)
mustBeNonSparse([])
mustBeNonSparse(sparse(3))

``````


== Voir aussi

#nlink(<types:issparse>)[issparse];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
