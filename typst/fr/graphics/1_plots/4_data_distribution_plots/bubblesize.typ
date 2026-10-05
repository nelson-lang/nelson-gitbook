#import "../../nelson_help.typ": *

= bubblesize <graphics:1_plots.4_data_distribution_plots.bubblesize>

Definit ou retourne la plage des diametres affiches des bulles.

== Syntaxe

- #raw("bubblesize(range)");
- #raw("bubblesize(ax, range)");
- #raw("range = bubblesize()");

== Argument d'entrée

/ range: Vecteur positif a deux elements \[min max\], en points.
/ ax: Axes cible. Si omis, les axes courants sont utilises.

== Argument de sortie

/ range: Plage courante des diametres affiches des bulles.

== Description

#strong[bubblesize]; controle les diametres minimum et maximum affiches des bulles dans les axes.


== Exemple

Reduire les tailles de bulles.

``````matlab
figure();
bubblechart(1:3, [2 4 6], [10 100 1000]);
bubblesize([5 30]);
``````


#align(center)[#image("bubblesize_1.svg")]

== Voir aussi

#nlink(<graphics:1_plots.4_data_distribution_plots.bubblechart>)[bubblechart];, #nlink(<graphics:1_plots.4_data_distribution_plots.bubblelim>)[bubblelim];.

// Auteur: Allan CORNET
