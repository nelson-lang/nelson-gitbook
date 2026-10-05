#import "nelson_help.typ": *

= mustBeScalarOrEmpty <validators:mustBeScalarOrEmpty>

Vérifie que la valeur est scalaire ou vide, sinon renvoie une erreur.

== Syntaxe

- #raw("mustBeScalarOrEmpty(var)");
- #raw("mustBeScalarOrEmpty(var, argPosition)");
- #raw("C++: void mustBeScalarOrEmpty(const ArrayOfVector& args, int argPosition)");

== Argument d'entrée

/ var: une variable : tous les types et classes pris en charge qui implémentent isscalar et isempty.
/ argPosition: a positive integer value: Position of input argument.

== Description

#strong[mustBeScalarOrEmpty]; vérifie que la valeur est scalaire ou vide, sinon renvoie une erreur.


== Exemple

``````matlab
mustBeScalarOrEmpty(true)
mustBeScalarOrEmpty([])
mustBeScalarOrEmpty([true false])
  
``````


== Voir aussi

#nlink(<types:isempty>)[isempty];, #nlink(<types:islogical>)[islogical];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
