#import "../nelson_help.typ": *

= probplot <statistics:1_descriptive_statistics_visualization.probplot>

Trace de probabilite.

== Syntaxe

- #raw("probplot(y)");
- #raw("probplot(y, cens)");
- #raw("probplot(y, cens, freq)");
- #raw("probplot(dist, ...)");
- #raw("probplot(..., 'noref')");
- #raw("h = probplot(...)");

== Description

#strong[probplot]; cree un trace de probabilite pour des donnees d'echantillon.

 La distribution par defaut est normale. Les noms de distribution pris en charge incluent normal, exponential, extreme value, half normal, lognormal, logistic, loglogistic, rayleigh et weibull. La valeur retournee contient les handles des lignes des points et, sauf avec noref, les lignes de reference.


== Exemple

``````matlab
x = randn(100, 1);
probplot(x)
``````


== Voir aussi

#nlink(<statistics:1_descriptive_statistics_visualization.qqplot>)[qqplot];, #nlink(<statistics:1_descriptive_statistics_visualization.ecdf>)[ecdf];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
