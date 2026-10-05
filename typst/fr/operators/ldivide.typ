#import "nelson_help.typ": *

= ldivide <operators:ldivide>

Division gauche, opérateur .\\

== Syntaxe

- #raw("C = ldivide(A, B)");
- #raw("C = A .\\ B");

== Argument d'entrée

/ A: une variable
/ B: une variable

== Argument de sortie

/ C: résultat de A .\\ B

== Description

#strong[C \= ldivide(A, B)]; retourne la division élément par élément A .\\ B.


== Exemples

``````matlab
B = ones(3, 4)
A = B *2
A .\ B
``````

``````matlab
B = 2
A = B *2
A .\ B
``````


== Voir aussi

#nlink(<operators:rdivide>)[rdivide];, #nlink(<operators:mldivide>)[mldivide];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
