#import "../nelson_help.typ": *

= cpsd <signal_processing:3_transforms_correlation_modeling.cpsd>

Estimation de densite spectrale croisee.

== Syntaxe

- #raw("[Pxy, F] = cpsd(X, Y)");
- #raw("[Pxy, F] = cpsd(X, Y, window, noverlap, nfft, fs)");
- #raw("[Pxy, F] = cpsd(..., FREQRANGE)");

== Argument d'entrée

/ X, Y: signaux d'entree.
/ window: fenetre d'analyse.
/ noverlap: nombre d'echantillons de recouvrement.
/ nfft: longueur de FFT.
/ fs: frequence d'echantillonnage.
/ FREQRANGE: #raw("'onesided'");, #raw("'twosided'");, #raw("'centered'");, #raw("'half'"); ou #raw("'whole'");.

== Argument de sortie

/ Pxy: estimation de densite spectrale croisee.
/ F: vecteur de frequences.

== Description

#strong[cpsd]; estime une densite spectrale croisee en moyennant des segments recouvrants.


== Exemple

``````matlab

[pxy, f] = cpsd(sin((0:63)'), cos((0:63)'), hamming(16), 8, 32, 10, 'twosided');

``````


== Voir aussi

#nlink(<signal_processing:5_spectral_analysis.pwelch>)[pwelch];, #nlink(<signal_processing:3_transforms_correlation_modeling.mscohere>)[mscohere];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
