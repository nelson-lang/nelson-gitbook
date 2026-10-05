#import "../nelson_help.typ": *

= chi2stat <statistics:2_probability_distributions.chi2stat>

Moyenne et variance du khi deux

== Syntaxe

- #raw("[m, v] = chi2stat(nu)");

== Argument d'entrée

/ nu: scalaire positif ou tableau : degres de liberte.

== Argument de sortie

/ m: tableau : moyennes.
/ v: tableau : variances.

== Description

#strong[chi2stat]; retourne la moyenne et la variance de la loi du khi deux.


== Exemple

``````matlab
[m, v] = chi2stat([1 2 3]);
``````


== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
