#import "../../nelson_help.typ": *

= bar3 <graphics:1_plots.6_discrete_data_plots.bar3>

Afficher un diagramme en barres verticales 3-D.

== Syntaxe

- #raw("bar3(Y)");
- #raw("bar3(Z, Y)");
- #raw("bar3(..., width)");
- #raw("bar3(..., 'detached')");
- #raw("bar3(..., 'grouped')");
- #raw("bar3(..., 'stacked')");
- #raw("bar3(..., color)");
- #raw("bar3(parent, ...)");
- #raw("h = bar3(...)");

== Argument d'entrée

/ Y: Vecteur ou matrice numerique des hauteurs de barres.
/ Z: positions des lignes de barres.
/ width: Largeur relative des barres. La valeur par defaut est 0.8.
/ color: nom de couleur ou nom court de couleur pour les faces.

== Argument de sortie

/ h: objet graphique surface ou vecteur d'objets graphiques surface.

== Description

#strong[bar3]; affiche les colonnes sous forme de cuboides 3-D. Les colonnes de la matrice sont placees selon x et les lignes selon y.

 Utiliser #strong['grouped']; pour grouper les colonnes de matrice a chaque position de ligne et #strong['stacked']; pour les empiler.


== Exemples

Barres 3-D detachees depuis une matrice.

``````matlab
f = figure();
Y = [1 2 3; 4 5 6];
bar3(Y);

``````


#align(center)[#image("bar3_1.svg")]
Barres 3-D depuis un vecteur.

``````matlab
f = figure();
z = [50 40 30 20 10];
bar3(z);

``````


#align(center)[#image("bar3_2.svg")]
Barres 3-D avec positions de lignes explicites.

``````matlab
f = figure();
z = [1950 1960 1970 1980 1990];
y = [16 8 4 2 1];
bar3(z, y);

``````


#align(center)[#image("bar3_3.svg")]
Barres 3-D groupees.

``````matlab
f = figure();
y = [1 2; 3 4; 5 6];
bar3(y, 'grouped');

``````


#align(center)[#image("bar3_4.svg")]
Barres 3-D empilees avec valeurs positives et negatives.

``````matlab
f = figure();
y = [1 -2; -3 4];
bar3(y, 'stacked');

``````


#align(center)[#image("bar3_5.svg")]
Definir la couleur et la transparence.

``````matlab
f = figure();
h = bar3(peaks(5), 0.6);
set(h, 'FaceColor', [0.2 0.5 0.8], 'FaceAlpha', 0.8);

``````


#align(center)[#image("bar3_6.svg")]

== Voir aussi

#nlink(<graphics:1_plots.6_discrete_data_plots.bar>)[bar];, #nlink(<graphics:1_plots.6_discrete_data_plots.bar3h>)[bar3h];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.surface>)[surface];.
