#import "../../nelson_help.typ": *

= bar <graphics:1_plots.6_discrete_data_plots.bar>

Diagramme en barres.

== Syntaxe

- #raw("bar(Y)");
- #raw("bar(X, Y)");
- #raw("bar(..., width)");
- #raw("bar(..., color)");
- #raw("bar(..., 'grouped')");
- #raw("bar(..., 'stacked')");
- #raw("bar(..., propertyName, propertyValue)");
- #raw("bar(ax, ...)");
- #raw("b = bar(...)");

== Argument d'entrée

/ X: abscisses : scalaire, vecteur, tableau categorical, tableau de chaines ou cellule d'etiquettes.
/ Y: ordonnees : vecteur ou matrice.
/ width: scalaire, 0.8 par defaut.
/ color: chaine scalaire ou vecteur ligne de caracteres : nom de couleur ou nom court de couleur.
/ propertyName: chaine scalaire ou vecteur ligne de caracteres.
/ propertyValue: une valeur.
/ ax: objet axes.

== Argument de sortie

/ b: objet graphique bar ou vecteur d'objets graphiques bar.

== Description

#strong[bar(X, Y)]; cree un diagramme en barres avec les positions X et les valeurs Y.

 Lorsqu'un seul argument est fourni, #strong[bar(Y)]; genere les positions X de 1 au nombre de lignes de Y.

 Vous pouvez specifier la largeur des barres. Une valeur de 1.0 fait toucher les barres voisines, tandis que la largeur par defaut vaut 0.8.

 Lorsque Y est une matrice, #strong[bar]; cree des barres groupees par defaut. Utiliser #strong['stacked']; pour empiler les colonnes dans chaque groupe.

 Lorsque X est un tableau categoriel, les barres sont placees dans l'ordre des categories (celui renvoye par #strong[categories];), Y est reordonne en consequence, et les noms des categories servent d'etiquettes de graduation.

 Voir #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.bar.properties>)[proprietes de bar]; pour la liste complete des proprietes.


== Exemples

Diagramme en barres depuis un vecteur.

``````matlab
f = figure();
y = [91 75 123.5 105 150 131 203 179 249 226 281.5];
bar(y);

``````


#align(center)[#image("bar_1.svg")]
Diagramme avec des barres plus etroites.

``````matlab
f = figure();
y = [91 75 123.5 105 150 131 203 179 249 226 281.5];
bar(y, 0.5);

``````


#align(center)[#image("bar_2.svg")]
Diagramme avec positions explicites et couleur.

``````matlab
f = figure();
x = 1900:10:2000;
y = [75 91 105 123.5 131 150 179 203 226 249 281.5];
bar(x, y, 'r');

``````


#align(center)[#image("bar_3.svg")]
Diagramme avec etiquettes de chaines.

``````matlab
f = figure();
x = ["Summer", "Spring", "Winter", "Autumn"];
y = [2 1 4 3];
bar(x, y);

``````


#align(center)[#image("bar_4.svg")]
Diagramme avec proprietes de face et de contour.

``````matlab
f = figure();
y = [91 75 123.5 105 150 131 203 179 249 226 281.5];
bar(y, 'FaceColor', [0 .5 .5], 'EdgeColor', [0 .9 .9], 'LineWidth', 1.5);

``````


#align(center)[#image("bar_5.svg")]
Barres groupees.

``````matlab
f = figure();
y = [1 2; 3 4; 5 6];
bar(y, 'grouped');

``````


#align(center)[#image("bar_6.svg")]
Barres empilees avec valeurs positives et negatives.

``````matlab
f = figure();
y = [1 -2 3; -4 5 -6];
bar(y, 'stacked');

``````


#align(center)[#image("bar_7.svg")]
Barres empilees a une position scalaire.

``````matlab
f = figure();
x = 2020;
y = [30 50 23];
bar(x, y, "stacked");

``````


#align(center)[#image("bar_8.svg")]
Diagramme avec etiquettes categoriales.

``````matlab
f = figure();
X = categorical({'Small', 'Medium', 'Large', 'Extra Large'});
X = reordercats(X, {'Small', 'Medium', 'Large', 'Extra Large'});
Y = [10 21 33 52];
bar(X, Y);

``````


#align(center)[#image("bar_9.svg")]
Diagramme depuis une variable de table.

``````matlab
f = figure();
Month = ["April"; "May"; "June"; "July"; "August"];
Sales = [2000; 3000; 4000; 5000; 6000];
Revenue = [1500; 1800; 2000; 3000; 4000];
tbl = table(Month, Sales, Revenue);
bar(tbl.Month, tbl.Sales);

``````


#align(center)[#image("bar_10.svg")]
Barres groupees depuis plusieurs variables de table.

``````matlab
f = figure();
Month = ["April"; "May"; "June"; "July"; "August"];
Sales = [2000; 3000; 4000; 5000; 6000];
Revenue = [1500; 1800; 2000; 3000; 4000];
tbl = table(Month, Sales, Revenue);
bar(tbl.Month, [tbl.Sales, tbl.Revenue]);
legend({'Sales', 'Revenue'}, 'Location', 'northwest');

``````


#align(center)[#image("bar_11.svg")]

== Voir aussi

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.bar.properties>)[proprietes de bar];, #nlink(<graphics:1_plots.4_data_distribution_plots.hist>)[hist];, #nlink(<graphics:1_plots.6_discrete_data_plots.barh>)[barh];, #nlink(<graphics:1_plots.6_discrete_data_plots.bar3>)[bar3];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [1.12.0], [Gestion du nom de couleur ou du nom court de couleur.],
)

// Auteur: Allan CORNET
