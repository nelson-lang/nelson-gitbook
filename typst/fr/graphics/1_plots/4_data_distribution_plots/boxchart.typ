#import "../../nelson_help.typ": *

= boxchart <graphics:1_plots.4_data_distribution_plots.boxchart>

Afficher une boite a moustaches pour donnees numeriques groupees.

== Syntaxe

- #raw("boxchart(ydata)");
- #raw("boxchart(xgroupdata, ydata)");
- #raw("boxchart(..., 'GroupByColor', cgroupdata)");
- #raw("boxchart(tbl, yvar)");
- #raw("boxchart(tbl, xvar, yvar)");
- #raw("boxchart(parent, ...)");
- #raw("boxchart(..., propertyName, propertyValue)");
- #raw("h = boxchart(...)");

== Description

#strong[boxchart]; affiche des boites pour des donnees numeriques. La valeur retournee est un ou plusieurs objets graphiques dont #strong[Type]; vaut #strong[boxchart];.

 Le graphe calcule les quartiles, la mediane, les moustaches, les caps, les valeurs aberrantes et les notches optionnelles pour chaque groupe numerique. Les valeurs NaN sont ignorees pendant le calcul des statistiques.

 Voir #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.boxchart.properties>)[proprietes de boxchart]; pour la liste complete des proprietes.


== Exemples

Boite simple.

``````matlab
f = figure();
boxchart([1 2 3 4 12], 'BoxFaceColor', [0.2 0.5 0.8]);

``````


#align(center)[#image("boxchart_1.svg")]
Boite groupee.

``````matlab
f = figure();
g = categorical({'A', 'A', 'A', 'B', 'B', 'B'});
y = [1 2 8 4 5 15];
boxchart(g, y, 'MarkerStyle', 'x');

``````


#align(center)[#image("boxchart_2.svg")]
Groupes de couleur.

``````matlab
f = figure();
x = [1 1 2 2 2 1];
y = [10 20 3 4 100 15];
c = categorical({'red', 'blue', 'red', 'blue', 'red', 'blue'});
boxchart(x, y, 'GroupByColor', c);

``````


#align(center)[#image("boxchart_3.svg")]
Boites pour les colonnes d'une matrice.

``````matlab
f = figure();
Y = magic(10);
boxchart(Y);
xlabel('Column');
ylabel('Value');

``````


#align(center)[#image("boxchart_4.svg")]
Notches et valeurs aberrantes jittered.

``````matlab
f = figure();
x = [ones(1, 8), 2 * ones(1, 8), 3 * ones(1, 8)];
y = [1 2 3 4 5 6 7 30, 4 5 6 7 8 9 10 11, 2 3 4 5 20 21 22 23];
boxchart(x, y, 'Notch', 'on', 'JitterOutliers', 'on');
xlabel('Group');
ylabel('Value');

``````


#align(center)[#image("boxchart_5.svg")]
Marqueur de valeur aberrante et charnieres de boite.

``````matlab
f = figure();
boxchart([1 2 3 4 100]);
xlabel('Sample');
ylabel('Value');

``````


#align(center)[#image("boxchart_6.svg")]

== Voir aussi

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.boxchart.properties>)[proprietes de boxchart];, #nlink(<graphics:1_plots.4_data_distribution_plots.boxplot>)[boxplot];.
