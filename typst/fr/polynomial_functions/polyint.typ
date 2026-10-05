#import "nelson_help.typ": *

= polyint <polynomial_functions:polyint>

Intégration polynomiale.

== Syntaxe

- #raw("q = polyint(p, k)");
- #raw("q = polyint(p)");

== Argument d'entrée

/ p: vecteur : coefficients du polynôme
/ k: scalaire numérique : constante d'intégration

== Argument de sortie

/ q: vecteur ligne : coefficients du polynôme intégré

== Description

#strong[polyint]; renvoie l'intégrale du polynôme représenté par les coefficients de #strong[p]; en utilisant une constante d'intégration #strong[k]; (0 par défaut).


== Exemple

``````matlab

p = [10, 0, -10, 0, 0, 10];
v = [10, 0, 10];
k = 3;
q = polyint(conv(p,v),k)
``````


== Voir aussi

#nlink(<polynomial_functions:polyval>)[polyval];, #nlink(<polynomial_functions:polyvalm>)[polyvalm];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
