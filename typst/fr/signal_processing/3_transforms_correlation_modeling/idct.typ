#import "../nelson_help.typ": *

= idct <signal_processing:3_transforms_correlation_modeling.idct>

Transformation en cosinus discrete inverse.

== Syntaxe

- #raw("X = idct(Y)");
- #raw("X = idct(Y, N)");
- #raw("X = idct(Y, N, DIM)");

== Argument d'entrée

/ Y: coefficients de la transformation en cosinus discrete.
/ N: longueur de transformation : Y est complete par des zeros ou tronque a la longueur N.
/ DIM: dimension le long de laquelle operer.

== Argument de sortie

/ X: signal reconstruit (inverse de la DCT-II orthonormale).

== Description

#strong[idct]; calcule l'inverse de la transformation en cosinus discrete de type II orthonormale le long de la premiere dimension non singleton par defaut. Pour les matrices, chaque colonne est transformee independamment.


== Exemple

``````matlab

y = dct([1 2 3 4]);
x = idct(y);

``````


== Voir aussi

#nlink(<signal_processing:3_transforms_correlation_modeling.dct>)[dct];, #nlink(<fftw:ifft>)[ifft];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
