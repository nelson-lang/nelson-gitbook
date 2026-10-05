#import "../../nelson_help.typ": *

= bar3h <graphics:1_plots.6_discrete_data_plots.bar3h>

Afficher un diagramme en barres horizontales 3-D.

== Syntaxe

- #raw("bar3h(Y)");
- #raw("bar3h(Z, Y)");
- #raw("bar3h(..., width)");
- #raw("bar3h(..., 'detached')");
- #raw("bar3h(..., 'grouped')");
- #raw("bar3h(..., 'stacked')");
- #raw("bar3h(..., color)");
- #raw("bar3h(parent, ...)");
- #raw("h = bar3h(...)");

== Argument d'entrée

/ Y: Vecteur ou matrice numerique des longueurs de barres.
/ Z: positions des lignes de barres.
/ width: Largeur relative des barres. La valeur par defaut est 0.8.
/ color: nom de couleur ou nom court de couleur pour les faces.

== Argument de sortie

/ h: objet graphique surface ou vecteur d'objets graphiques surface.

== Description

#strong[bar3h]; affiche des barres 3-D horizontales qui partent de x \= 0.

 Utiliser #strong['grouped']; pour grouper les colonnes de matrice a chaque position de ligne et #strong['stacked']; pour les empiler.


== Exemples

Barres horizontales 3-D detachees depuis une matrice.

``````matlab
f = figure();
Y = [1 3; 2 4; 5 2];
bar3h(Y);

``````


#align(center)[#image("bar3h_1.svg")]
Barres horizontales 3-D depuis un vecteur.

``````matlab
f = figure();
y = [50 40 30 20 10];
bar3h(y);

``````


#align(center)[#image("bar3h_2.svg")]
Barres horizontales 3-D avec positions explicites.

``````matlab
f = figure();
z = [1950 1960 1970 1980 1990];
y = [16 8 4 2 1];
bar3h(z, y);

``````


#align(center)[#image("bar3h_3.svg")]
Barres horizontales 3-D depuis une matrice.

``````matlab
f = figure();
y = [1 4 7; 2 5 8; 3 6 9; 4 7 10];
bar3h(y);

``````


#align(center)[#image("bar3h_4.svg")]
Barres horizontales 3-D depuis une matrice avec positions explicites.

``````matlab
f = figure();
z = [1 2 3 4];
y = [1 5 9; 2 6 10; 3 7 11; 4 8 12];
bar3h(z, y);

``````


#align(center)[#image("bar3h_5.svg")]
Barres horizontales 3-D avec largeur et couleur.

``````matlab
f = figure();
z = 0:pi/16:pi;
y = [sin(z') / 4, sin(z') / 2, sin(z')];
bar3h(z, y, 1, "r");

``````


#align(center)[#image("bar3h_6.svg")]
Barres horizontales 3-D groupees.

``````matlab
f = figure();
y = [1 2; 3 4; 5 6];
bar3h(y, 'grouped');

``````


#align(center)[#image("bar3h_7.svg")]
Barres horizontales 3-D empilees avec valeurs positives et negatives.

``````matlab
f = figure();
y = [1 -2; -3 4];
bar3h(y, 'stacked');

``````


#align(center)[#image("bar3h_8.svg")]

== Voir aussi

#nlink(<graphics:1_plots.6_discrete_data_plots.barh>)[barh];, #nlink(<graphics:1_plots.6_discrete_data_plots.bar3>)[bar3];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.surface>)[surface];.
