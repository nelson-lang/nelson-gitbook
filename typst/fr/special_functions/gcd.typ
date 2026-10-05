#import "nelson_help.typ": *

= gcd <special_functions:gcd>

Plus grand commun diviseur

== Syntaxe

- #raw("G = gcd(A, B)");
- #raw("[G, C, D] = gcd(A, B)");

== Argument d'entrée

/ A: un scalaire, vecteur, ou matrice de valeurs entières réelles.
/ B: un scalaire, vecteur, ou matrice de valeurs entières réelles.

== Argument de sortie

/ G: résultat de la fonction gcd (Plus grand commun diviseur).
/ C, D: coefficients de Bezout tels que C .\* A + D .\* B \=\= G.

== Description

#strong[G \= gcd(A, B)]; calcule le plus grand commun diviseur en utilisant l'algorithme euclidien.

 #strong[\[G, C, D\] \= gcd(A, B)]; renvoie aussi les coefficients de Bezout #strong[C]; et #strong[D]; tels que #strong[C .\* A + D .\* B \=\= G];. Les entiers non signés ne sont pas pris en charge par cette syntaxe.


== Bibliographie

Knuth, D. “Algorithms A and X.” The Art of Computer Programming, Vol. 2, Section 4.5.2. Reading, MA: Addison-Wesley, 1973.

== Exemple

``````matlab
A = [-5 7; 10 0];
B = [-15 3; 50 0];
G = gcd(A, B)
``````


== Voir aussi

#nlink(<special_functions:gamma>)[gamma];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
