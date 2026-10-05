#import "nelson_help.typ": *

= plus <operators:plus>

Addition, opérateur +

== Syntaxe

- #raw("C = plus(A, B)");
- #raw("C = A + B");

== Argument d'entrée

/ A: une variable
/ B: une variable

== Argument de sortie

/ C: résultat de A + B

== Description

#strong[C \= plus(A, B)]; effectue l'addition A + B.


== Exemples

``````matlab
plus(3, 4)
3 + 4
``````

``````matlab
[1, 2] + 1
plus([1, 2], 1)
``````

``````matlab
ones(0, 0) + 1
``````

Ajouter un code caractere et une valeur numerique.

``````matlab
char(65) + 1
char(65) + int8([1 2])
``````


== Voir aussi

#nlink(<operators:minus>)[minus];, #nlink(<operators:uplus>)[uplus];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
