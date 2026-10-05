#import "../nelson_help.typ": *

= fftfilt <signal_processing:4_digital_filters.fftfilt>

Filtrage FIR auxiliaire.

== Syntaxe

- #raw("Y = fftfilt(B, X)");

== Argument d'entrée

/ B: coefficients FIR.
/ X: signal ou matrice d'entree.

== Argument de sortie

/ Y: signal filtre.

== Description

#strong[fftfilt]; retourne les premiers length(X) echantillons de la convolution entre B et X. Les matrices sont filtrees colonne par colonne.


== Exemple

``````matlab

y = fftfilt([1 1], [1 2 3]);

``````


== Voir aussi

#nlink(<elementary_functions:7_indexing_dimensions.filter>)[filter];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
