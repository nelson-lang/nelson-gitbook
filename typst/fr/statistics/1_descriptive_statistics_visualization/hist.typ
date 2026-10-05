#import "../nelson_help.typ": *

= hist <statistics:1_descriptive_statistics_visualization.hist>

Comptage des classes d'un histogramme.

== Syntaxe

- #raw("hist(Y)");
- #raw("hist(Y, nbins)");
- #raw("hist(Y, centers)");
- #raw("n = hist(...)");
- #raw("[n, c] = hist(...)");

== Argument d'entrée

/ Y: un vecteur numérique.
/ nbins: un scalaire : nombre de classes régulières (10 par défaut).
/ centers: un vecteur de centres de classes.

== Argument de sortie

/ n: le nombre d'éléments dans chaque classe.
/ c: les centres des classes.

== Description

#strong[hist]; répartit les éléments de #strong[Y]; dans des classes et renvoie les effectifs.

 Deux modules fournissent un #strong[hist]; : celui-ci et celui du module #strong[graphics];. Tous deux comptent les classes de la même façon, si bien qu'un même appel renvoie les mêmes effectifs de part et d'autre. Celui de #strong[graphics]; prend le dessus dès que ce module est chargé : c'est lui qui trace, et le seul qui accepte des axes désignés. Celui-ci répond là où #strong[graphics]; n'est pas chargé, comme dans #strong[nelson-cli];, et il ne fait que compter : lui demander de tracer signale que le module #strong[graphics]; est nécessaire.

 Cette fonction est ancienne ; #strong[histogram]; et #strong[histcounts]; sont préférables pour du code neuf.


== Exemple

``````matlab
[n, c] = hist([2 4 4 4 5 5 7 9], 3)
``````


== Voir aussi

#nlink(<graphics:1_plots.4_data_distribution_plots.hist>)[hist (graphics)];, #nlink(<elementary_functions:7_indexing_dimensions.histc>)[histc];, #nlink(<statistics:1_descriptive_statistics_visualization.tabulate>)[tabulate];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.14.0], [version initiale],
)

// Auteur: Allan CORNET
