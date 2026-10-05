#import "../nelson_help.typ": *

= crosstab <statistics:1_descriptive_statistics_visualization.crosstab>

Tableau croise.

== Syntaxe

- #raw("tbl = crosstab(x1, x2)");
- #raw("tbl = crosstab(x1, ..., xn)");
- #raw("tbl = crosstab(datatbl)");
- #raw("tbl = crosstab(..., 'IncludeMissingGroups', tf)");
- #raw("tbl = crosstab(..., 'OutputFormat', format)");
- #raw("[tbl, chi2, p, labels] = crosstab(...)");

== Description

#strong[crosstab]; compte les combinaisons de valeurs de variables de regroupement.

 Le format de sortie par defaut est une matrice numerique. Les formats pris en charge sont matrix, table et stacked-table. La statistique du chi-square et la p-value sont renvoyees pour les matrices de compte bidimensionnelles.


== Exemple

``````matlab
x = [1 1 2 2];
y = {'a', 'b', 'a', 'b'};
[tbl, chi2, p, labels] = crosstab(x, y)
``````


== Voir aussi

#nlink(<statistics:1_descriptive_statistics_visualization.tabulate>)[tabulate];, #nlink(<data_analysis:groupcounts>)[groupcounts];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
