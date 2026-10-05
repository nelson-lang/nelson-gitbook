#import "nelson_help.typ": *

= mustBeNonempty <validators:mustBeNonempty>

Vérifie que la valeur n'est pas vide ou renvoie une erreur.

== Syntaxe

- #raw("mustBeNonempty(var)");
- #raw("mustBeNonempty(var, argPosition)");
- #raw("C++: void mustBeNonempty(const ArrayOfVector& args, int argPosition)");

== Argument d'entrée

/ var: une variable : tous les types et classes pris en charge qui implémentent la méthode isempty.
/ argPosition: un entier positif : position de l'argument d'entrée.

== Description

#strong[mustBeNonempty]; vérifie que la valeur n'est pas vide ou renvoie une erreur.


== Exemple

``````matlab
mustBeNonempty(1)
mustBeNonempty([])
``````


== Voir aussi

#nlink(<types:isempty>)[isempty];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
