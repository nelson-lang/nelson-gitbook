#import "../nelson_help.typ": *

= xcov <signal_processing:3_transforms_correlation_modeling.xcov>

Covariance croisée de signaux discrets.

== Syntaxe

- #raw("C = xcov(X)");
- #raw("C = xcov(X, Y)");
- #raw("[C, Lags] = xcov(..., maxlag)");
- #raw("[C, Lags] = xcov(..., scaleopt)");

== Argument d'entrée

/ X: signal d'entrée.
/ Y: second signal optionnel.
/ maxlag: retard maximal à retourner.
/ scaleopt: option de mise à l'échelle transmise à xcorr après retrait de la moyenne.

== Argument de sortie

/ C: séquence de covariance.
/ Lags: vecteur de retards.

== Description

#strong[xcov]; retire la moyenne de chaque signal puis calcule la séquence de corrélation correspondante.


== Exemple

``````matlab

[c, lags] = xcov([1 2 3], 1, 'biased');

``````


== Voir aussi

#nlink(<signal_processing:3_transforms_correlation_modeling.xcorr>)[xcorr];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
