#import "../nelson_help.typ": *

= factorial <elementary_functions:2_elementary_math.factorial>

Fonction factorielle

== Syntaxe

- #raw("R = factorial(M)");

== Argument d'entrée

/ M: un entier, matrice réelle single ou double.

== Argument de sortie

/ R: résultat de la fonction factorielle.

== Description

#strong[factorial]; calcule la fonction factorielle : le produit des entiers 1 \* 2 \* ... \* M.


== Exemple

``````matlab
R = factorial([1:10])
R = factorial(int8(4))
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
