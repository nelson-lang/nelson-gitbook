#import "../nelson_help.typ": *

= fir1 <signal_processing:4_digital_filters.fir1>

Conception de filtre FIR par fenêtrage.

== Syntaxe

- #raw("B = fir1(N, Wn)");
- #raw("B = fir1(N, Wn, type)");
- #raw("B = fir1(N, Wn, window)");

== Argument d'entrée

/ N: ordre du filtre.
/ Wn: fréquence de coupure normalisée ou paire de fréquences.
/ type: type de filtre, par exemple 'low', 'high', 'bandpass' ou 'stop'.
/ window: fenêtre de longueur N + 1.

== Argument de sortie

/ B: coefficients FIR du numérateur.

== Description

#strong[fir1]; conçoit un filtre FIR à phase linéaire par fenêtrage d'une réponse impulsionnelle idéale.


== Exemple

``````matlab

b = fir1(16, 0.25);

``````


== Voir aussi

#nlink(<signal_processing:4_digital_filters.freqz>)[freqz];, #nlink(<signal_processing:5_spectral_analysis.kaiser>)[kaiser];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
