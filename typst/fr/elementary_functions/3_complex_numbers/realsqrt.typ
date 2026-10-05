#import "../nelson_help.typ": *

= realsqrt <elementary_functions:3_complex_numbers.realsqrt>

Racine carree avec resultat reel uniquement.

== Syntaxe

- #raw("R = realsqrt(X)");

== Argument d'entrée

/ X: input array.

== Argument de sortie

/ R: Square root with real-only result.

== Description

#strong[realsqrt]; calcule sqrt(X) et renvoie une erreur si une entree ou le resultat est complexe.


== Exemple

``````matlab
x = [1 4 9];
R = realsqrt(x)
``````


== Voir aussi

#nlink(<elementary_functions:2_elementary_math.sqrt>)[sqrt];, #nlink(<elementary_functions:3_complex_numbers.reallog>)[reallog];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
