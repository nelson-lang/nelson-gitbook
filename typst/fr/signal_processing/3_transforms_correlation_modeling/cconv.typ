#import "../nelson_help.typ": *

= cconv <signal_processing:3_transforms_correlation_modeling.cconv>

Convolution circulaire.

== Syntaxe

- #raw("Y = cconv(A, B)");
- #raw("Y = cconv(A, B, N)");

== Argument d'entrée

/ A, B: vecteurs d'entree.
/ N: longueur de convolution, entiere positive.

== Argument de sortie

/ Y: resultat de convolution circulaire.

== Description

#strong[cconv]; calcule une convolution circulaire a l'aide de FFT.


== Exemple

``````matlab

y = cconv([1 2], [1 1], 2);

``````


== Voir aussi

#nlink(<data_analysis:conv>)[conv];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
