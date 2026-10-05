#import "../nelson_help.typ": *

= wblcdf <statistics:2_probability_distributions.wblcdf>

Fonction de repartition Weibull

== Syntaxe

- #raw("p = wblcdf(x)");
- #raw("p = wblcdf(x, a)");
- #raw("p = wblcdf(x, a, b)");
- #raw("p = wblcdf(x, a, b, 'upper')");

== Argument d'entrée

/ x: scalaire reel ou tableau : valeurs.
/ a: scalaire positif ou tableau : parametre d'echelle. La valeur par defaut est 1.
/ b: scalaire positif ou tableau : parametre de forme. La valeur par defaut est 1.
/ 'upper': option pour retourner la probabilite de queue superieure.

== Argument de sortie

/ p: tableau : valeurs de probabilite.

== Description

#strong[wblcdf]; evalue les probabilites cumulees Weibull element par element.


== Exemple

``````matlab
x = [0 2 4];
p = wblcdf(x, 2, 3);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.wblpdf>)[wblpdf];, #nlink(<statistics:2_probability_distributions.wblinv>)[wblinv];, #nlink(<statistics:2_probability_distributions.wblrnd>)[wblrnd];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
