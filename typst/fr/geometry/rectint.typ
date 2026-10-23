#import "nelson_help.typ": *

= rectint <geometry:rectint>

Aire d'intersection de rectangles.

== Syntaxe

- #raw("out = rectint(A, B)");

== Argument d'entrée

/ A: une matrice M-par-4 ; chaque ligne est un rectangle #strong[\[x y width height\]];.
/ B: une matrice N-par-4 ; chaque ligne est un rectangle #strong[\[x y width height\]];.

== Argument de sortie

/ out: une matrice M-par-N ; #strong[out(i, j)]; est l'aire de l'intersection du rectangle #strong[A(i, :)]; et du rectangle #strong[B(j, :)];.

== Description

#strong[rectint]; renvoie l'aire d'intersection de rectangles. Chaque rectangle est donné sous la forme d'une ligne à quatre éléments #strong[\[x y width height\]];, où #strong[(x, y)]; est un coin et #strong[width]; et #strong[height]; sont les longueurs des côtés. Les rectangles qui ne se chevauchent pas contribuent une aire nulle.


== Exemple

``````matlab
area = rectint([0 0 1 1], [0.5 0.5 1 1])
``````


== Voir aussi

#nlink(<geometry:polyarea>)[polyarea];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Version initiale.],
)

// Auteur: Allan CORNET
