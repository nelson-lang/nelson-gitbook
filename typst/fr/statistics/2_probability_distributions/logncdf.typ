#import "../nelson_help.typ": *

= logncdf <statistics:2_probability_distributions.logncdf>

Fonction de repartition lognormale

== Syntaxe

- #raw("p = logncdf(x)");
- #raw("p = logncdf(x, mu, sigma)");
- #raw("[p, pLo, pUp] = logncdf(x, mu, sigma, pCov)");
- #raw("p = logncdf(..., 'upper')");

== Argument d'entrée

/ x: scalaire reel ou tableau : valeurs.
/ mu: scalaire reel ou tableau : moyenne des valeurs logarithmiques.
/ sigma: scalaire positif ou tableau : ecart-type des valeurs logarithmiques.
/ pCov: matrice de covariance 2 par 2 pour les bornes de confiance.

== Argument de sortie

/ p: tableau : probabilites cumulees.
/ pLo: tableau : bornes de confiance inferieures.
/ pUp: tableau : bornes de confiance superieures.

== Description

#strong[logncdf]; evalue les probabilites cumulees lognormales element par element.


== Exemple

``````matlab
p = logncdf([0 1 exp(1)]);
q = logncdf(exp(10), 'upper');
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.lognpdf>)[lognpdf];, #nlink(<statistics:2_probability_distributions.logninv>)[logninv];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
