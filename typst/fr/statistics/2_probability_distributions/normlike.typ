#import "../nelson_help.typ": *

= normlike <statistics:2_probability_distributions.normlike>

Oppose de la log-vraisemblance normale

== Syntaxe

- #raw("nlogL = normlike(params, x)");
- #raw("[nlogL, avar] = normlike(params, x)");
- #raw("[nlogL, avar] = normlike(params, x, censoring, freq)");

== Argument d'entrée

/ params: vecteur reel a deux elements \[mu sigma\] : parametres de la loi normale.
/ x: tableau reel non vide de valeurs finies : donnees observees.
/ censoring: tableau contenant des valeurs 0 ou 1 : indicateurs de censure a droite.
/ freq: tableau de valeurs finies positives ou nulles : frequences d'observation.

== Argument de sortie

/ nlogL: scalaire : oppose de la log-vraisemblance.
/ avar: tableau 2 par 2 : estimation de covariance asymptotique.

== Description

#strong[normlike]; retourne l'oppose de la log-vraisemblance pour des donnees de loi normale et l'estimation de covariance asymptotique.


== Exemple

``````matlab
x = [-2 -1 0 1 3 5];
[nlogL, avar] = normlike([1 2], x);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.normfit>)[normfit];, #nlink(<statistics:2_probability_distributions.normpdf>)[normpdf];, #nlink(<statistics:2_probability_distributions.normcdf>)[normcdf];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
