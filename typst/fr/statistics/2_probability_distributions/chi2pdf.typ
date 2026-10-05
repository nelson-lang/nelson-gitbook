#import "../nelson_help.typ": *

= chi2pdf <statistics:2_probability_distributions.chi2pdf>

Densite de probabilite chi-square

== Syntaxe

- #raw("y = chi2pdf(x, v)");

== Argument d'entrée

/ x: tableau numerique reel : valeurs ou la densite est evaluee.
/ v: tableau numerique reel positif ou scalaire : degres de liberte.

== Argument de sortie

/ y: valeurs de densite.

== Description

#strong[chi2pdf]; calcule la densite de probabilite chi-square. Les entrees scalaires sont etendues aux tableaux.


== Exemple

``````matlab
x = [0.5 1 2 5];
y = chi2pdf(x, 4);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.chi2cdf>)[chi2cdf];, #nlink(<statistics:2_probability_distributions.chi2inv>)[chi2inv];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
