#import "../../nelson_help.typ": *

= donutchart <graphics:1_plots.6_discrete_data_plots.donutchart>

Objet graphique en anneau.

== Syntaxe

- #raw("donutchart(data)");
- #raw("donutchart(data, names)");
- #raw("donutchart(fig, ...)");
- #raw("donutchart(..., propertyName, propertyValue)");
- #raw("d = donutchart(...)");

== Argument d'entrée

/ data: Vecteur numerique des valeurs des secteurs.
/ names: Tableau de chaines, chaine de caracteres ou cellule de chaines utilisee comme noms des secteurs.
/ fig: Figure parente.
/ propertyName: Nom de propriete du graphique.
/ propertyValue: Valeur assignee a la propriete nommee.

== Argument de sortie

/ d: Objet graphique donutchart.

== Description

#strong[donutchart(data)]; cree un objet graphique en anneau dans la figure courante.

 #strong[InnerRadius]; controle le rayon du trou comme fraction du rayon externe. #strong[CenterLabel]; affiche un texte au centre de l'anneau.

 Voir #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.donutchart.properties>)[proprietes de donutchart]; pour la liste complete des proprietes.


== Exemples

Graphique en anneau avec texte central.

``````matlab
figure('Color', [1 1 1]);
d = donutchart([4 3 2], ["A", "B", "C"], 'CenterLabel', '9');
``````


#align(center)[#image("donutchart_1.svg")]
Rayon interne et couleurs personnalises.

``````matlab
figure('Color', [1 1 1]);
d = donutchart([5 4 3 2], 'InnerRadius', 0.35, 'FaceAlpha', 0.75, ...
  'ColorOrder', [0.8 0.2 0.2; 0.2 0.7 0.3; 0.2 0.4 0.8]);
``````


#align(center)[#image("donutchart_2.svg")]

== Voir aussi

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.donutchart.properties>)[proprietes de donutchart];, #nlink(<graphics:1_plots.6_discrete_data_plots.piechart>)[piechart];, #nlink(<graphics:1_plots.6_discrete_data_plots.pie>)[pie];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
