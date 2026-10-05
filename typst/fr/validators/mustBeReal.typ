#import "nelson_help.typ": *

= mustBeReal <validators:mustBeReal>

Vérifie que la valeur est réelle.

== Syntaxe

- #raw("mustBeReal(var)");
- #raw("mustBeReal(var, argPosition)");
- #raw("C++: void mustBeReal(const ArrayOfVector& args, int argPosition)");

== Argument d'entrée

/ var: une variable : tous les types et classes pris en charge qui implémentent la méthode isreal.
/ argPosition: un entier positif : position de l'argument d'entrée.

== Description

#strong[mustBeReal]; vérifie que la valeur est réelle ou renvoie une erreur.


== Exemple

``````matlab
mustBeReal(1)
mustBeReal(i)

``````


== Voir aussi

#nlink(<types:isreal>)[isreal];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
