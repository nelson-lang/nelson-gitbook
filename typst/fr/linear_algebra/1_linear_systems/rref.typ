#import "../nelson_help.typ": *

= rref <linear_algebra:1_linear_systems.rref>

Élimination de Gauss-Jordan (forme échelonnée réduite).

== Syntaxe

- #raw("R = rref(A)");
- #raw("R = rref(A, tol)");
- #raw("[R, p] = rref(A)");
- #raw("[R, p] = rref(A, tol)");

== Argument d'entrée

/ A: matrice d'entrée (double ou simple précision)
/ tol: tolérance : scalaire ou max(rows, cols) \* eps(class(A)) \* norm(A, inf) (par défaut)

== Argument de sortie

/ R: une matrice : forme échelonnée réduite de A.
/ p: un vecteur : colonnes pivots non nulles.

== Description

#strong[R \= rref(A)]; retourne la forme échelonnée réduite par lignes de #strong[A];.

 #strong[\[R, p\] \= rref(A)]; retourne également les pivots non nuls #strong[p];.


== Bibliographie

https:\/\/en.wikipedia.org\/wiki\/Gaussian\_elimination

== Exemple

``````matlab
A = [magic(4), eye(4)]
[R, p] = rref(A)
``````


== Voir aussi

#nlink(<linear_algebra:1_linear_systems.rank>)[rank];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
