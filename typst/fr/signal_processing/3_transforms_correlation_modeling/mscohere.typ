#import "../nelson_help.typ": *

= mscohere <signal_processing:3_transforms_correlation_modeling.mscohere>

Estimation de coherence quadratique.

== Syntaxe

- #raw("[Cxy, F] = mscohere(X, Y)");
- #raw("[Cxy, F] = mscohere(X, Y, window, noverlap, nfft, fs)");
- #raw("[Cxy, F] = mscohere(..., FREQRANGE)");

== Argument d'entrée

/ X, Y: signaux d'entree.
/ window: fenetre d'analyse.
/ noverlap: nombre d'echantillons de recouvrement.
/ nfft: longueur de FFT.
/ fs: frequence d'echantillonnage.
/ FREQRANGE: #raw("'onesided'");, #raw("'twosided'");, #raw("'centered'");, #raw("'half'"); ou #raw("'whole'");.

== Argument de sortie

/ Cxy: estimation de coherence.
/ F: vecteur de frequences.

== Description

#strong[mscohere]; estime la correlation lineaire normalisee dans le domaine frequentiel.


== Exemple

``````matlab

[cxy, f] = mscohere(sin((0:63)'), cos((0:63)'), hamming(16), 8, 32, 10, 'centered');

``````


== Voir aussi

#nlink(<signal_processing:3_transforms_correlation_modeling.cpsd>)[cpsd];, #nlink(<signal_processing:3_transforms_correlation_modeling.tfestimate>)[tfestimate];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
