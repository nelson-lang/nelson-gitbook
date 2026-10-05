#import "nelson_help.typ": *

= mustBeLogical <validators:mustBeLogical>

Vérifie que la valeur est logique ou renvoie une erreur.

== Syntaxe

- #raw("mustBeLogical(var)");
- #raw("mustBeLogical(var, argPosition)");
- #raw("C++: void mustBeLogical(const ArrayOfVector& args, int argPosition)");

== Argument d'entrée

/ var: une variable : tous les types et classes pris en charge qui implémentent islogical et isempty.
/ argPosition: un entier positif : position de l'argument d'entrée.

== Description

#strong[mustBeLogical]; vérifie que la valeur est logique ou renvoie une erreur.

 Les valeurs vides sont ignorées.


== Exemple

``````matlab
mustBeLogical(true)
mustBeLogical([])
mustBeLogical([true false])
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
