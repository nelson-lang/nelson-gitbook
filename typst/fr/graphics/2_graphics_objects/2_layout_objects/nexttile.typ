#import "../../nelson_help.typ": *

= nexttile <graphics:2_graphics_objects.2_layout_objects.nexttile>

Créer des axes dans une disposition en mosaïque.

== Syntaxe

- #raw("ax = nexttile");
- #raw("ax = nexttile(span)");
- #raw("ax = nexttile(tilenum)");
- #raw("ax = nexttile(tilenum, span)");
- #raw("ax = nexttile(edge)");
- #raw("ax = nexttile(t, ...)");

== Argument d'entrée

/ t: Objet TiledChartLayout.
/ tilenum: Position de la tuile : indice entier positif ou chaîne de position de bord ('north', 'south', 'east', 'west').
/ span: Étendue des axes : \[r, c\] où r est le nombre de lignes et c le nombre de colonnes à couvrir.

== Argument de sortie

/ ax: Objet graphique axes.

== Description

#strong[nexttile]; crée des axes dans la prochaine tuile disponible de la disposition en mosaïque courante. Si aucune disposition n'existe, une est créée automatiquement.

 #strong[nexttile(tilenum)]; crée ou retourne les axes existants à la position de tuile spécifiée. Si la tuile sélectionnée est la tuile supérieure gauche d'axes couvrant plusieurs tuiles, ces axes sont retournés. Si la tuile sélectionnée est au milieu d'une étendue, les anciens axes sont remplacés.

 #strong[nexttile(span)]; crée des axes couvrant plusieurs tuiles, spécifiées sous la forme \[lignes, colonnes\], en utilisant la première région vide pouvant contenir l'étendue.

 #strong[nexttile(tilenum, span)]; retourne les axes existants uniquement s'ils occupent exactement la région de tuile demandée ; sinon les axes qui se chevauchent sont remplacés.

 #strong[nexttile('north')];, #strong[nexttile('south')];, #strong[nexttile('east')]; et #strong[nexttile('west')]; créent ou retournent des axes de bord d'une tuile d'épaisseur autour de la grille centrale.


== Exemple

Créer une disposition 2 par 2 et remplir les tuiles

``````matlab
t = tiledlayout(2, 2);
for k = 1:4
  ax = nexttile;
  plot(ax, rand(1, 10));
end

``````


== Voir aussi

#nlink(<graphics:2_graphics_objects.2_layout_objects.tiledlayout>)[tiledlayout];, #nlink(<graphics:2_graphics_objects.2_layout_objects.tilenum>)[tilenum];, #nlink(<graphics:2_graphics_objects.2_layout_objects.tilerowcol>)[tilerowcol];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.17.0], [version initiale],
)

// Auteur: Allan CORNET
