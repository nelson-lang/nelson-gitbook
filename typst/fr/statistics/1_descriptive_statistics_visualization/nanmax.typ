#import "../nelson_help.typ": *

= nanmax <statistics:1_descriptive_statistics_visualization.nanmax>

Maximum, en ignorant les valeurs NaN.

== Syntaxe

- #raw("y = nanmax(X)");
- #raw("[y, idx] = nanmax(X)");
- #raw("y = nanmax(X, Y)");
- #raw("[y, idx] = nanmax(X, [], dim)");

== Description

#strong[nanmax]; renvoie le maximum apres suppression des valeurs #strong[NaN]; ; une tranche uniquement composee de #strong[NaN]; donne #strong[NaN];.

 #strong[nanmax(X, Y)]; renvoie le maximum element par element de #strong[X]; et #strong[Y];, en ignorant les #strong[NaN];.

 La deuxieme sortie optionnelle #strong[idx]; contient les indices des maxima. Equivalent a #strong[max(X, ..., 'omitnan')];.


== Exemple

``````matlab
[y, idx] = nanmax([1 NaN 5 NaN 3])
``````


== Voir aussi

#nlink(<data_analysis:max>)[max];, #nlink(<statistics:1_descriptive_statistics_visualization.nanmin>)[nanmin];, #nlink(<statistics:1_descriptive_statistics_visualization.nansum>)[nansum];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
