#import "nelson_help.typ": *

= roots <polynomial_functions:roots>

Trouver les racines d'un polynôme.

== Syntaxe

- #raw("r = roots(p)");

== Argument d'entrée

/ p: vecteur : coefficients du polynôme

== Argument de sortie

/ r: racines

== Description

#strong[r \= roots(c)]; trouve les racines du polynôme #strong[c];. #strong[r]; est un vecteur colonne.

 Cette fonction utilise la matrice compagnon du polynôme pour déterminer ses racines.


== Exemple

``````matlab

p = [1 0 0 0 -1];
r = roots(p)
``````


== Voir aussi

#nlink(<polynomial_functions:poly>)[poly];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
