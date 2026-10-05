#import "../nelson_help.typ": *

= cheb2ord <signal_processing:4_digital_filters.cheb2ord>

Ordre minimal pour un filtre Chebyshev type II.

== Syntaxe

- #raw("[N, Wn] = cheb2ord(Wp, Ws, Rp, Rs)");

== Argument d'entrée

/ Wp: frequence limite de bande passante ou paire de frequences.
/ Ws: frequence limite de bande attenuee ou paire de frequences.
/ Rp: ondulation de bande passante en dB.
/ Rs: attenuation de bande attenuee en dB.

== Argument de sortie

/ N: ordre du filtre.
/ Wn: frequence de coupure de bande attenuee pour la conception Chebyshev type II.

== Description

#strong[cheb2ord]; estime un ordre et une coupure pour la conception Chebyshev type II.


== Exemple

``````matlab

[n, wn] = cheb2ord(0.2, 0.3, 1, 40);

``````


== Voir aussi

#nlink(<signal_processing:4_digital_filters.cheby2>)[cheby2];, #nlink(<signal_processing:4_digital_filters.cheb1ord>)[cheb1ord];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
