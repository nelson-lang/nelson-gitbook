#import "nelson_help.typ": *

= polyfit <polynomial_functions:polyfit>

Ajustement polynomiale (polynomial curve fitting).

== Syntaxe

- #raw("p = polyfit(x, y, n)");

== Argument d'entrée

/ x: vecteur : points d'échantillonnage
/ y: vecteur : valeurs observées aux points d'échantillonnage
/ n: scalaire positif : degré du polynôme d'ajustement

== Argument de sortie

/ p: vecteur : coefficients du polynôme d'ajustement par moindres carrés

== Description

#strong[p \= polyfit(x, y, n)]; renvoie les coefficients d'un polynôme #strong[p(x)]; de degré #strong[n]; qui réalise le meilleur ajustement (least-squares) des données #strong[y];.


== Exemple

``````matlab

x = linspace(0, 8 * pi, 15);
y = sin(x);
p = polyfit(x, y, 7)
``````


== Voir aussi

#nlink(<polynomial_functions:roots>)[roots];, #nlink(<polynomial_functions:poly>)[poly];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
