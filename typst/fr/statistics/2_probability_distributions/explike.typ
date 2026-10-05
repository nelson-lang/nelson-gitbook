#import "../nelson_help.typ": *

= explike <statistics:2_probability_distributions.explike>

Oppose de la log-vraisemblance exponentielle

== Syntaxe

- #raw("nlogL = explike(mu, x)");
- #raw("[nlogL, avar] = explike(mu, x)");
- #raw("[nlogL, avar] = explike(mu, x, censoring, freq)");

== Argument d'entrée

/ mu: scalaire positif : parametre de moyenne exponentielle.
/ x: tableau reel non vide de valeurs finies positives ou nulles : donnees observees.
/ censoring: tableau contenant des valeurs 0 ou 1 : indicateurs de censure a droite.
/ freq: tableau de valeurs finies positives ou nulles : frequences d'observation.

== Argument de sortie

/ nlogL: scalaire : oppose de la log-vraisemblance.
/ avar: scalaire : estimation de variance asymptotique.

== Description

#strong[explike]; retourne l'oppose de la log-vraisemblance pour des donnees de loi exponentielle et l'estimation de variance asymptotique.


== Exemple

``````matlab
x = [0.5 1 2 3 5 8];
[nlogL, avar] = explike(3.25, x);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.expfit>)[expfit];, #nlink(<statistics:2_probability_distributions.exppdf>)[exppdf];, #nlink(<statistics:2_probability_distributions.expcdf>)[expcdf];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
