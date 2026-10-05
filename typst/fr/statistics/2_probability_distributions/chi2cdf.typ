#import "../nelson_help.typ": *

= chi2cdf <statistics:2_probability_distributions.chi2cdf>

Fonction de repartition chi-square

== Syntaxe

- #raw("p = chi2cdf(x, v)");
- #raw("p = chi2cdf(x, v, 'upper')");

== Argument d'entrée

/ x: tableau numerique reel : valeurs ou la distribution est evaluee.
/ v: tableau numerique reel positif ou scalaire : degres de liberte.

== Argument de sortie

/ p: probabilites cumulees ou probabilites de queue superieure.

== Description

#strong[chi2cdf]; calcule les probabilites chi-square de queue inferieure par defaut et de queue superieure avec #strong['upper'];.


== Exemple

``````matlab
x = [0.5 1 2 5];
p = chi2cdf(x, 4);
q = chi2cdf(x, 4, 'upper');
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.chi2pdf>)[chi2pdf];, #nlink(<statistics:2_probability_distributions.chi2inv>)[chi2inv];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
