#import "../../nelson_help.typ": *

= scatterhistogram <graphics:1_plots.4_data_distribution_plots.scatterhistogram>

Affiche un nuage de points avec histogrammes marginaux.

== Syntaxe

- #raw("scatterhistogram(x, y)");
- #raw("scatterhistogram(..., 'NumBins', n)");
- #raw("scatterhistogram(..., 'MarkerStyle', marqueur)");
- #raw("h = scatterhistogram(...)");

== Description

#strong[scatterhistogram]; cree un nuage de points et affiche les histogrammes des distributions x et y.

 L'objet retourne a le type #strong[scatterhistogram];. Voir #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.scatterhistogram.properties>)[proprietes de scatterhistogram]; pour la liste complete des proprietes.


== Exemple

Creer un nuage avec histogrammes marginaux.

``````matlab
x = randn(200, 1);
y = 0.5 * x + randn(200, 1);
scatterhistogram(x, y, 'NumBins', 20);
``````


#align(center)[#image("scatterhistogram_1.svg")]

== Voir aussi

#nlink(<graphics:1_plots.4_data_distribution_plots.scatter>)[scatter];, #nlink(<graphics:1_plots.4_data_distribution_plots.histogram>)[histogram];, #nlink(<graphics:1_plots.4_data_distribution_plots.binscatter>)[binscatter];, #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.scatterhistogram.properties>)[proprietes de scatterhistogram];.
