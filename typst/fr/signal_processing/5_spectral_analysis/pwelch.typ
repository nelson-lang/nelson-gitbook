#import "../nelson_help.typ": *

= pwelch <signal_processing:5_spectral_analysis.pwelch>

Estimation spectrale par la methode de Welch.

== Syntaxe

- #raw("[Pxx, F] = pwelch(X)");
- #raw("[Pxx, F] = pwelch(X, window, noverlap, NFFT, Fs)");
- #raw("[Pxx, F] = pwelch(..., FREQRANGE)");
- #raw("[Pxx, F] = pwelch(..., SPECTRUMTYPE)");

== Argument d'entrée

/ X: signal d'entree.
/ window: vecteur de fenetre ou longueur.
/ noverlap: nombre d'echantillons de recouvrement.
/ NFFT: longueur de FFT.
/ Fs: frequence d'echantillonnage.
/ FREQRANGE: #raw("'onesided'");, #raw("'twosided'");, #raw("'centered'");, #raw("'half'"); ou #raw("'whole'");.
/ SPECTRUMTYPE: #raw("'psd'"); ou #raw("'power'");.

== Argument de sortie

/ Pxx: estimation spectrale moyennee.
/ F: vecteur de frequences.

== Description

#strong[pwelch]; estime un spectre en moyennant des periodogrammes de segments recouvrants.


== Exemples

``````matlab

[pxx, f] = pwelch(rand(256, 1), hamming(64), 32, 128, 1, 'centered');

``````

Tracer la densite spectrale de puissance par la methode de Welch.

``````matlab
pwelch(sin((0:255)' * 0.1) + 0.5 * sin((0:255)' * 0.4), hamming(64), 32, 128, 1, 'centered');
``````


#align(center)[#image("pwelch.svg")]

== Voir aussi

#nlink(<signal_processing:5_spectral_analysis.periodogram>)[periodogram];, #nlink(<signal_processing:3_transforms_correlation_modeling.cpsd>)[cpsd];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
