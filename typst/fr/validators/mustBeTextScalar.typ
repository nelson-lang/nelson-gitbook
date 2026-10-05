#import "nelson_help.typ": *

= mustBeTextScalar <validators:mustBeTextScalar>

Vérifie que la valeur est un seul texte (scalaire) ou renvoie une erreur.

== Syntaxe

- #raw("mustBeTextScalar(var)");
- #raw("mustBeTextScalar(var, argPosition)");
- #raw("C++: void mustBeTextScalar(const ArrayOfVector& args, int argPosition)");

== Argument d'entrée

/ var: une variable : un tableau de chaînes scalaire ou un vecteur ligne de caractères.
/ argPosition: un entier positif : position de l'argument d'entrée.

== Description

#strong[mustBeTextScalar]; vérifie que la valeur est un seul texte (scalaire) ou renvoie une erreur.


== Exemple

``````matlab
mustBeTextScalar('true')
mustBeTextScalar(["f", "ff"])
mustBeTextScalar("hello")
``````


== Voir aussi

#nlink(<elementary_functions:7_indexing_dimensions.isscalar>)[isscalar];, #nlink(<types:ischar>)[ischar];, #nlink(<types:isstring>)[isstring];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
