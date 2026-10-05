#import "../nelson_help.typ": *

= cheby2 <signal_processing:4_digital_filters.cheby2>

Conception de filtre numerique Chebyshev type II.

== Syntaxe

- #raw("[B, A] = cheby2(N, Rs, Wn)");
- #raw("[B, A] = cheby2(N, Rs, Wn, type)");
- #raw("[Z, P, K] = cheby2(...)");

== Argument d'entrée

/ N: ordre du filtre.
/ Rs: attenuation de bande attenuee en dB.
/ Wn: frequence de coupure normalisee ou paire de frequences.
/ type: type de filtre.

== Argument de sortie

/ B, A: coefficients de fonction de transfert.
/ Z, P, K: representation zeros-poles-gain.

== Description

#strong[cheby2]; concoit des filtres numeriques Chebyshev type II passe-bas, passe-haut, passe-bande et coupe-bande.


== Exemple

``````matlab

[b, a] = cheby2(3, 40, 0.25);

``````


== Voir aussi

#nlink(<signal_processing:4_digital_filters.cheby1>)[cheby1];, #nlink(<signal_processing:4_digital_filters.ellip>)[ellip];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
