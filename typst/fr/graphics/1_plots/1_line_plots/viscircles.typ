#import "../../nelson_help.typ": *

= viscircles <graphics:1_plots.1_line_plots.viscircles>

Trace des cercles.

== Syntaxe

- #raw("viscircles(centers, radii)");
- #raw("viscircles(ax, centers, radii)");
- #raw("viscircles(..., 'Color', c)");
- #raw("viscircles(..., 'LineWidth', w)");
- #raw("h = viscircles(...)");

== Argument d'entrée

/ centers: une matrice N par 2 des centres des cercles \[x y\].
/ radii: un scalaire ou un vecteur de N rayons.
/ ax: les axes cibles.

== Argument de sortie

/ h: l'objet groupe contenant les cercles tracés.

== Description

#strong[viscircles]; trace des cercles aux #strong[centers]; et #strong[radii]; donnés sur les axes. La couleur (rouge par défaut) et l'épaisseur de trait se règlent avec les arguments nom-valeur #strong['Color']; et #strong['LineWidth'];.


== Exemple

``````matlab
f = figure();
axis equal
viscircles([0 0; 2 1], [1; 0.5], 'Color', 'b');
``````


== Voir aussi

#nlink(<graphics:1_plots.1_line_plots.line>)[line];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Version initiale.],
)

// Auteur: Allan CORNET
