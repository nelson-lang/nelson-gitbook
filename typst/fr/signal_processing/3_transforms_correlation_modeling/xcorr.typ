#import "../nelson_help.typ": *

= xcorr <signal_processing:3_transforms_correlation_modeling.xcorr>

Corrélation croisée de signaux discrets.

== Syntaxe

- #raw("C = xcorr(X)");
- #raw("C = xcorr(X, Y)");
- #raw("[C, Lags] = xcorr(..., maxlag)");
- #raw("[C, Lags] = xcorr(..., scaleopt)");

== Argument d'entrée

/ X: signal d'entrée.
/ Y: second signal optionnel.
/ maxlag: retard maximal à retourner.
/ scaleopt: option de mise à l'échelle : 'none', 'biased', 'unbiased', 'coeff' ou 'normalized'.

== Argument de sortie

/ C: séquence de corrélation.
/ Lags: vecteur de retards.

== Description

#strong[xcorr]; calcule l'auto-corrélation ou la corrélation croisée de signaux unidimensionnels.


== Exemple

``````matlab

[c, lags] = xcorr([1 2 3], 1, 'biased');

``````


== Voir aussi

#nlink(<signal_processing:3_transforms_correlation_modeling.xcov>)[xcov];, #nlink(<signal_processing:3_transforms_correlation_modeling.xcorr2>)[xcorr2];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
