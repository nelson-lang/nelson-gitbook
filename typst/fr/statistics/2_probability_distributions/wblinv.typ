#import "../nelson_help.typ": *

= wblinv <statistics:2_probability_distributions.wblinv>

Inverse de la fonction de repartition Weibull

== Syntaxe

- #raw("x = wblinv(p)");
- #raw("x = wblinv(p, a)");
- #raw("x = wblinv(p, a, b)");

== Argument d'entrée

/ p: scalaire reel ou tableau : valeurs de probabilite.
/ a: scalaire positif ou tableau : parametre d'echelle. La valeur par defaut est 1.
/ b: scalaire positif ou tableau : parametre de forme. La valeur par defaut est 1.

== Argument de sortie

/ x: tableau : valeurs de probabilite inverse.

== Description

#strong[wblinv]; evalue les probabilites cumulees inverses Weibull element par element.


== Exemple

``````matlab
p = [0 0.5 0.9];
x = wblinv(p, 2, 3);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.wblpdf>)[wblpdf];, #nlink(<statistics:2_probability_distributions.wblcdf>)[wblcdf];, #nlink(<statistics:2_probability_distributions.wblrnd>)[wblrnd];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
