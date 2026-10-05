#import "../../nelson_help.typ": *

= contourf <graphics:1_plots.3_contour_plots.contourf>

Trace de contours remplis d'une matrice

== Syntaxe

- #raw("contourf(Z)");
- #raw("contourf(X, Y, Z)");
- #raw("contourf(..., levels)");
- #raw("contourf(..., LineSpec)");
- #raw("contourf(ax, ...)");
- #raw("M = contourf(...)");
- #raw("[M, h] = contourf(...)");

== Argument d'entrée

/ X: Coordonnees x : vecteur ou matrice.
/ Y: Coordonnees y : vecteur ou matrice.
/ Z: Coordonnees z : matrice numerique.
/ levels: Niveaux de contours : nombre de niveaux, vecteur de niveaux ou \[k k\] pour un seul niveau.
/ LineSpec: Style et couleur de ligne.
/ ax: Axes parent.

== Argument de sortie

/ M: Matrice de contours.
/ h: Objet graphique de type contour.

== Description

#strong[contourf]; trace des bandes de contours remplies pour les valeurs de #strong[Z];. La matrice retournee correspond a la propriete #strong[ContourMatrix]; de l'objet.

 L'objet contour prend en charge les proprietes de ligne, de remplissage, de transparence, d'etiquetage et de niveaux, notamment #strong[FaceColor];, #strong[FaceAlpha];, #strong[ShowText];, #strong[LabelColor];, #strong[LabelSpacing];, #strong[LabelFormat];, #strong[TextList];, #strong[TextStep]; et #strong[ZLocation];.


== Exemples

Tracer des contours remplis.

``````matlab
figure();
[X,Y,Z] = peaks(40);
[M,h] = contourf(X,Y,Z,10);
h.FaceAlpha = 0.75;
``````

Tracer des contours remplis.

``````matlab
x = linspace(-2*pi, 2*pi, 100);
y = linspace(-2*pi, 2*pi, 100);
[X, Y] = meshgrid(x, y);
Z = sin(X) .* cos(Y);
figure;
contourf(X, Y, Z, 20);
colorbar;
title('Demo contourf');
xlabel('X');
ylabel('Y');
colormap parula;
``````


#align(center)[#image("contourf.svg")]

== Voir aussi

#nlink(<graphics:1_plots.3_contour_plots.contour>)[contour];, #nlink(<graphics:1_plots.3_contour_plots.contourc>)[contourc];, #nlink(<graphics:1_plots.3_contour_plots.contour3>)[contour3];, #nlink(<graphics:1_plots.3_contour_plots.clabel>)[clabel];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.17.0], [version initiale],
)

// Auteur: Allan CORNET
