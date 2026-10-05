#import "../nelson_help.typ": *

= wblstat <statistics:2_probability_distributions.wblstat>

Moyenne et variance Weibull

== Syntaxe

- #raw("[m, v] = wblstat(a, b)");

== Argument d'entrée

/ a: scalaire positif ou tableau : parametre d'echelle.
/ b: scalaire positif ou tableau : parametre de forme.

== Argument de sortie

/ m: tableau : moyennes.
/ v: tableau : variances.

== Description

#strong[wblstat]; retourne la moyenne et la variance de la loi Weibull.


== Exemple

``````matlab
[m, v] = wblstat(2, 3);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.wblpdf>)[wblpdf];, #nlink(<statistics:2_probability_distributions.wblcdf>)[wblcdf];, #nlink(<statistics:2_probability_distributions.wblinv>)[wblinv];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
