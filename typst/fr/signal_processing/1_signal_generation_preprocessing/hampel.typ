#import "../nelson_help.typ": *

= hampel <signal_processing:1_signal_generation_preprocessing.hampel>

Filtrage d'aberrants par Hampel.

== Syntaxe

- #raw("Y = hampel(X)");
- #raw("Y = hampel(X, K)");
- #raw("[Y, I] = hampel(X, K, NSIGMA)");
- #raw("[Y, I, XMEDIAN, XSIGMA] = hampel(...)");

== Argument d'entrée

/ X: signal d'entree.
/ K: nombre de voisins de chaque cote.
/ NSIGMA: seuil en ecarts types robustes.

== Argument de sortie

/ Y: signal filtre.
/ I: indices logiques des aberrants.
/ XMEDIAN: valeurs medianes locales.
/ XSIGMA: estimations locales d'ecart type robuste.

== Description

#strong[hampel]; remplace les aberrants par la mediane locale.


== Exemple

``````matlab

[y, i] = hampel([1 1 10 1 1], 1, 2);

``````


== Voir aussi

#nlink(<signal_processing:1_signal_generation_preprocessing.medfilt1>)[medfilt1];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
