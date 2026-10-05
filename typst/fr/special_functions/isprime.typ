#import "nelson_help.typ": *

= isprime <special_functions:isprime>

Détermine quels éléments d'un tableau sont premiers

== Syntaxe

- #raw("TF = isprime(X)");

== Argument d'entrée

/ X: un scalaire, vecteur, ou matrice d'entiers positifs ou nuls.

== Argument de sortie

/ TF: tableau logique, vrai là où l'élément correspondant de X est un nombre premier.

== Description

#strong[isprime]; retourne un tableau logique de même taille que X, contenant vrai là où les éléments de X sont des nombres premiers et faux sinon.


== Exemple

``````matlab
isprime([2 3 4 5 6 7 8 9 10 11])
``````


== Voir aussi

#nlink(<special_functions:primes>)[primes];, #nlink(<special_functions:factor>)[factor];, #nlink(<special_functions:gcd>)[gcd];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
