#import "../nelson_help.typ": *

= logninv <statistics:2_probability_distributions.logninv>

Inverse de repartition lognormale

== Syntaxe

- #raw("x = logninv(p)");
- #raw("x = logninv(p, mu, sigma)");
- #raw("[x, xLo, xUp] = logninv(p, mu, sigma, pCov)");

== Argument d'entrée

/ p: probabilites dans \[0, 1\].
/ mu: scalaire reel ou tableau : moyenne des valeurs logarithmiques.
/ sigma: scalaire positif ou tableau : ecart-type des valeurs logarithmiques.
/ pCov: matrice de covariance 2 par 2 pour les bornes de confiance.

== Argument de sortie

/ x: tableau : valeurs inverses cumulees.
/ xLo: tableau : bornes de confiance inferieures.
/ xUp: tableau : bornes de confiance superieures.

== Description

#strong[logninv]; evalue les inverses lognormales element par element.


== Exemple

``````matlab
p = [0.15865525393145707 0.5 0.8413447460685429];
x = logninv(p);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.lognpdf>)[lognpdf];, #nlink(<statistics:2_probability_distributions.logncdf>)[logncdf];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
