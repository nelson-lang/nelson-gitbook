#import "nelson_help.typ": *

= rdivide <operators:rdivide>

Division droite, opérateur .\/

== Syntaxe

- #raw("C = rdivide(A, B)");
- #raw("C = A ./ B");

== Argument d'entrée

/ A: une variable
/ B: une variable

== Argument de sortie

/ C: résultat de A .\/ B

== Description

#strong[C \= rdivide(A, B)]; effectue la division élément par élément à droite : A .\/ B.


== Exemples

``````matlab
rdivide(3, 4)
3 ./ 4
``````

``````matlab
M1 = [2];
M2 = [-25 88 1];
M1 ./ M2
``````


== Voir aussi

#nlink(<operators:ldivide>)[ldivide];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
