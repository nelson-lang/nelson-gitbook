#import "../nelson_help.typ": *

= wblpdf <statistics:2_probability_distributions.wblpdf>

Densite de probabilite Weibull

== Syntaxe

- #raw("y = wblpdf(x)");
- #raw("y = wblpdf(x, a)");
- #raw("y = wblpdf(x, a, b)");

== Argument d'entrée

/ x: scalaire reel ou tableau : valeurs.
/ a: scalaire positif ou tableau : parametre d'echelle. La valeur par defaut est 1.
/ b: scalaire positif ou tableau : parametre de forme. La valeur par defaut est 1.

== Argument de sortie

/ y: tableau : valeurs de densite.

== Description

#strong[wblpdf]; evalue les densites Weibull element par element.


== Exemple

``````matlab
x = [0 2 4];
y = wblpdf(x, 2, 3);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.wblcdf>)[wblcdf];, #nlink(<statistics:2_probability_distributions.wblinv>)[wblinv];, #nlink(<statistics:2_probability_distributions.wblrnd>)[wblrnd];, #nlink(<statistics:2_probability_distributions.wblstat>)[wblstat];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
