#import "../nelson_help.typ": *

= bandpower <signal_processing:2_measurements_feature_extraction.bandpower>

Estime la puissance d'un signal dans une bande de frequences.

== Syntaxe

- #raw("P = bandpower(X)");
- #raw("P = bandpower(X, Fs, freqRange)");
- #raw("P = bandpower(Pxx, F, 'psd')");
- #raw("P = bandpower(Pxx, F, freqRange, 'psd')");

== Argument d'entrée

/ X: signal temporel d'entree.
/ Fs: frequence d'echantillonnage.
/ freqRange: intervalle de frequences a deux elements.
/ Pxx, F: estimation de densite spectrale de puissance et vecteur de frequences associe.

== Argument de sortie

/ P: puissance moyenne estimee.

== Description

#strong[bandpower]; calcule la puissance temporelle moyenne ou integre une estimation PSD par approximation rectangulaire. Pour les mesures de bande depuis un signal temporel, un periodogramme fenetre par Hamming de longueur egale a l'entree est utilise.


== Exemple

``````matlab

p = bandpower(sin((0:127)' * 0.1), 10, [0 5]);

``````


== Voir aussi

#nlink(<signal_processing:5_spectral_analysis.periodogram>)[periodogram];, #nlink(<signal_processing:2_measurements_feature_extraction.meanfreq>)[meanfreq];, #nlink(<signal_processing:2_measurements_feature_extraction.medfreq>)[medfreq];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
