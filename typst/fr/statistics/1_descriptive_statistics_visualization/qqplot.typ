#import "../nelson_help.typ": *

= qqplot <statistics:1_descriptive_statistics_visualization.qqplot>

Trace quantile-quantile.

== Syntaxe

- #raw("qqplot(x)");
- #raw("qqplot(x, y)");
- #raw("qqplot(..., p)");
- #raw("h = qqplot(...)");

== Description

#strong[qqplot]; cree un trace quantile-quantile pour des donnees d'echantillon.

 Avec un echantillon, Nelson compare les quantiles de l'echantillon aux quantiles normaux standards. Avec deux echantillons, Nelson compare les quantiles empiriques des deux echantillons. La valeur retournee contient les handles des lignes pour les donnees, la ligne des quartiles et la ligne de reference extrapolee.


== Exemple

``````matlab
x = randn(100, 1);
qqplot(x)
``````


== Voir aussi

#nlink(<statistics:1_descriptive_statistics_visualization.quantile>)[quantile];, #nlink(<statistics:2_probability_distributions.norminv>)[norminv];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
