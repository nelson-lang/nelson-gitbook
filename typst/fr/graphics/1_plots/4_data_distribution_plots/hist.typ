#import "../../nelson_help.typ": *

= hist <graphics:1_plots.4_data_distribution_plots.hist>

Tracé d'histogramme.

== Syntaxe

- #raw("hist(x)");
- #raw("hist(x, nbins)");
- #raw("hist(ax, ...)");
- #raw("counts = hist(...)");
- #raw("[counts, centers] = hist(...)");

== Argument d'entrée

/ x: vecteur ou matrice
/ nbins: vecteur.
/ ax: Objet axes.

== Argument de sortie

/ counts: Nombre d'éléments dans chaque intervalle : vecteur ligne pour une entrée vecteur, une colonne de comptes par colonne d'une entrée matricielle.
/ centers: Centres des intervalles : vecteur.

== Description

Un histogramme est une représentation graphique qui illustre la distribution des valeurs d'un ensemble de données.

 Lorsque vous utilisez la fonction #strong[hist];, elle organise les éléments du vecteur #strong[Y]; en 10 intervalles également espacés et fournit le nombre d'éléments dans chaque intervalle sous forme de vecteur ligne.

 #strong[hist(Y, x)]; avec un vecteur#strong[x];, la fonction retourne la distribution des valeurs de #strong[Y]; parmi des intervalles déterminés par la longueur de #strong[x];, avec des centres spécifiés par les valeurs de #strong[x];.

 Par exemple, si #strong[x]; est un vecteur de 5 éléments,#strong[hist]; classera les éléments de #strong[Y]; dans cinq intervalles, chacun centré sur l'axe des x aux valeurs spécifiées dans #strong[x];.

 Une matrice #strong[Y]; est un ensemble d'échantillons, un par colonne : #strong[hist]; compte chaque colonne séparément et retourne une colonne de comptes par colonne de #strong[Y];, et trace une série de barres par colonne. Les intervalles sont lus sur toute la matrice, donc chaque colonne est comptée sur les mêmes intervalles.

 Lorsque vous utilisez #strong[hist(...)]; sans spécifier d'argument de sortie, cela génère un tracé d'histogramme. Les intervalles sont répartis le long de l'axe des x entre les valeurs minimale et maximale trouvées dans le vecteur d'entrée #strong[Y];.

 Le module #strong[statistics]; fournit son propre #strong[hist];, auquel celui-ci se substitue dès que le module graphics est chargé. Tous deux comptent les intervalles de la même façon, si bien qu'un même appel renvoie les mêmes comptes de part et d'autre ; seul celui-ci trace et accepte des axes désignés.


== Exemple

``````matlab
f = figure();
for i = 1:4
  subplot(2, 2, i)
  hist(randn(1000, 1), 50)
end

``````


#align(center)[#image("hist_1.svg")]

== Voir aussi

#nlink(<graphics:1_plots.6_discrete_data_plots.bar>)[bar];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.patch>)[patch];, #nlink(<statistics:1_descriptive_statistics_visualization.hist>)[hist (statistics)];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
