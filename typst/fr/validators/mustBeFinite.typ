#import "nelson_help.typ": *

= mustBeFinite <validators:mustBeFinite>

Vérifie que la valeur est finie ou renvoie une erreur.

== Syntaxe

- #raw("mustBeFinite(var)");
- #raw("mustBeFinite(var, argPosition)");
- #raw("C++: void mustBeFinite(const ArrayOfVector& args, int argPosition)");

== Argument d'entrée

/ var: une variable : tous les types et classes pris en charge qui implémentent les méthodes isfinite.
/ argPosition: un entier positif : position de l'argument d'entrée.

== Description

#strong[mustBeFinite]; vérifie que la valeur est finie ou renvoie une erreur.

 Les valeurs vides sont ignorées.


== Exemple

``````matlab
mustBeFinite(1)
mustBeFinite(Inf)
``````


== Voir aussi

#nlink(<elementary_functions:7_indexing_dimensions.isfinite>)[isfinite];, #nlink(<types:isempty>)[isempty];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
