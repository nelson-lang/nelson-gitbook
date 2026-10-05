#import "../../nelson_help.typ": *

= plotmatrix <graphics:1_plots.4_data_distribution_plots.plotmatrix>

Affiche une matrice de graphiques deux a deux.

== Syntaxe

- #raw("plotmatrix(X)");
- #raw("plotmatrix(X, Y)");
- #raw("plotmatrix(..., marqueur)");
- #raw("[h, ax, bigax, p, pax] = plotmatrix(...)");

== Description

#strong[plotmatrix]; cree une grille de graphiques deux a deux pour les colonnes de matrices numeriques. Avec une seule matrice, la diagonale inclut des histogrammes retournes dans #strong[p];, tandis que #strong[h]; contient les objets line des nuages de points.


== Exemples

Creer une matrice de graphiques pour trois variables.

``````matlab
X = [1 2 3; 2 3 5; 3 5 8; 4 7 13; 5 11 21];
plotmatrix(X);
``````


#align(center)[#image("plotmatrix_1.svg")]
Comparer les colonnes de deux matrices.

``````matlab
X = rand(30, 2);
Y = [X(:, 1).^2, sin(X(:, 2)), X(:, 1) + X(:, 2)];
plotmatrix(X, Y, 'o');
``````


#align(center)[#image("plotmatrix_2.svg")]

== Voir aussi

#nlink(<graphics:1_plots.4_data_distribution_plots.scatter>)[scatter];, #nlink(<graphics:1_plots.4_data_distribution_plots.histogram>)[histogram];, #nlink(<graphics:2_graphics_objects.2_layout_objects.subplot>)[subplot];.
