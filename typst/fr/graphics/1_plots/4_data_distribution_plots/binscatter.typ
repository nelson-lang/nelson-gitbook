#import "../../nelson_help.typ": *

= binscatter <graphics:1_plots.4_data_distribution_plots.binscatter>

Afficher un nuage de points regroupe par bins.

== Syntaxe

- #raw("binscatter(x, y)");
- #raw("binscatter(x, y, n)");
- #raw("binscatter(..., 'XLimits', limites, 'YLimits', limites)");
- #raw("binscatter(..., Nom, Valeur)");
- #raw("binscatter(parent, ...)");
- #raw("h = binscatter(...)");

== Description

#strong[binscatter]; compte les points dans des bins bidimensionnels et affiche les comptes avec un objet graphique natif binscatter.

 #strong[Values];, #strong[XBinEdges]; et #strong[YBinEdges]; sont des proprietes calculees en lecture seule.

 Lorsque les axes sont zoomes, le chart recalcule des bins plus petits afin que la region visible conserve approximativement la densite de bins demandee.

 Voir #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.binscatter.properties>)[proprietes de binscatter]; pour la liste complete des proprietes.


== Exemples

Afficher une densite de points par bins.

``````matlab
x = randn(1000, 1);
y = x + 0.5 * randn(1000, 1);
h = binscatter(x, y, [30 30]);
h.FaceAlpha = 0.9;
``````


#align(center)[#image("binscatter_1.svg")]
Inspecter les valeurs et les bords de bins calcules.

``````matlab
x = [0.1 0.2 0.8 1.2 1.8 1.9];
y = [0.1 0.9 0.8 1.2 1.1 1.9];
h = binscatter(x, y, [2 2], 'XLimits', [0 2], 'YLimits', [0 2]);
h.Values
h.XBinEdges
h.YBinEdges
``````


== Voir aussi

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.binscatter.properties>)[proprietes de binscatter];, #nlink(<graphics:1_plots.4_data_distribution_plots.scatter>)[scatter];, #nlink(<graphics:1_plots.4_data_distribution_plots.histogram2>)[histogram2];.
