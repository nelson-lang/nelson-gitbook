#import "../nelson_help.typ": *

= trimmean <statistics:1_descriptive_statistics_visualization.trimmean>

Moyenne apres suppression des valeurs extremes.

== Syntaxe

- #raw("m = trimmean(X, percent)");
- #raw("m = trimmean(X, percent, flag)");
- #raw("m = trimmean(..., dim)");
- #raw("m = trimmean(..., vecdim)");
- #raw("m = trimmean(..., 'all')");

== Description

#strong[trimmean]; calcule la moyenne apres suppression d'un pourcentage des plus petites et plus grandes valeurs. Les valeurs #strong[NaN]; sont omises.

 #strong[flag]; controle les comptes de rognage non entiers et peut valoir #strong[round];, #strong[floor]; ou #strong[weighted];.


== Exemple

``````matlab
X = reshape(1:40, [5 4 2]);
X([3 37]) = -100;
m = trimmean(X, 10, [1 2])
``````


== Voir aussi

#nlink(<statistics:1_descriptive_statistics_visualization.mean>)[mean];, #nlink(<statistics:1_descriptive_statistics_visualization.median>)[median];, #nlink(<statistics:1_descriptive_statistics_visualization.geomean>)[geomean];, #nlink(<statistics:1_descriptive_statistics_visualization.harmmean>)[harmmean];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
