#import "../nelson_help.typ": *

= chi2inv <statistics:2_probability_distributions.chi2inv>

Inverse de la fonction de repartition chi-square

== Syntaxe

- #raw("x = chi2inv(p, v)");

== Argument d'entrée

/ p: tableau numerique reel de probabilites dans \[0,1\].
/ v: tableau numerique reel positif ou scalaire : degres de liberte.

== Argument de sortie

/ x: valeurs cumulees inverses.

== Description

#strong[chi2inv]; calcule l'inverse des probabilites chi-square de queue inferieure.


== Exemple

``````matlab
p = [0.025 0.5 0.975];
x = chi2inv(p, 4);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.chi2cdf>)[chi2cdf];, #nlink(<statistics:2_probability_distributions.chi2pdf>)[chi2pdf];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
