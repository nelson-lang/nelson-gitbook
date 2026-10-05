#import "../nelson_help.typ": *

= ellip <signal_processing:4_digital_filters.ellip>

Conception de filtre numerique elliptique.

== Syntaxe

- #raw("[B, A] = ellip(N, Rp, Rs, Wn)");
- #raw("[B, A] = ellip(N, Rp, Rs, Wn, type)");
- #raw("[Z, P, K] = ellip(...)");

== Argument d'entrée

/ N: ordre du filtre.
/ Rp: ondulation de bande passante en dB.
/ Rs: attenuation de bande attenuee en dB.
/ Wn: frequence de coupure normalisee ou paire de frequences.

== Argument de sortie

/ B, A: coefficients de fonction de transfert.
/ Z, P, K: representation zeros-poles-gain.

== Description

#strong[ellip]; concoit des filtres numeriques elliptiques passe-bas, passe-haut, passe-bande et coupe-bande.


== Exemple

``````matlab

[b, a] = ellip(3, 1, 40, 0.25);

``````


== Voir aussi

#nlink(<signal_processing:4_digital_filters.ellipord>)[ellipord];, #nlink(<signal_processing:4_digital_filters.cheby2>)[cheby2];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
