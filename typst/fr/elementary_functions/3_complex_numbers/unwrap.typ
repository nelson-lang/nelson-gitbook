#import "../nelson_help.typ": *

= unwrap <elementary_functions:3_complex_numbers.unwrap>

Corrige les angles de phase pour supprimer les sauts.

== Syntaxe

- #raw("q = unwrap(p)");
- #raw("q = unwrap(p, tol)");
- #raw("q = unwrap(p, tol, dim)");

== Argument d'entrée

/ p: un vecteur ou une matrice reelle d'angles de phase en radians.
/ tol: tolerance de saut, pi par defaut. Un saut superieur a tol est corrige en ajoutant un multiple de 2\*pi.
/ dim: dimension le long de laquelle operer ; par defaut la premiere dimension de taille differente de 1.

== Argument de sortie

/ q: les angles de phase dont les sauts de plus de tol ont ete supprimes, de meme taille et classe que #strong[p];.

== Description

#strong[unwrap]; corrige les angles de phase en radians de #strong[p]; en ajoutant des multiples de 2\*pi lorsque le saut entre elements consecutifs est superieur a #strong[tol]; (pi par defaut).

 Pour une matrice, chaque colonne est traitee independamment sauf si une dimension est donnee.


== Exemple

``````matlab
q = unwrap([0 3*pi/2 3*pi])

``````


== Voir aussi

#nlink(<elementary_functions:3_complex_numbers.angle>)[angle];, #nlink(<elementary_functions:2_elementary_math.mod>)[mod];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
