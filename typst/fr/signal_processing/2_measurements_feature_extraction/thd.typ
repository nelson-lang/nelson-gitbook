#import "../nelson_help.typ": *

= thd <signal_processing:2_measurements_feature_extraction.thd>

Estimation de distorsion harmonique totale.

== Syntaxe

- #raw("D = thd(X)");
- #raw("D = thd(X, Fs)");

== Argument d'entrée

/ X: signal d'entree.
/ Fs: frequence d'echantillonnage.

== Argument de sortie

/ D: distorsion estimee en decibels.

== Description

#strong[thd]; estime la distorsion harmonique totale a partir des amplitudes de FFT.


== Exemple

``````matlab

d = thd(sin((0:255)' * 0.1));

``````


== Voir aussi

#nlink(<signal_processing:2_measurements_feature_extraction.snr>)[snr];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
