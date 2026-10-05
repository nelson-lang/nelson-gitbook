#import "../../nelson_help.typ": *

= swarmchart <graphics:1_plots.4_data_distribution_plots.swarmchart>

Afficher un swarm chart 2-D.

== Syntaxe

- #raw("swarmchart(x, y)");
- #raw("swarmchart(x, y, sz, c)");
- #raw("swarmchart(..., propertyName, propertyValue)");
- #raw("h = swarmchart(...)");

== Description

#strong[swarmchart]; affiche les points avec un objet scatter. L'objet retourne conserve les donnees #strong[XData]; et #strong[YData]; originales et utilise les proprietes de jitter de scatter pour les positions x affichees.

 Les proprietes prises en charge sont #strong[XJitter];, #strong[XJitterWidth]; et #strong[ColorVariable];. Les autres arguments sont transmis a #strong[scatter];.


== Exemple

Afficher des observations groupees.

``````matlab
swarmchart([1 1 1 2 2 2], [4 5 3 7 6 8], 'filled');
``````


#align(center)[#image("swarmchart_1.svg")]

== Voir aussi

#nlink(<graphics:1_plots.4_data_distribution_plots.scatter>)[scatter];, #nlink(<graphics:1_plots.4_data_distribution_plots.swarmchart3>)[swarmchart3];.
