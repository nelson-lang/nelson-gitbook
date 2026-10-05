#import "../nelson_help.typ": *

= bernsteinMatrix <elementary_functions:6_matrix_generation.bernsteinMatrix>

Matrice de Bernstein

== Syntaxe

- #raw("B = bernsteinMatrix(n, t)");

== Argument d'entrée

/ n: entier non nÃ©gatif : ordre d'approximation.
/ t: nombre ou vecteur : points d'Ã©valuation.

== Argument de sortie

/ B: Matrice de Bernstein : matrice de taille length(t)-par-(n+1).

== Description

#strong[B \= bernsteinMatrix(n, t)]; construit une matrice de Bernstein#strong[B]; de dimensions length(t)-par-(n+1) lorsque t est un vecteur.

 La matrice de Bernstein est aussi appelÃ©e matrice de BÃ©zier.

 Cette fonction permet de calculer les points d'une courbe de BÃ©zier.


== Exemple

``````matlab
t = 0:1/100:1;
B = bernsteinMatrix(3, t);
P = [0 0 0; 1 2 1; 1 -2 3; 5 2 4];
bezierCurve = B * P;
plot3(bezierCurve(:,1), bezierCurve(:,2), bezierCurve(:,3))

``````


#align(center)[#image("bernsteinMatrix.svg")]

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.5.0], [version initiale],
)

// Auteur: Allan CORNET
