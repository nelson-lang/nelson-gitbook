#import "../nelson_help.typ": *

= tfestimate <signal_processing:3_transforms_correlation_modeling.tfestimate>

Estimation de fonction de transfert.

== Syntaxe

- #raw("[Txy, F] = tfestimate(X, Y)");
- #raw("[Txy, F] = tfestimate(X, Y, window, noverlap, nfft, fs)");
- #raw("[Txy, F] = tfestimate(..., FREQRANGE)");

== Argument d'entrée

/ X, Y: signaux d'entree et de sortie.
/ window: fenetre d'analyse.
/ noverlap: nombre d'echantillons de recouvrement.
/ nfft: longueur de FFT.
/ fs: frequence d'echantillonnage.
/ FREQRANGE: #raw("'onesided'");, #raw("'twosided'");, #raw("'centered'");, #raw("'half'"); ou #raw("'whole'");.

== Argument de sortie

/ Txy: estimation de fonction de transfert.
/ F: vecteur de frequences.

== Description

#strong[tfestimate]; estime une reponse frequentielle a partir de signaux d'entree et de sortie.


== Exemple

``````matlab

[txy, f] = tfestimate(sin((0:63)'), cos((0:63)'), hamming(16), 8, 32, 10, 'twosided');

``````


== Voir aussi

#nlink(<signal_processing:3_transforms_correlation_modeling.cpsd>)[cpsd];, #nlink(<signal_processing:3_transforms_correlation_modeling.mscohere>)[mscohere];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
