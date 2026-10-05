#import "nelson_help.typ": *

= mustBeNonzeroLengthText <validators:mustBeNonzeroLengthText>

Vérifie que la valeur est un texte de longueur non nulle ou renvoie une erreur.

== Syntaxe

- #raw("mustBeNonzeroLengthText(var)");
- #raw("mustBeNonzeroLengthText(var, argPosition)");
- #raw("C++: void mustBeNonzeroLengthText(const ArrayOfVector& args, int argPosition)");

== Argument d'entrée

/ var: une variable : un tableau de chaînes, une cellule de chaînes, ou un vecteur ligne de caractères.
/ argPosition: un entier positif : position de l'argument d'entrée.

== Description

#strong[mustBeNonzeroLengthText]; vérifie que la valeur est un texte de longueur non nulle ou renvoie une erreur.


== Exemple

``````matlab
mustBeNonzeroLengthText('true')
mustBeNonzeroLengthText("hello")
mustBeNonzeroLengthText('')
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
