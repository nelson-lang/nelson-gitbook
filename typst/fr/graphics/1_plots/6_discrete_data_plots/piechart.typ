#import "../../nelson_help.typ": *

= piechart <graphics:1_plots.6_discrete_data_plots.piechart>

Objet graphique en secteurs.

== Syntaxe

- #raw("piechart(data)");
- #raw("piechart(data, names)");
- #raw("piechart(fig, ...)");
- #raw("piechart(..., propertyName, propertyValue)");
- #raw("p = piechart(...)");

== Argument d'entrée

/ data: Vecteur numerique des valeurs des secteurs. Les valeurs negatives, infinies et NaN sont ignorees pour l'affichage.
/ names: Tableau de chaines, chaine de caracteres ou cellule de chaines utilisee comme noms des secteurs.
/ fig: Figure parente.
/ propertyName: Nom de propriete du graphique.
/ propertyValue: Valeur assignee a la propriete nommee.

== Argument de sortie

/ p: Objet graphique piechart.

== Description

#strong[piechart(data)]; cree un objet graphique en secteurs dans la figure courante.

 L'objet expose les proprietes de donnees, etiquettes, couleurs, traits, police, legende, visibilite, disposition et ordre d'affichage. Les valeurs affichees sont recalculees quand les donnees ou les proprietes d'affichage changent.

 #strong[FaceColor]; peut valoir #strong[flat];, #strong[none]; ou une couleur RGB. #strong[FaceAlpha];, #strong[EdgeColor]; et #strong[LineWidth]; modifient le rendu des secteurs. #strong[Proportions];, #strong[CategoryCounts];, #strong[WedgeDisplayData]; et #strong[WedgeDisplayNames]; sont des proprietes derivees en lecture seule.

 Voir #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.piechart.properties>)[proprietes de piechart]; pour la liste complete des proprietes.


== Exemples

Graphique en secteurs avec etiquettes en pourcentage.

``````matlab
figure('Color', [1 1 1]);
p = piechart([1 2 3 4]);
``````


#align(center)[#image("piechart_1.svg")]
Secteurs nommes avec legende.

``````matlab
figure('Color', [1 1 1]);
p = piechart([4 3 2], ["A", "B", "C"], 'LegendVisible', 'on', ...
  'LegendTitle', 'Names', 'FaceAlpha', 0.7);
``````


#align(center)[#image("piechart_2.svg")]
Secteurs sans remplissage.

``````matlab
figure('Color', [1 1 1]);
p = piechart([3 2 1], 'FaceColor', 'none', 'EdgeColor', [0 0 0], ...
  'LineWidth', 2);
``````


#align(center)[#image("piechart_3.svg")]

== Voir aussi

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.piechart.properties>)[proprietes de piechart];, #nlink(<graphics:1_plots.6_discrete_data_plots.donutchart>)[donutchart];, #nlink(<graphics:1_plots.6_discrete_data_plots.pie>)[pie];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
