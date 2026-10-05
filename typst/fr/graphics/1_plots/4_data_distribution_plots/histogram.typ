#import "../../nelson_help.typ": *

= histogram <graphics:1_plots.4_data_distribution_plots.histogram>

Crée un histogramme.

== Syntaxe

- #raw("histogram(X)");
- #raw("histogram(X, nbins)");
- #raw("histogram(X, edges)");
- #raw("histogram(C)");
- #raw("histogram(C, categories)");
- #raw("histogram(..., propertyName, propertyValue)");
- #raw("histogram(ax, ...)");
- #raw("h = histogram(...)");

== Argument d'entrée

/ X: données numériques.
/ nbins: nombre de classes.
/ edges: bornes de classes strictement croissantes.
/ C: données catégorielles.
/ categories: tableau de cellules de vecteurs de caractères ou tableau de chaînes sélectionnant les catégories à afficher et leur ordre.
/ propertyName: nom d'une propriété de l'objet histogramme.
/ propertyValue: valeur d'une propriété de l'objet histogramme.
/ ax: objet axes cible.

== Argument de sortie

/ h: objet graphique histogramme.

== Description

#strong[histogram]; regroupe des données numériques en classes et affiche les valeurs sous forme de barres ou d'escaliers.

 Lorsque #strong[C]; est un tableau catégoriel, #strong[histogram]; trace une barre par catégorie, dont la hauteur est le nombre d'éléments de cette catégorie. Les barres sont affichées dans l'ordre des catégories (celui renvoyé par #strong[categories];) et les noms des catégories servent d'étiquettes de graduation. Un second argument peut indiquer les catégories à afficher et leur ordre.

 Voir #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.histogram.properties>)[proprietes de histogram]; pour la liste complete des proprietes.


== Exemples

``````matlab
x = [1 1 2 2 2 3 4 4 5];
histogram(x);

``````


#align(center)[#image("histogram_1.svg")]
``````matlab
x = randn(200, 1);
histogram(x, 12, 'Normalization', 'probability', 'FaceAlpha', 0.5);

``````


#align(center)[#image("histogram_2.svg")]
``````matlab
x = [1 1 2 3 3 4 5];
h = histogram(x, [0 2 4 6], 'DisplayStyle', 'stairs');
h.LineWidth = 1.5;

``````


#align(center)[#image("histogram_3.svg")]
Histogramme catégoriel : une barre par catégorie, effectifs dans l'ordre des catégories.

``````matlab
C = categorical({'small', 'medium', 'large', 'small', 'medium', 'small'});
histogram(C);

``````


#align(center)[#image("histogram_4.svg")]

== Voir aussi

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.histogram.properties>)[proprietes de histogram];, #nlink(<graphics:1_plots.4_data_distribution_plots.hist>)[hist];, #nlink(<graphics:1_plots.6_discrete_data_plots.bar>)[bar];.

// Auteur: Allan CORNET
