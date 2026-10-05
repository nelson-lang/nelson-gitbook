#import "../nelson_help.typ": *

= nanmedian <statistics:1_descriptive_statistics_visualization.nanmedian>

Mediane en ignorant les valeurs NaN.

== Syntaxe

- #raw("m = nanmedian(X)");
- #raw("m = nanmedian(X, dim)");
- #raw("m = nanmedian(X, vecdim)");
- #raw("m = nanmedian(X, 'all')");

== Description

#strong[nanmedian]; calcule la mediane apres suppression des valeurs #strong[NaN]; dans chaque tranche traitee.

 La dimension par defaut est la premiere dimension non singleton.


== Exemple

``````matlab
X = magic(3);
X([1 6:9]) = NaN;
m = nanmedian(X, 2)
``````


== Voir aussi

#nlink(<statistics:1_descriptive_statistics_visualization.median>)[median];, #nlink(<statistics:1_descriptive_statistics_visualization.nanmean>)[nanmean];, #nlink(<statistics:1_descriptive_statistics_visualization.nanstd>)[nanstd];, #nlink(<statistics:1_descriptive_statistics_visualization.nanvar>)[nanvar];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
