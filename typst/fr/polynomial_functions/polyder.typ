#import "nelson_help.typ": *

= polyder <polynomial_functions:polyder>

Dérivation polynomiale.

== Syntaxe

- #raw("k = polyder(p)");
- #raw("k = polyder(a, b)");
- #raw("[q, d] = polyder(a, b)");

== Argument d'entrée

/ p: vecteur : coefficients du polynôme
/ a: vecteur ligne : coefficients du polynôme
/ b: vecteur ligne : coefficients du polynôme

== Argument de sortie

/ k: vecteur ligne : coefficients du polynôme dérivé
/ q: vecteur ligne : polynôme numérateur
/ d: vecteur ligne : polynôme dénominateur

== Description

#strong[k \= polyder(p)]; renvoie les coefficients de la dérivée du polynôme dont les coefficients sont fournis par le vecteur#strong[p];.

 #strong[k \= polyder(a, b)]; renvoie la dérivée du produit des polynômes#strong[a]; et #strong[b];.

 #strong[\[q, d\] \= polyder(a, b)]; renvoie la dérivée du quotient des polynômes#strong[a]; et #strong[b];.


== Exemple

``````matlab

p = [30 0 -20 0 10 50];
q = polyder(p)
``````


== Voir aussi

#nlink(<polynomial_functions:polyval>)[polyval];, #nlink(<polynomial_functions:poly>)[poly];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
