#import "../nelson_help.typ": *

= lognpdf <statistics:2_probability_distributions.lognpdf>

Densite de probabilite lognormale

== Syntaxe

- #raw("y = lognpdf(x)");
- #raw("y = lognpdf(x, mu)");
- #raw("y = lognpdf(x, mu, sigma)");

== Argument d'entrée

/ x: scalaire reel ou tableau : valeurs.
/ mu: scalaire reel ou tableau : moyenne des valeurs logarithmiques. La valeur par defaut est 0.
/ sigma: scalaire positif ou tableau : ecart-type des valeurs logarithmiques. La valeur par defaut est 1.

== Argument de sortie

/ y: tableau : valeurs de densite.

== Description

#strong[lognpdf]; evalue les densites lognormales element par element.


== Exemple

``````matlab
x = [0 1 exp(1)];
y = lognpdf(x, 0, 1);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.logncdf>)[logncdf];, #nlink(<statistics:2_probability_distributions.logninv>)[logninv];, #nlink(<statistics:2_probability_distributions.lognrnd>)[lognrnd];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
