#import "../../nelson_help.typ": *

= tilenum <graphics:2_graphics_objects.2_layout_objects.tilenum>

Obtenir le numéro de tuile à partir d'indices ligne-colonne ou d'un objet graphique.

== Syntaxe

- #raw("n = tilenum(t, row, col)");
- #raw("n = tilenum(obj)");

== Argument d'entrée

/ t: Objet TiledChartLayout.
/ row: Indice de ligne : entier positif ou tableau.
/ col: Indice de colonne : entier positif ou tableau.
/ obj: Objet graphique (axes) créé par nexttile.

== Argument de sortie

/ n: Numéro de tuile : entier positif, ou NaN pour les indices hors limites ou les tuiles de bord.

== Description

#strong[tilenum(t, row, col)]; retourne le numéro de tuile pour la ligne et la colonne données dans la disposition TiledChartLayout t.

 #strong[tilenum(obj)]; retourne le numéro de tuile occupée par l'objet axes obj.

 Retourne NaN pour les indices hors limites ou pour les axes de tuile de bord.


== Exemple

Obtenir le numéro de tuile par ligne et colonne

``````matlab
t = tiledlayout(2, 3);
n = tilenum(t, 1, 2)

``````


== Voir aussi

#nlink(<graphics:2_graphics_objects.2_layout_objects.tiledlayout>)[tiledlayout];, #nlink(<graphics:2_graphics_objects.2_layout_objects.nexttile>)[nexttile];, #nlink(<graphics:2_graphics_objects.2_layout_objects.tilerowcol>)[tilerowcol];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.17.0], [version initiale],
)

// Auteur: Allan CORNET
