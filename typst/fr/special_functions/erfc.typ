#import "nelson_help.typ": *

= erfc <special_functions:erfc>

Fonction d'erreur complémentaire

== Syntaxe

- #raw("R = erfc(X)");

== Argument d'entrée

/ X: un scalaire, vecteur, matrice ou tableau multidimensionnel réel en simple ou double précision. Les entrées creuses et complexes ne sont pas prises en charge.

== Argument de sortie

/ R: valeurs de la fonction d'erreur complémentaire, retournées avec la même taille et la même classe flottante que X.

== Description

#strong[erfc]; calcule la fonction d'erreur complémentaire élément par élément.

 La fonction d'erreur complémentaire est définie par :

 #latex("erfc(x) = \\frac{2}{\\sqrt{\\pi}}\\int_x^{\\infty} e^{-t^2}\\,dt"); Elle est liée à la fonction d'erreur par :

 #latex("erfc(x) = 1 - erf(x)"); Utilisez #strong[erfc]; au lieu de #strong[1 - erf(x)]; quand #strong[erf(x)]; est proche de 1, car la soustraction directe peut perdre des chiffres significatifs.

 Utilisez #strong[erfcx]; au lieu de #strong[exp(x^2) \* erfc(x)]; pour les grandes valeurs positives de X.


== Exemples

Calculer la fonction d'erreur complémentaire d'un scalaire.

``````matlab
R = erfc(0.35)
``````

Calculer la fonction d'erreur complémentaire des éléments d'un vecteur.

``````matlab
V = [-0.5 0 1 0.72];
R = erfc(V)
``````

Calculer la fonction d'erreur complémentaire des éléments d'une matrice.

``````matlab
M = [0.29 -0.11; 3.1 -2.9];
R = erfc(M)
``````

Comparer la soustraction directe avec erfc pour une grande entrée positive.

``````matlab
A = 1 - erf(10);
B = erfc(10);
``````


== Voir aussi

#nlink(<special_functions:erf>)[erf];, #nlink(<special_functions:erfcinv>)[erfcinv];, #nlink(<special_functions:erfcx>)[erfcx];, #nlink(<special_functions:erfinv>)[erfinv];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.17.0], [version initiale],
)

// Auteur: Allan CORNET
