#import "../nelson_help.typ": *

= range <statistics:1_descriptive_statistics_visualization.range>

Étendue des valeurs

== Syntaxe

- #raw("Y = range(X)");
- #raw("Y = range(X, dim)");

== Argument d'entrée

/ X: tableau numérique ou logique.
/ dim: dimension le long de laquelle opérer.

== Argument de sortie

/ Y: différence entre les valeurs maximale et minimale.

== Description

#strong[range]; retourne la différence entre les valeurs maximale et minimale, max(X) - min(X). Pour une matrice, range opère sur chaque colonne ; range(X, dim) opère le long de la dimension dim. Les valeurs NaN sont ignorées.


== Exemple

``````matlab
range([3 1 8 4])
``````


== Voir aussi

#nlink(<statistics:1_descriptive_statistics_visualization.iqr>)[iqr];, #nlink(<statistics:1_descriptive_statistics_visualization.std>)[std];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
