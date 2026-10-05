#import "../nelson_help.typ": *

= buttord <signal_processing:4_digital_filters.buttord>

Ordre minimal pour un filtre Butterworth.

== Syntaxe

- #raw("[N, Wn] = buttord(Wp, Ws, Rp, Rs)");

== Argument d'entrée

/ Wp: frequence limite de bande passante.
/ Ws: frequence limite de bande attenuee.
/ Rp: ondulation de bande passante en dB.
/ Rs: attenuation de bande attenuee en dB.

== Argument de sortie

/ N: ordre du filtre.
/ Wn: frequence de coupure naturelle.

== Description

#strong[buttord]; estime le plus petit ordre Butterworth satisfaisant les specifications.


== Exemple

``````matlab

[n, wn] = buttord(0.2, 0.3, 1, 40);

``````


== Voir aussi

#nlink(<signal_processing:4_digital_filters.butter>)[butter];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
