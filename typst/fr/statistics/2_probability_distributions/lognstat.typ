#import "../nelson_help.typ": *

= lognstat <statistics:2_probability_distributions.lognstat>

Moyenne et variance lognormales

== Syntaxe

- #raw("[m, v] = lognstat(mu, sigma)");

== Argument d'entrée

/ mu: scalaire reel ou tableau : moyenne des valeurs logarithmiques.
/ sigma: scalaire non negatif ou tableau : ecart-type des valeurs logarithmiques.

== Argument de sortie

/ m: tableau : moyennes.
/ v: tableau : variances.

== Description

#strong[lognstat]; renvoie la moyenne et la variance element par element de lois lognormales.


== Exemple

``````matlab
[m, v] = lognstat(0, 1);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.lognpdf>)[lognpdf];, #nlink(<statistics:2_probability_distributions.lognrnd>)[lognrnd];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
