#import "nelson_help.typ": *

= colon <operators:colon>

Opérateur deux-points ':'

== Syntaxe

- #raw("R = colon(base, limit)");
- #raw("R = colon(base, increment, limit");

== Argument d'entrée

/ base: une variable
/ limit: une variable
/ increment: une variable (optionnelle)

== Argument de sortie

/ C: résultat

== Description

#strong[colon]; crée des vecteurs. C'est une fonction utile pour les boucles, l'extraction et l'insertion.

 #strong[colon(base, limit)]; est équivalent à #strong[base:limit];

 #strong[colon(base, increment, limit)]; est équivalent à #strong[base:increment:limit];


== Exemples

``````matlab
1:0.5:4
``````

``````matlab
A = 1:6
B = 1:4:12
C = rand(3, 4)
C(:)
C(:, 3)
C(2, :)
C(:, 1, 1)
C(:) = rand(3, 4)

``````


== Voir aussi

#nlink(<operators:subsref>)[subsref];, #nlink(<operators:subsindex>)[subsindex];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
