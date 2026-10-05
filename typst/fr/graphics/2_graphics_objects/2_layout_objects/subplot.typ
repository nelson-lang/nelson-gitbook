#import "../../nelson_help.typ": *

= subplot <graphics:2_graphics_objects.2_layout_objects.subplot>

Créer des axes en positions mosaïques.

== Syntaxe

- #raw("subplot(m, n, p)");
- #raw("subplot('mnp')");
- #raw("subplot('Position', pos)");
- #raw("ax = subplot(...)");

== Argument d'entrée

/ m: Nombre de lignes de la grille : entier scalaire positif.
/ n: Nombre de colonnes de la grille : entier scalaire positif.
/ p: Position dans la grille pour les nouveaux axes : scalaire ou vecteur.
/ pos: Position personnalisée pour les nouveaux axes : \[gauche bas largeur hauteur\].

== Argument de sortie

/ ax: Un objet graphique : type axes.

== Description

#strong[subplot(n, m, p)]; divise la figure courante en une grille à deux dimensions.

 Chacune des cases peut contenir un graphique quelconque.


== Exemples

``````matlab
f = figure();
X = linspace(-pi, pi) * 2;
Y1 = cos(X) .* exp(-2 * X);
Y2 = cos(X * 2) .* exp(-2 * X);
Y3 = cos(X * 3) .* exp(-2 * X);
Y4 = cos(X * 4) .* exp(-2 * X);

subplot(4, 1, 1)
plot(X, Y1,'b');
subplot(4, 1, 2)
plot(X, Y2, 'r');
subplot(4, 1, 3);
plot(X, Y3, 'g');
subplot(4, 1, 4);
plot(X, Y4, 'k');
``````


#align(center)[#image("subplot_1.svg")]
``````matlab
f = figure();
t = 0 : (2 * pi/100) : (2 * pi);
X = cos(t * 2) .* (2 + sin(t * 3) * 0.3);
Y = sin(t * 2) .* (2 + sin(t * 3) * 0.3);
Z = cos(t * 3) * 0.3;
subplot(2, 2, 1)
surf(peaks());
axis equal
view(3)
subplot(2, 2, 2);
plot(t, X);
subplot(2, 2, 3);
plot(t, Y);
subplot(2, 2, 4);
plot(t, Z);
``````


#align(center)[#image("subplot_2.svg")]

== Voir aussi

#nlink(<graphics:1_plots.1_line_plots.plot>)[plot];, #nlink(<graphics:2_graphics_objects.1_object_management.axes>)[axes];, #nlink(<graphics:2_graphics_objects.2_layout_objects.tiledlayout>)[tiledlayout];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
