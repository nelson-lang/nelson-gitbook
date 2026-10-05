#import "nelson_help.typ": *

= mustBeVectorOrEmpty <validators:mustBeVectorOrEmpty>

Verifie que la valeur est un vecteur ou vide, sinon renvoie une erreur.

== Syntaxe

- #raw("mustBeVectorOrEmpty(var)");
- #raw("mustBeVectorOrEmpty(var, argPosition)");
- #raw("C++: void mustBeVectorOrEmpty(const ArrayOfVector& args, int argPosition)");

== Argument d'entrée

/ var: une variable : tous les types et classes pris en charge qui implementent isvector et isempty.
/ argPosition: un entier positif : position de l'argument d'entree.

== Description

#strong[mustBeVectorOrEmpty]; verifie que la valeur est un vecteur ou vide, sinon renvoie une erreur.


== Exemple

``````matlab
mustBeVectorOrEmpty([1 2])
mustBeVectorOrEmpty(zeros(0, 3))
mustBeVectorOrEmpty(ones(2))
``````


== Voir aussi

#nlink(<elementary_functions:7_indexing_dimensions.isvector>)[isvector];, #nlink(<types:isempty>)[isempty];, #nlink(<validators:mustBeVector>)[mustBeVector];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.15.0], [version initiale],
)

// Auteur: Allan CORNET
