#import "../nelson_help.typ": *

= nanmin <statistics:1_descriptive_statistics_visualization.nanmin>

Minimum, en ignorant les valeurs NaN.

== Syntaxe

- #raw("y = nanmin(X)");
- #raw("[y, idx] = nanmin(X)");
- #raw("y = nanmin(X, Y)");
- #raw("[y, idx] = nanmin(X, [], dim)");

== Description

#strong[nanmin]; renvoie le minimum apres suppression des valeurs #strong[NaN]; ; une tranche uniquement composee de #strong[NaN]; donne #strong[NaN];.

 #strong[nanmin(X, Y)]; renvoie le minimum element par element de #strong[X]; et #strong[Y];, en ignorant les #strong[NaN];.

 La deuxieme sortie optionnelle #strong[idx]; contient les indices des minima. Equivalent a #strong[min(X, ..., 'omitnan')];.


== Exemple

``````matlab
[y, idx] = nanmin([4 NaN 1 NaN 3])
``````


== Voir aussi

#nlink(<data_analysis:min>)[min];, #nlink(<statistics:1_descriptive_statistics_visualization.nanmax>)[nanmax];, #nlink(<statistics:1_descriptive_statistics_visualization.nansum>)[nansum];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
