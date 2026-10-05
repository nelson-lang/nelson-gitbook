#import "../../nelson_help.typ": *

= violinplot <graphics:1_plots.4_data_distribution_plots.violinplot>

Afficher des distributions sous forme de violons.

== Syntaxe

- #raw("violinplot(y)");
- #raw("violinplot(xgroupdata, y)");
- #raw("violinplot('EvaluationPoints', evalPoints, 'DensityValues', densityValues)");
- #raw("violinplot(..., propertyName, propertyValue)");
- #raw("h = violinplot(...)");

== Description

#strong[violinplot]; affiche des distributions sous forme de violons et retourne un ou plusieurs objets graphiques #strong[violinplot];.

 Pour des donnees vectorielles, l'objet retourne conserve #strong[XData]; comme positions de groupe et #strong[YData]; comme valeurs originales. Pour une matrice, un objet est retourne par colonne.

 Avec #strong[EvaluationPoints]; et #strong[DensityValues]; sans donnees, #strong[violinplot]; trace des densites precalculees: un violon par colonne, aux positions 1, 2, ... Les deux arguments sont alors requis, et ils ne peuvent pas etre combines avec des donnees.

 Chaque violon trace une estimation de densite par noyau gaussien de ses valeurs, evaluee sur 100 points de min(y) - 3h a max(y) + 3h. La largeur de bande suit la regle de reference normale avec une echelle robuste : h \= (MAD \/ 0.6745) \* (4 \/ (3 n))^(1\/5), ou MAD est l'ecart absolu median. Si la MAD est nulle, l'etendue des donnees sert d'echelle, et des donnees constantes utilisent h \= 1.

 La page #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.violinplot.properties>)[proprietes violinplot]; liste les proprietes d'objet prises en charge.


== Exemple

Afficher des distributions groupees.

``````matlab
violinplot([1 1 1 2 2 2], [1 2 2 3 4 5]);
``````


#align(center)[#image("violinplot_1.svg")]

== Voir aussi

#nlink(<graphics:1_plots.4_data_distribution_plots.boxchart>)[boxchart];, #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.violinplot.properties>)[proprietes violinplot];.
