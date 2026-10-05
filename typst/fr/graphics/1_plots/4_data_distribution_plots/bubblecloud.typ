#import "../../nelson_help.typ": *

= bubblecloud <graphics:1_plots.4_data_distribution_plots.bubblecloud>

Afficher des bulles etiquetees dans une disposition en nuage.

== Syntaxe

- #raw("bubblecloud(sizes)");
- #raw("bubblecloud(sizes, labels)");
- #raw("bubblecloud(sizes, labels, groups)");
- #raw("bubblecloud(tbl, sizeVariable)");
- #raw("bubblecloud(tbl, sizeVariable, labelVariable, groupVariable)");
- #raw("bubblecloud(..., propertyName, propertyValue)");
- #raw("h = bubblecloud(...)");

== Description

#strong[bubblecloud]; cree un objet graphique #strong[bubblecloud]; a partir de tailles de bulles numeriques. Les etiquettes et les groupes peuvent etre fournis sous forme de vecteurs ayant le meme nombre d'elements que les tailles.

 Une table peut etre utilisee en indiquant les variables de taille, d'etiquette et de groupe.

 L'objet retourne expose les donnees avec #strong[SizeData];, #strong[LabelData]; et #strong[GroupData];. Les proprietes d'apparence prises en charge incluent #strong[Title];, #strong[LegendTitle];, #strong[FaceColor]; et #strong[EdgeColor];.

 La page #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.bubblecloud.properties>)[proprietes de bubblecloud]; liste les proprietes d'objet prises en charge.


== Exemples

Afficher des bulles etiquetees.

``````matlab
bubblecloud([10 20 30], {'A','B','C'}, {'G1','G1','G2'}, 'Title', 'Cloud');
``````


#align(center)[#image("bubblecloud_1.svg")]
Creer un nuage de bulles a partir de variables de table.

``````matlab
t = table([5; 10; 20], {'A'; 'B'; 'C'}, {'G1'; 'G1'; 'G2'}, ...
  'VariableNames', {'Size', 'Label', 'Group'});
bubblecloud(t, 'Size', 'Label', 'Group');
``````


#align(center)[#image("bubblecloud_2.svg")]

== Voir aussi

#nlink(<graphics:1_plots.4_data_distribution_plots.bubblechart>)[bubblechart];, #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.bubblecloud.properties>)[proprietes de bubblecloud];, #nlink(<graphics:1_plots.4_data_distribution_plots.wordcloud>)[wordcloud];.
