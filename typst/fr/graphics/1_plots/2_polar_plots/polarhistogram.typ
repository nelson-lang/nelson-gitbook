#import "../../nelson_help.typ": *

= polarhistogram <graphics:1_plots.2_polar_plots.polarhistogram>

Affiche des angles sous forme d'histogramme polaire.

== Syntaxe

- #raw("polarhistogram(theta)");
- #raw("polarhistogram(theta, nbins)");
- #raw("polarhistogram(..., 'BinEdges', edges)");
- #raw("h = polarhistogram(...)");

== Description

#strong[polarhistogram]; regroupe des angles en classes et affiche les effectifs sous forme de secteurs polaires.


== Exemple

Creer un histogramme polaire.

``````matlab
theta = 2*pi*rand(200, 1);
polarhistogram(theta, 16);
``````


#align(center)[#image("polarhistogram_1.svg")]

== Voir aussi

#nlink(<graphics:1_plots.4_data_distribution_plots.histogram>)[histogram];, #nlink(<graphics:1_plots.2_polar_plots.polarplot>)[polarplot];.
