#import "../nelson_help.typ": *

= geomean <statistics:1_descriptive_statistics_visualization.geomean>

Moyenne geometrique d'un jeu de donnees.

== Syntaxe

- #raw("m = geomean(X)");
- #raw("m = geomean(X, dim)");
- #raw("m = geomean(X, vecdim)");
- #raw("m = geomean(X, 'all')");
- #raw("m = geomean(..., nanflag)");

== Description

#strong[geomean]; calcule la moyenne geometrique de donnees numeriques.

 Par defaut, les valeurs #strong[NaN]; sont incluses. Utiliser #strong[omitnan]; pour les ignorer.


== Exemple

``````matlab
X = reshape(1:30, [3 5 2]);
m = geomean(X, [1 2])
``````


== Voir aussi

#nlink(<statistics:1_descriptive_statistics_visualization.harmmean>)[harmmean];, #nlink(<statistics:1_descriptive_statistics_visualization.mean>)[mean];, #nlink(<statistics:1_descriptive_statistics_visualization.median>)[median];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
