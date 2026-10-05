#import "../nelson_help.typ": *

= hilbert <signal_processing:3_transforms_correlation_modeling.hilbert>

Signal analytique par transformation de Hilbert.

== Syntaxe

- #raw("Y = hilbert(X)");
- #raw("Y = hilbert(X, N)");

== Argument d'entrée

/ X: signal ou matrice d'entree.
/ N: longueur de FFT sur la premiere dimension non singleton.

== Argument de sortie

/ Y: signal analytique avec les composantes de frequence negative supprimees.

== Description

#strong[hilbert]; construit le signal analytique le long de la premiere dimension non singleton. Pour les matrices, chaque colonne est transformee independamment.


== Exemple

``````matlab

y = hilbert([1 0 0 0]);

``````


== Voir aussi

#nlink(<fftw:fft>)[fft];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
