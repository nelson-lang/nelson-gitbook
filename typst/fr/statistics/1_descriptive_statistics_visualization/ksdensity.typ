#import "../nelson_help.typ": *

= ksdensity <statistics:1_descriptive_statistics_visualization.ksdensity>

Estimation par lissage a noyau.

== Syntaxe

- #raw("[f, xi] = ksdensity(x)");
- #raw("[f, xi] = ksdensity(x, pts)");
- #raw("[f, xi, bw] = ksdensity(...)");
- #raw("[...] = ksdensity(..., Name, Value)");
- #raw("ksdensity(...)");

== Description

#strong[ksdensity]; estime une fonction de distribution lissee a partir de donnees univariees avec un noyau normal.

 Les arguments nom-valeur incluent Bandwidth, Width, Function, NumPoints, Support, Weights, Frequency, Censoring, Kernel et BoundaryCorrection. Les types de fonction pris en charge sont pdf, cdf, survivor, cumhazard et icdf.


== Exemple

``````matlab
x = [0 1 2];
[f, xi, bw] = ksdensity(x)
``````


== Voir aussi

#nlink(<statistics:1_descriptive_statistics_visualization.ecdf>)[ecdf];, #nlink(<statistics:2_probability_distributions.normpdf>)[normpdf];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
