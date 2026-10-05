#import "nelson_help.typ": *

= mustBeMember <validators:mustBeMember>

Vérifie que la valeur est membre du tableau spécifié ou signale une erreur.

== Syntaxe

- #raw("mustBeMember(var, c)");
- #raw("mustBeMember(var, c, argPosition)");
- #raw("C++: void mustBeMember(const ArrayOfVector& args, const ArrayOf &c, int argPosition)");

== Argument d'entrée

/ var: une variable.
/ c: une variable.
/ argPosition: un entier positif : position de l'argument d'entrée.

== Description

#strong[mustBeMember]; vérifie que la valeur est membre d'un tableau ou signale une erreur.


== Exemple

``````matlab
A = "red";
B = ["yellow","red","blue"];
mustBeMember(A,B)

``````


== Voir aussi

#nlink(<validators:mustBeNonempty>)[mustBeNonempty];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
