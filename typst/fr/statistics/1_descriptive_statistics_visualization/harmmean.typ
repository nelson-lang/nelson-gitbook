#import "../nelson_help.typ": *

= harmmean <statistics:1_descriptive_statistics_visualization.harmmean>

Moyenne harmonique d'un jeu de donnees.

== Syntaxe

- #raw("m = harmmean(X)");
- #raw("m = harmmean(X, dim)");
- #raw("m = harmmean(X, vecdim)");
- #raw("m = harmmean(X, 'all')");
- #raw("m = harmmean(..., nanflag)");

== Description

#strong[harmmean]; calcule la moyenne harmonique de donnees numeriques.

 Par defaut, les valeurs #strong[NaN]; sont incluses. Utiliser #strong[omitnan]; pour les ignorer.


== Exemple

``````matlab
X = reshape(1:30, [3 5 2]);
m = harmmean(X, [1 2])
``````


== Voir aussi

#nlink(<statistics:1_descriptive_statistics_visualization.geomean>)[geomean];, #nlink(<statistics:1_descriptive_statistics_visualization.mean>)[mean];, #nlink(<statistics:1_descriptive_statistics_visualization.median>)[median];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
