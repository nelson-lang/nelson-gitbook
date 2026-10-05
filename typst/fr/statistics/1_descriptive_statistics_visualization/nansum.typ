#import "../nelson_help.typ": *

= nansum <statistics:1_descriptive_statistics_visualization.nansum>

Somme, en ignorant les valeurs NaN.

== Syntaxe

- #raw("y = nansum(X)");
- #raw("y = nansum(X, dim)");
- #raw("y = nansum(X, vecdim)");
- #raw("y = nansum(X, 'all')");

== Description

#strong[nansum]; calcule la somme apres suppression des valeurs #strong[NaN]; de chaque tranche traitee ; une tranche uniquement composee de #strong[NaN]; a pour somme #strong[0];.

 La dimension de travail par defaut est la premiere dimension non singuliere.

 Equivalent a #strong[sum(X, ..., 'omitnan')];.


== Exemple

``````matlab
y = nansum([1 NaN 3 NaN 5])
``````


== Voir aussi

#nlink(<data_analysis:sum>)[sum];, #nlink(<statistics:1_descriptive_statistics_visualization.nanmean>)[nanmean];, #nlink(<statistics:1_descriptive_statistics_visualization.nanmax>)[nanmax];, #nlink(<statistics:1_descriptive_statistics_visualization.nanmin>)[nanmin];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
