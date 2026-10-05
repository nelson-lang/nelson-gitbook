#import "nelson_help.typ": *

= compan <polynomial_functions:compan>

Matrice compagnon.

== Syntaxe

- #raw("A = compan(c)");

== Argument d'entrée

/ c: un vecteur de coefficients polynomiaux, en puissances decroissantes.

== Argument de sortie

/ A: la matrice compagnon dont la premiere ligne est #strong[-c(2:end) \/ c(1)]; et dont la premiere sous-diagonale vaut un.

== Description

#strong[compan]; retourne la matrice compagnon du polynome dont les coefficients sont #strong[c];.

 Les valeurs propres de la matrice compagnon sont les racines du polynome, donc #strong[eig(compan(c))]; et #strong[roots(c)]; donnent les memes valeurs.

 Pour un vecteur de longueur n, le resultat est une matrice (n-1) par (n-1). Un coefficient unique retourne une matrice vide.


== Exemple

``````matlab
A = compan([1 -6 11 -6])
r = eig(A)

``````


== Voir aussi

#nlink(<polynomial_functions:roots>)[roots];, #nlink(<polynomial_functions:poly>)[poly];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
