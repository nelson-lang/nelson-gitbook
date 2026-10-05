#import "../nelson_help.typ": *

= wblrnd <statistics:2_probability_distributions.wblrnd>

Nombres aleatoires Weibull

== Syntaxe

- #raw("r = wblrnd(a, b)");
- #raw("r = wblrnd(a, b, sz)");
- #raw("r = wblrnd(a, b, sz1, ..., szN)");

== Argument d'entrée

/ a: scalaire positif ou tableau : parametre d'echelle.
/ b: scalaire positif ou tableau : parametre de forme.
/ sz: scalaire, vecteur ou dimensions separees par des virgules : taille de la sortie.

== Argument de sortie

/ r: tableau : valeurs aleatoires.

== Description

#strong[wblrnd]; genere des valeurs aleatoires de loi Weibull.


== Exemple

``````matlab
rng(0);
r = wblrnd(2, 3, 2, 3);
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
