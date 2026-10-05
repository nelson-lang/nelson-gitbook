#import "../nelson_help.typ": *

= periodogram <signal_processing:5_spectral_analysis.periodogram>

Estimation de densite spectrale de puissance par periodogramme.

== Syntaxe

- #raw("[Pxx, F] = periodogram(X)");
- #raw("[Pxx, F] = periodogram(X, WINDOW, NFFT, Fs)");
- #raw("[Pxx, F] = periodogram(..., FREQRANGE)");
- #raw("[Pxx, F] = periodogram(..., SPECTRUMTYPE)");

== Argument d'entrée

/ X: signal d'entree.
/ WINDOW: vecteur de fenetre ou longueur.
/ NFFT: longueur de FFT.
/ Fs: frequence d'echantillonnage.
/ FREQRANGE: "onesided", "twosided", "centered", "half" ou "whole". "half" est traite comme "onesided" et "whole" comme "twosided".
/ SPECTRUMTYPE: "psd" ou "power".

== Argument de sortie

/ Pxx: estimation de densite spectrale de puissance ou de spectre de puissance.
/ F: vecteur de frequences.

== Description

#strong[periodogram]; estime la repartition de puissance d'un signal en frequence.


== Exemple

``````matlab

[pxx, f] = periodogram(sin((0:127)' * 0.1), [], 128, 10);

``````


== Voir aussi

#nlink(<signal_processing:5_spectral_analysis.pwelch>)[pwelch];, #nlink(<signal_processing:6_time_frequency_analysis.spectrogram>)[spectrogram];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
