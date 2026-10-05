#import "../nelson_help.typ": *

= butter <signal_processing:4_digital_filters.butter>

Conception de filtre numérique de Butterworth.

== Syntaxe

- #raw("[B, A] = butter(N, Wn)");
- #raw("[B, A] = butter(N, Wn, type)");
- #raw("[Z, P, K] = butter(...)");

== Argument d'entrée

/ N: ordre du filtre.
/ Wn: fréquence de coupure normalisée.
/ type: type optionnel de filtre.

== Argument de sortie

/ B: coefficients du numérateur.
/ A: coefficients du dénominateur.
/ Z, P, K: représentation zéros-pôles-gain.

== Description

#strong[butter]; conçoit un filtre numérique IIR de Butterworth.


== Exemple

``````matlab

[b, a] = butter(2, 0.4);
[h, w] = freqz(b, a, 64);

``````


== Voir aussi

#nlink(<signal_processing:4_digital_filters.buttord>)[buttord];, #nlink(<signal_processing:4_digital_filters.freqz>)[freqz];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
