#import "nelson_help.typ": *

= erfcinv <special_functions:erfcinv>

Fonction d'erreur complémentaire inverse

== Syntaxe

- #raw("R = erfcinv(X)");

== Argument d'entrée

/ X: un scalaire, vecteur, matrice ou tableau multidimensionnel réel en simple ou double précision. Les entrées creuses et complexes ne sont pas prises en charge.

== Argument de sortie

/ R: valeurs de la fonction d'erreur complémentaire inverse, retournées avec la même taille et la même classe flottante que X.

== Description

#strong[erfcinv]; calcule la fonction d'erreur complémentaire inverse élément par élément.

 La fonction d'erreur complémentaire inverse est définie par :

 #latex("erfc(erfcinv(x)) = x"); Les valeurs hors de l'intervalle \[0, 2\] retournent NaN. Les valeurs 0 et 2 retournent respectivement Inf et -Inf.

 Utilisez #strong[erfcinv]; au lieu de #strong[erfinv(1 - x)]; quand x est proche de zéro afin d'éviter les erreurs d'arrondi.


== Exemples

Calculer la fonction d'erreur complémentaire inverse d'un scalaire.

``````matlab
R = erfcinv(0.3)
``````

Évaluer les limites et les valeurs hors domaine.

``````matlab
V = [-10 0 0.5 1.3 2 Inf];
R = erfcinv(V)
``````

Calculer la fonction d'erreur complémentaire inverse des éléments d'une matrice.

``````matlab
M = [0.1 1.2; 1 0.9];
R = erfcinv(M)
``````

Éviter l'arrondi de erfinv(1 - x) pour un x très petit.

``````matlab
x = 1e-100;
A = erfinv(1 - x);
B = erfcinv(x);
``````


== Voir aussi

#nlink(<special_functions:erfc>)[erfc];, #nlink(<special_functions:erfinv>)[erfinv];, #nlink(<special_functions:erf>)[erf];, #nlink(<special_functions:erfcx>)[erfcx];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.17.0], [version initiale],
)

// Auteur: Allan CORNET
