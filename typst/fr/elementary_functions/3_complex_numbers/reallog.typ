#import "../nelson_help.typ": *

= reallog <elementary_functions:3_complex_numbers.reallog>

Logarithme naturel avec resultat reel uniquement.

== Syntaxe

- #raw("R = reallog(X)");

== Argument d'entrée

/ X: input array.

== Argument de sortie

/ R: Natural logarithm with real-only result.

== Description

#strong[reallog]; calcule log(X) et renvoie une erreur si une entree ou le resultat est complexe.


== Exemple

``````matlab
x = [1 2 4];
R = reallog(x)
``````


== Voir aussi

#nlink(<elementary_functions:2_elementary_math.log>)[log];, #nlink(<elementary_functions:3_complex_numbers.realsqrt>)[realsqrt];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
