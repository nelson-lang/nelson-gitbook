#import "../nelson_help.typ": *

= freqz <signal_processing:4_digital_filters.freqz>

Réponse fréquentielle d'un filtre numérique.

== Syntaxe

- #raw("[H, W] = freqz(B, A)");
- #raw("[H, W] = freqz(B, A, N)");
- #raw("[H, W] = freqz(B, A, N, 'whole')");
- #raw("[H, F] = freqz(B, A, N, Fs)");

== Argument d'entrée

/ B: coefficients du numérateur.
/ A: coefficients du dénominateur.
/ N: nombre de fréquences ou vecteur de fréquences.
/ Fs: fréquence d'échantillonnage.

== Argument de sortie

/ H: réponse fréquentielle complexe.
/ W: fréquences en radians par échantillon.
/ F: fréquences lorsque Fs est fourni.

== Description

#strong[freqz]; évalue la fonction de transfert définie par B et A sur le cercle unité.


== Exemple

``````matlab

[h, w] = freqz([1 1], 1, 8);

``````


== Voir aussi

#nlink(<signal_processing:4_digital_filters.phasez>)[phasez];, #nlink(<signal_processing:4_digital_filters.grpdelay>)[grpdelay];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
