#import "../nelson_help.typ": *

= nanmean <statistics:1_descriptive_statistics_visualization.nanmean>

Moyenne en ignorant les valeurs NaN.

== Syntaxe

- #raw("m = nanmean(X)");
- #raw("m = nanmean(X, dim)");
- #raw("m = nanmean(X, vecdim)");
- #raw("m = nanmean(X, 'all')");

== Description

#strong[nanmean]; calcule la moyenne apres suppression des valeurs #strong[NaN]; dans chaque tranche traitee.

 La dimension par defaut est la premiere dimension non singleton.


== Exemple

``````matlab
X = magic(3);
X([1 6:9]) = NaN;
m = nanmean(X)
``````


== Voir aussi

#nlink(<statistics:1_descriptive_statistics_visualization.mean>)[mean];, #nlink(<statistics:1_descriptive_statistics_visualization.nanmedian>)[nanmedian];, #nlink(<statistics:1_descriptive_statistics_visualization.nanstd>)[nanstd];, #nlink(<statistics:1_descriptive_statistics_visualization.nanvar>)[nanvar];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
