#import "nelson_help.typ": *

= lcm <special_functions:lcm>

Plus petit commun multiple

== Syntaxe

- #raw("L = lcm(A, B)");

== Argument d'entrée

/ A: un scalaire, vecteur, ou matrice de valeurs entières réelles.
/ B: un scalaire, vecteur, ou matrice de valeurs entières réelles.

== Argument de sortie

/ L: plus petit commun multiple de A et B.

== Description

#strong[lcm]; retourne le plus petit commun multiple des éléments correspondants de A et B. Les entrées doivent être des entiers réels.


== Exemple

``````matlab
A = [4 6 8];
B = [6 9 12];
L = lcm(A, B)
``````


== Voir aussi

#nlink(<special_functions:gcd>)[gcd];, #nlink(<special_functions:factor>)[factor];, #nlink(<special_functions:primes>)[primes];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
