#import "../nelson_help.typ": *

= grpstats <statistics:7_clustering_anomaly_detection.grpstats>

Statistiques de synthese par groupe.

== Syntaxe

- #raw("tblstats = grpstats(tbl, groupvars)");
- #raw("tblstats = grpstats(tbl, groupvars, whichstats)");
- #raw("tblstats = grpstats(tbl, groupvars, whichstats, 'DataVars', datavars)");
- #raw("stats = grpstats(X, group)");
- #raw("[stats1, ..., statsN] = grpstats(X, group, whichstats)");
- #raw("[...] = grpstats(..., 'Alpha', alpha)");

== Description

#strong[grpstats]; calcule des statistiques de synthese pour chaque groupe observe.

 Les noms de statistiques pris en charge sont mean, sem, std, var, min, max, range, median, mode, numel, gname, meanci et predci. Les fonctions anonymes sont aussi acceptees pour les entrees tableau numerique et les variables de donnees de table.


== Exemple

``````matlab
X = [1 10; 2 20; 3 30; 4 40];
g = [1 1 2 2]';
[m, s] = grpstats(X, g, {'mean', 'std'})
``````


== Voir aussi

#nlink(<data_analysis:groupsummary>)[groupsummary];, #nlink(<statistics:1_descriptive_statistics_visualization.tabulate>)[tabulate];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
