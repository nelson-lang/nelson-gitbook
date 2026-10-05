#import "../../nelson_help.typ": *

= bubblelim <graphics:1_plots.4_data_distribution_plots.bubblelim>

Definit ou retourne les limites des donnees de taille des bulles.

== Syntaxe

- #raw("bubblelim(limits)");
- #raw("bubblelim('auto')");
- #raw("bubblelim('manual')");
- #raw("bubblelim(ax, ...)");
- #raw("limits = bubblelim()");
- #raw("mode = bubblelim('mode')");

== Argument d'entrée

/ limits: Vecteur numerique a deux elements \[min max\].
/ ax: Axes cible. Si omis, les axes courants sont utilises.

== Argument de sortie

/ limits: Limites courantes des donnees de taille des bulles.

== Description

#strong[bubblelim]; controle les limites de donnees utilisees pour convertir #strong[SizeData]; en diametres de bulles.


== Exemple

Definir les limites de bulles.

``````matlab
figure();
bubblechart(1:3, [2 4 6], [10 100 1000]);
bubblelim([10 1000]);
``````


#align(center)[#image("bubblelim_1.svg")]

== Voir aussi

#nlink(<graphics:1_plots.4_data_distribution_plots.bubblechart>)[bubblechart];, #nlink(<graphics:1_plots.4_data_distribution_plots.bubblesize>)[bubblesize];.

// Auteur: Allan CORNET
