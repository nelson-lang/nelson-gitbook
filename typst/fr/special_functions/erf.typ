#import "nelson_help.typ": *

= erf <special_functions:erf>

Fonction d'erreur

== Syntaxe

- #raw("R = erf(X)");

== Argument d'entrée

/ X: un scalaire, vecteur, matrice ou tableau multidimensionnel réel en simple ou double précision. Les entrées creuses et complexes ne sont pas prises en charge.

== Argument de sortie

/ R: valeurs de la fonction d'erreur, retournées avec la même taille et la même classe flottante que X.

== Description

#strong[erf]; calcule la fonction d'erreur élément par élément.

 La fonction d'erreur est définie par :

 #latex("erf(x) = \\frac{2}{\\sqrt{\\pi}}\\int_0^x e^{-t^2}\\,dt"); Elle est liée à la fonction d'erreur complémentaire par :

 #latex("erfc(x) = 1 - erf(x)"); Pour une meilleure précision numérique quand le résultat est proche de zéro, utilisez #strong[erfc]; au lieu de calculer #strong[1 - erf(x)];.


== Exemples

Calculer la fonction d'erreur d'un scalaire.

``````matlab
R = erf(0.76)
``````

Calculer la fonction d'erreur des éléments d'un vecteur.

``````matlab
V = [-0.5 0 1 0.72];
R = erf(V)
``````

Calculer la fonction d'erreur des éléments d'une matrice.

``````matlab
M = [0.29 -0.11; 3.1 -2.9];
R = erf(M)
``````

Calculer la fonction de répartition de la loi normale standard.

``````matlab
x = -3:0.1:3;
y = 0.5 * (1 + erf(x / sqrt(2)));
``````


== Voir aussi

#nlink(<special_functions:erfc>)[erfc];, #nlink(<special_functions:erfinv>)[erfinv];, #nlink(<special_functions:erfcinv>)[erfcinv];, #nlink(<special_functions:erfcx>)[erfcx];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.17.0], [version initiale],
)

// Auteur: Allan CORNET
