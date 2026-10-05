#import "../nelson_help.typ": *

= dct <signal_processing:3_transforms_correlation_modeling.dct>

Transformation en cosinus discrete.

== Syntaxe

- #raw("Y = dct(X)");
- #raw("Y = dct(X, N)");
- #raw("Y = dct(X, N, DIM)");

== Argument d'entrée

/ X: signal ou matrice d'entree.
/ N: longueur de transformation : X est complete par des zeros ou tronque a la longueur N.
/ DIM: dimension le long de laquelle operer.

== Argument de sortie

/ Y: coefficients de la transformation en cosinus discrete (DCT-II orthonormale).

== Description

#strong[dct]; calcule la transformation en cosinus discrete de type II orthonormale le long de la premiere dimension non singleton par defaut. Pour les matrices, chaque colonne est transformee independamment.


== Exemple

``````matlab

y = dct([1 2 3 4]);
x = idct(y);

``````


== Voir aussi

#nlink(<signal_processing:3_transforms_correlation_modeling.idct>)[idct];, #nlink(<fftw:fft>)[fft];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
