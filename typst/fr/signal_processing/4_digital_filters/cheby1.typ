#import "../nelson_help.typ": *

= cheby1 <signal_processing:4_digital_filters.cheby1>

Conception de filtre numerique Chebyshev type I.

== Syntaxe

- #raw("[B, A] = cheby1(N, Rp, Wn)");
- #raw("[B, A] = cheby1(N, Rp, Wn, type)");
- #raw("[Z, P, K] = cheby1(...)");

== Argument d'entrée

/ N: ordre du filtre.
/ Rp: ondulation de bande passante en dB.
/ Wn: frequence de coupure normalisee ou paire de frequences.
/ type: type de filtre.

== Argument de sortie

/ B, A: coefficients de fonction de transfert.
/ Z, P, K: representation zeros-poles-gain.

== Description

#strong[cheby1]; concoit des filtres numeriques Chebyshev type I passe-bas, passe-haut, passe-bande et coupe-bande.


== Exemple

``````matlab

[b, a] = cheby1(3, 1, 0.25);

``````


== Voir aussi

#nlink(<signal_processing:4_digital_filters.butter>)[butter];, #nlink(<signal_processing:4_digital_filters.cheb1ord>)[cheb1ord];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
