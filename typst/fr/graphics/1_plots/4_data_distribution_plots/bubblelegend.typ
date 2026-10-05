#import "../../nelson_help.typ": *

= bubblelegend <graphics:1_plots.4_data_distribution_plots.bubblelegend>

Ajoute une legende de taille de bulles.

== Syntaxe

- #raw("bubblelegend(title)");
- #raw("bubblelegend(ax, title)");
- #raw("bubblelegend(..., propertyName, propertyValue)");
- #raw("bl = bubblelegend(...)");

== Argument d'entrée

/ title: Texte du titre de la legende.
/ propertyName, propertyValue: Paires nom-valeur pour l'objet bubblelegend.

== Argument de sortie

/ bl: Objet graphique de legende de bulles.

== Description

#strong[bubblelegend]; cree un objet graphique #strong[bubblelegend];.

 Voir #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.bubblelegend.properties>)[proprietes de bubblelegend]; pour la liste complete des proprietes.


== Exemple

Ajouter une legende pour les tailles de bulles.

``````matlab
figure();
bubblechart(1:3, [2 4 6], [10 100 1000]);
bubblesize([5 30]);
bubblelegend('Population', 'Location', 'eastoutside');
``````


#align(center)[#image("bubblelegend_1.svg")]

== Voir aussi

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.bubblelegend.properties>)[proprietes de bubblelegend];, #nlink(<graphics:1_plots.4_data_distribution_plots.bubblechart>)[bubblechart];, #nlink(<graphics:1_plots.4_data_distribution_plots.bubblesize>)[bubblesize];.

// Auteur: Allan CORNET
