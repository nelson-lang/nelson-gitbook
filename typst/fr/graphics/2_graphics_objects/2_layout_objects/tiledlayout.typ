#import "../../nelson_help.typ": *

= tiledlayout <graphics:2_graphics_objects.2_layout_objects.tiledlayout>

Créer une disposition en mosaïque.

== Syntaxe

- #raw("t = tiledlayout");
- #raw("t = tiledlayout(m, n)");
- #raw("t = tiledlayout(arrangement)");
- #raw("t = tiledlayout(parent, ...)");
- #raw("t = tiledlayout(..., propertyName, propertyValue)");

== Argument d'entrée

/ m: Nombre de lignes de tuiles : entier positif.
/ n: Nombre de colonnes de tuiles : entier positif.
/ arrangement: 'flow', 'vertical' ou 'horizontal' : mode de disposition automatique.
/ parent: Poignée de la figure parente.
/ propertyName: Nom de la propriété : 'TileSpacing', 'Padding', 'TileIndexing' ou autre propriété de disposition.
/ propertyValue: Valeur de la propriété correspondant au nom de la propriété.

== Argument de sortie

/ t: Objet graphique TiledChartLayout.

== Description

#strong[tiledlayout]; crée une disposition en mosaïque dans la figure courante pour afficher plusieurs tracés dans une grille.

 #strong[tiledlayout]; sans argument d'entrée crée une disposition de type flux.

 #strong[tiledlayout(m, n)]; crée une disposition avec m lignes et n colonnes de tuiles.

 #strong[tiledlayout('flow')]; crée une disposition qui ajuste automatiquement la grille au fur et à mesure que des axes sont ajoutés. #strong[tiledlayout('vertical')]; empile les axes de haut en bas, et #strong[tiledlayout('horizontal')]; les empile de gauche à droite.

 Utilisez #strong[nexttile]; pour créer des axes dans la disposition.

 Voir #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.tiledlayout.properties>)[proprietes de tiledlayout]; pour la liste complete des proprietes.


== Exemple

Disposition en mosaïque 2 par 2

``````matlab
t = tiledlayout(2, 2);
ax1 = nexttile;
plot(ax1, 1:10, (1:10).^2);
ax2 = nexttile;
plot(ax2, 1:10, sqrt(1:10));
t.TileSpacing = 'compact';

``````


#align(center)[#image("tiledlayout.svg")]

== Voir aussi

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.tiledlayout.properties>)[proprietes de tiledlayout];, #nlink(<graphics:2_graphics_objects.2_layout_objects.nexttile>)[nexttile];, #nlink(<graphics:2_graphics_objects.2_layout_objects.tilenum>)[tilenum];, #nlink(<graphics:2_graphics_objects.2_layout_objects.tilerowcol>)[tilerowcol];, #nlink(<graphics:2_graphics_objects.2_layout_objects.subplot>)[subplot];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.17.0], [version initiale],
)

// Auteur: Allan CORNET
