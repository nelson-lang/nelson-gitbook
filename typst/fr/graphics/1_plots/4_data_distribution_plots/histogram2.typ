#import "../../nelson_help.typ": *

= histogram2 <graphics:1_plots.4_data_distribution_plots.histogram2>

Cree un histogramme bivarie.

== Syntaxe

- #raw("histogram2(X, Y)");
- #raw("histogram2(X, Y, nbins)");
- #raw("histogram2(X, Y, xedges, yedges)");
- #raw("histogram2(..., propertyName, propertyValue)");
- #raw("histogram2(ax, ...)");
- #raw("h = histogram2(...)");

== Argument d'entrée

/ X: valeurs x.
/ Y: valeurs y avec le meme nombre d'elements que X.
/ nbins: nombre de classes, scalaire ou vecteur a deux elements.
/ xedges: bornes x strictement croissantes.
/ yedges: bornes y strictement croissantes.
/ propertyName: nom d'une propriete de l'objet histogram2.
/ propertyValue: valeur d'une propriete de l'objet histogram2.
/ ax: objet axes cible.

== Argument de sortie

/ h: objet graphique histogram2.

== Description

#strong[histogram2]; regroupe des donnees numeriques appariees en classes et affiche les valeurs sous forme de barres 3-D ou de tuiles.

 Voir #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.histogram2.properties>)[proprietes de histogram2]; pour la liste complete des proprietes.


== Exemples

``````matlab
x = [1 1 2 3 4 4];
y = [1 2 2 3 3 4];
histogram2(x, y, [0 2 4], [0 2 4]);

``````


#align(center)[#image("histogram2_1.svg")]
``````matlab
x = randn(400, 1);
y = 0.5 * x + randn(400, 1);
histogram2(x, y, [12 10], 'Normalization', 'probability');

``````


#align(center)[#image("histogram2_2.svg")]
``````matlab
x = [1 1 2 3 4 4];
y = [1 2 2 3 3 4];
h = histogram2(x, y, [0 2 4], [0 2 4], 'DisplayStyle', 'tile');
h.ShowEmptyBins = 'on';

``````


#align(center)[#image("histogram2_3.svg")]

== Voir aussi

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.histogram2.properties>)[proprietes de histogram2];, #nlink(<graphics:1_plots.4_data_distribution_plots.histogram>)[histogram];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.surf>)[surf];.

// Auteur: Allan CORNET
