#import "../../nelson_help.typ": *

= bubblechart3 <graphics:1_plots.4_data_distribution_plots.bubblechart3>

Afficher un graphique a bulles 3-D.

== Syntaxe

- #raw("bubblechart3(x, y, z, sz)");
- #raw("bubblechart3(x, y, z, sz, c)");
- #raw("bubblechart3(tbl, xvar, yvar, zvar, szvar)");
- #raw("bubblechart3(tbl, xvar, yvar, zvar, szvar, cvar)");
- #raw("bubblechart3(parent, ...)");
- #raw("bubblechart3(..., propertyName, propertyValue)");
- #raw("h = bubblechart3(...)");

== Description

#strong[bubblechart3]; affiche un nuage de points 3-D dont les tailles de marqueurs sont controlees par #strong[sz];.

 #strong[c]; specifie les couleurs des bulles. Il peut s'agir d'un nom de couleur, d'un nom court, d'un triplet RGB, d'un vecteur de couleurs ou d'une matrice RGB.

 L'entree table selectionne les donnees depuis les variables de #strong[tbl];. Chaque selecteur peut etre un nom de variable, une string, un indice, un selecteur logique, ou un vecteur cellule\/string de noms. Plusieurs variables selectionnees creent plusieurs objets #strong[bubblechart];.

 Le handle retourne est un objet #strong[bubblechart]; avec #strong[XData];, #strong[YData];, #strong[ZData]; et #strong[SizeData];.

 Voir #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.bubblechart.properties>)[proprietes de bubblechart]; pour la liste complete des proprietes.


== Exemples

Afficher un graphique a bulles 3-D.

``````matlab
t = 0:0.4:2*pi;
bubblechart3(cos(t), sin(t), t, 30 + 20 * t, 'b');
``````


#align(center)[#image("bubblechart3_1.svg")]
Creer un graphique a bulles 3-D depuis une table.

``````matlab
t = table((1:4)', [4; 2; 6; 3], [7; 8; 9; 10], [20; 60; 30; 80], [1; 2; 3; 4], ...
  'VariableNames', {'x', 'y', 'z', 's', 'c'});
h = bubblechart3(t, 'x', 'y', 'z', 's', 'c');
``````


#align(center)[#image("bubblechart3_2.svg")]

== Voir aussi

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.bubblechart.properties>)[proprietes de bubblechart];, #nlink(<graphics:1_plots.4_data_distribution_plots.scatter3>)[scatter3];, #nlink(<graphics:1_plots.4_data_distribution_plots.bubblechart>)[bubblechart];.
