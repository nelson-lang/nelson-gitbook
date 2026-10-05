#import "nelson_help.typ": *

= mustBeColumn <validators:mustBeColumn>

Vérifie que la valeur est un vecteur colonne ou renvoie une erreur.

== Syntaxe

- #raw("mustBeColumn(var)");
- #raw("mustBeColumn(var, argPosition)");
- #raw("C++: void mustBeColumn(const ArrayOfVector& args, int argPosition)");

== Argument d'entrée

/ var: une variable : tous les types et classes pris en charge qui implémentent la méthode iscolumn.
/ argPosition: un entier positif : position de l'argument d'entrée.

== Description

#strong[mustBeColumn]; vérifie que la valeur est un vecteur colonne ou renvoie une erreur.


== Exemple

``````matlab
mustBeColumn(true)
mustBeColumn([])
mustBeColumn(ones(3, 2, 4))
``````


== Voir aussi

#nlink(<elementary_functions:7_indexing_dimensions.iscolumn>)[iscolumn];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.10.0], [version initiale],
)

// Auteur: Allan CORNET
