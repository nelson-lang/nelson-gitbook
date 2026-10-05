#import "../nelson_help.typ": *

= spectrogram <signal_processing:6_time_frequency_analysis.spectrogram>

Spectrogramme par transformees de Fourier locales.

== Syntaxe

- #raw("[S, F, T] = spectrogram(X)");
- #raw("[S, F, T, P] = spectrogram(X, window, noverlap, NFFT, Fs)");

== Argument d'entrée

/ X: signal d'entree.
/ window: vecteur de fenetre ou longueur.
/ noverlap: nombre d'echantillons de recouvrement.
/ NFFT: longueur de FFT.
/ Fs: frequence d'echantillonnage.

== Argument de sortie

/ S: spectre local complexe.
/ F: vecteur de frequences.
/ T: vecteur de temps.
/ P: estimation de densite spectrale de puissance.

== Description

#strong[spectrogram]; decoupe le signal en segments fenetres recouvrants et calcule une FFT pour chaque segment.


== Exemple

``````matlab

[s, f, t] = spectrogram(sin((0:255)' * 0.1), 64, 32, 128, 10);

``````


== Voir aussi

#nlink(<signal_processing:6_time_frequency_analysis.stft>)[stft];, #nlink(<signal_processing:5_spectral_analysis.periodogram>)[periodogram];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
