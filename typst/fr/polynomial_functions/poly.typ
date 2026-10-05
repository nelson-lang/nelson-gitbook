#import "nelson_help.typ": *

= poly <polynomial_functions:poly>

Polynôme à partir de racines ou polynôme caractéristique.

== Syntaxe

- #raw("p = poly(r)");
- #raw("p = poly(A)");

== Argument d'entrée

/ r: vecteur : racines du polynôme
/ A: matrice : matrice d'entrée

== Argument de sortie

/ p: vecteur ligne : coefficients du polynôme

== Description

Si #strong[A]; est une matrice carrée, #strong[p \= poly(A)]; calcule un vecteur ligne de n+1 éléments correspondant aux coefficients du polynôme caractéristique.

 Si #strong[r]; est un vecteur, #strong[p \= poly(r)]; calcule un vecteur ligne contenant les coefficients du polynôme dont les racines sont les éléments de #strong[r];.


== Exemple

``````matlab

A = [1    2    3;
4    5    6;
7    8    1];
p = poly(A)
``````


== Voir aussi

#nlink(<data_analysis:conv>)[conv];, #nlink(<polynomial_functions:roots>)[roots];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
