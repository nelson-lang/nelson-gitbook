#import "../nelson_help.typ": *

= median <statistics:1_descriptive_statistics_visualization.median>

Valeur mediane des elements d'un tableau.

== Syntaxe

- #raw("R = median(M)");
- #raw("R = median(M, d)");
- #raw("R = median(M, 'all')");
- #raw("R = median(..., 'omitnan')");

== Description

#strong[median]; renvoie la valeur centrale des donnees triees selon la dimension choisie.


== Exemple

``````matlab
R = median([4 1 2 3])
``````


== Voir aussi

#nlink(<statistics:1_descriptive_statistics_visualization.mean>)[mean];, #nlink(<data_analysis:sort>)[sort];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
