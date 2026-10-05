#import "../nelson_help.typ": *

= ellipord <signal_processing:4_digital_filters.ellipord>

Ordre minimal pour un filtre elliptique.

== Syntaxe

- #raw("[N, Wn] = ellipord(Wp, Ws, Rp, Rs)");

== Argument d'entrée

/ Wp: frequence limite de bande passante.
/ Ws: frequence limite de bande attenuee.
/ Rp: ondulation de bande passante en dB.
/ Rs: attenuation de bande attenuee en dB.

== Argument de sortie

/ N: ordre du filtre.
/ Wn: frequence de coupure.

== Description

#strong[ellipord]; estime un ordre et une coupure pour la conception elliptique.


== Exemple

``````matlab

[n, wn] = ellipord(0.2, 0.3, 1, 40);

``````


== Voir aussi

#nlink(<signal_processing:4_digital_filters.ellip>)[ellip];, #nlink(<signal_processing:4_digital_filters.buttord>)[buttord];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
