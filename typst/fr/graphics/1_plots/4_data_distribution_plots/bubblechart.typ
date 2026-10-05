#import "../../nelson_help.typ": *

= bubblechart <graphics:1_plots.4_data_distribution_plots.bubblechart>

Afficher un graphique a bulles.

== Syntaxe

- #raw("bubblechart(x, y, sz)");
- #raw("bubblechart(x, y, sz, c)");
- #raw("bubblechart(tbl, xvar, yvar, sizevar)");
- #raw("bubblechart(tbl, xvar, yvar, sizevar, cvar)");
- #raw("bubblechart(parent, ...)");
- #raw("bubblechart(..., propertyName, propertyValue)");
- #raw("h = bubblechart(...)");

== Description

#strong[bubblechart]; affiche un graphique dont les tailles des marqueurs circulaires sont controlees par #strong[sz];.

 #strong[x];, #strong[y]; et #strong[sz]; peuvent etre des vecteurs ou des matrices. Avec #strong[x]; et #strong[y]; vectoriels et #strong[sz]; scalaire, un objet bubblechart est cree pour chaque point. Les matrices creent un objet par serie de donnees.

 #strong[c]; specifie les couleurs des bulles. Cette valeur peut etre un nom de couleur, un nom court, un triplet RGB, un vecteur de couleurs ou une matrice RGB.

 La syntaxe table lit les variables depuis #strong[tbl];. Les selecteurs de variables peuvent etre des noms, des tableaux de chaines, des cellules de noms, des indices numeriques ou des vecteurs logiques.

 Voir #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.bubblechart.properties>)[proprietes de bubblechart]; pour la liste complete des proprietes.


== Exemples

Afficher un graphique a bulles.

``````matlab
bubblechart(1:5, [3 5 2 8 4], [20 50 30 80 40], 'BubbleColor', 'r');
``````


#align(center)[#image("bubblechart_1.svg")]
Afficher plusieurs series depuis des matrices.

``````matlab
x = [1 2 3; 4 5 6];
y = [2 4 3; 5 6 4];
sz = [20 40 60; 50 30 70];
bubblechart(x, y, sz);
``````


#align(center)[#image("bubblechart_2.svg")]
Utiliser des variables de table.

``````matlab
t = table((1:4)', [4; 2; 6; 3], [20; 60; 30; 80], [1; 2; 3; 4], ...
  'VariableNames', {'x', 'y', 's', 'c'});
bubblechart(t, 'x', 'y', 's', 'c');
``````


#align(center)[#image("bubblechart_3.svg")]

== Voir aussi

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.bubblechart.properties>)[proprietes de bubblechart];, #nlink(<graphics:1_plots.4_data_distribution_plots.scatter>)[scatter];, #nlink(<graphics:1_plots.4_data_distribution_plots.bubblechart3>)[bubblechart3];.
