#import "nelson_help.typ": *

= erfcx <special_functions:erfcx>

Fonction d'erreur complémentaire mise à l'échelle

== Syntaxe

- #raw("R = erfcx(X)");

== Argument d'entrée

/ X: un scalaire, vecteur, matrice ou tableau multidimensionnel réel en simple ou double précision. Les entrées creuses et complexes ne sont pas prises en charge.

== Argument de sortie

/ R: valeurs de la fonction d'erreur complémentaire mise à l'échelle, retournées avec la même taille et la même classe flottante que X.

== Description

#strong[erfcx]; calcule la fonction d'erreur complémentaire mise à l'échelle élément par élément.

 La fonction d'erreur complémentaire mise à l'échelle est définie par :

 #latex("erfcx(x) = e^{x^2} erfc(x)"); Utilisez #strong[erfcx]; au lieu de #strong[exp(x^2) \* erfc(x)]; pour les grandes valeurs positives de X afin d'éviter les sous-dépassements, les dépassements ou la perte de précision.

 Pour les grandes valeurs positives de X :

 #latex("erfcx(x) \\approx \\frac{1}{\\sqrt{\\pi}x}");
== Exemples

Calculer la fonction d'erreur complémentaire mise à l'échelle d'un scalaire.

``````matlab
R = erfcx(5)
``````

Calculer la fonction d'erreur complémentaire mise à l'échelle des éléments d'un vecteur.

``````matlab
V = [-Inf -1 0 1 10 Inf];
R = erfcx(V)
``````

Calculer la fonction d'erreur complémentaire mise à l'échelle des éléments d'une matrice.

``````matlab
M = [-0.5 15; 3.2 1];
R = erfcx(M)
``````

Éviter le dépassement dans exp(x^2) \* erfc(x).

``````matlab
x = 35;
A = exp(x^2) * erfc(x);
B = erfcx(x);
``````


== Voir aussi

#nlink(<special_functions:erfc>)[erfc];, #nlink(<special_functions:erfcinv>)[erfcinv];, #nlink(<special_functions:erf>)[erf];, #nlink(<special_functions:erfinv>)[erfinv];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.17.0], [version initiale],
)

// Auteur: Allan CORNET
