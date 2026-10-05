#import "../../nelson_help.typ": *

= swarmchart3 <graphics:1_plots.4_data_distribution_plots.swarmchart3>

Afficher un swarm chart 3-D.

== Syntaxe

- #raw("swarmchart3(x, y, z)");
- #raw("swarmchart3(x, y, z, sz, c)");
- #raw("swarmchart3(..., propertyName, propertyValue)");
- #raw("h = swarmchart3(...)");

== Description

#strong[swarmchart3]; affiche des points 3-D avec un objet scatter. L'objet retourne conserve les donnees #strong[XData];, #strong[YData]; et #strong[ZData]; originales et utilise les proprietes de jitter de scatter pour les positions x et y affichees.

 Les proprietes prises en charge sont #strong[XJitter];, #strong[XJitterWidth];, #strong[YJitter];, #strong[YJitterWidth]; et #strong[ColorVariable];.


== Exemple

Afficher des observations groupees 3-D.

``````matlab
swarmchart3([1 1 2 2], [1 2 1 2], [4 5 6 7], 40, [0 0.4 0.8], 'filled');
``````


#align(center)[#image("swarmchart3_1.svg")]

== Voir aussi

#nlink(<graphics:1_plots.4_data_distribution_plots.scatter3>)[scatter3];, #nlink(<graphics:1_plots.4_data_distribution_plots.swarmchart>)[swarmchart];.
