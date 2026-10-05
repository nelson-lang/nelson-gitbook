#import "../nelson_help.typ": *

= histfit <statistics:1_descriptive_statistics_visualization.histfit>

Histogramme avec courbe de distribution ajustee.

== Syntaxe

- #raw("histfit(data)");
- #raw("histfit(data, nbins)");
- #raw("histfit(data, nbins, dist)");
- #raw("histfit(ax, ...)");
- #raw("h = histfit(...)");

== Description

#strong[histfit]; affiche un histogramme et superpose une courbe de densite ajustee, mise a l'echelle sur les comptes de l'histogramme.

 La distribution par defaut est normale. Les noms de distribution pris en charge incluent normal, kernel, exponential, gamma, beta, extreme value, half normal, lognormal, logistic, loglogistic, rayleigh et weibull.


== Exemple

``````matlab
x = randn(100, 1);
histfit(x, 12)
``````


== Voir aussi

#nlink(<graphics:1_plots.4_data_distribution_plots.histogram>)[histogram];, #nlink(<statistics:1_descriptive_statistics_visualization.ksdensity>)[ksdensity];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
