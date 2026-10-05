#import "../nelson_help.typ": *

= cheb1ord <signal_processing:4_digital_filters.cheb1ord>

Ordre minimal pour un filtre Chebyshev type I.

== Syntaxe

- #raw("[N, Wn] = cheb1ord(Wp, Ws, Rp, Rs)");

== Argument d'entrée

/ Wp: frequence limite de bande passante.
/ Ws: frequence limite de bande attenuee.
/ Rp: ondulation de bande passante en dB.
/ Rs: attenuation de bande attenuee en dB.

== Argument de sortie

/ N: ordre du filtre.
/ Wn: frequence de coupure.

== Description

#strong[cheb1ord]; estime un ordre et une coupure pour la conception Chebyshev type I.


== Exemple

``````matlab

[n, wn] = cheb1ord(0.2, 0.3, 1, 40);

``````


== Voir aussi

#nlink(<signal_processing:4_digital_filters.cheby1>)[cheby1];, #nlink(<signal_processing:4_digital_filters.buttord>)[buttord];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
