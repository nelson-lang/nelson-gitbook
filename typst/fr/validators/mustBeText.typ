#import "nelson_help.typ": *

= mustBeText <validators:mustBeText>

Vérifie que la valeur est un texte ou renvoie une erreur.

== Syntaxe

- #raw("mustBeText(var)");
- #raw("mustBeText(var, argPosition)");
- #raw("C++: void mustBeText(const ArrayOfVector& args, int argPosition)");

== Argument d'entrée

/ var: une variable : un tableau de chaînes, une cellule de chaînes, ou un vecteur ligne de caractères.
/ argPosition: a positive integer value: Position of input argument.

== Description

#strong[mustBeText]; vérifie que la valeur est un texte ou renvoie une erreur.


== Exemple

``````matlab
mustBeText('true')
mustBeText(["f", "ff"])
mustBeText("hello")
``````


== Voir aussi

#nlink(<types:ischar>)[ischar];, #nlink(<types:isstring>)[isstring];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
