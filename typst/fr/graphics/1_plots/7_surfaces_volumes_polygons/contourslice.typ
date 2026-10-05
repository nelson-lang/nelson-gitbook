#import "../../nelson_help.typ": *

= contourslice <graphics:1_plots.7_surfaces_volumes_polygons.contourslice>

Afficher des lignes de contour sur des coupes de volume.

== Syntaxe

- #raw("contourslice(V, xs, ys, zs)");
- #raw("contourslice(V, XI, YI, ZI)");
- #raw("contourslice(X, Y, Z, V, xs, ys, zs)");
- #raw("contourslice(X, Y, Z, V, XI, YI, ZI)");
- #raw("contourslice(..., levels)");
- #raw("contourslice(..., method)");
- #raw("contourslice(parent, ...)");
- #raw("h = contourslice(...)");

== Description

#strong[contourslice]; calcule des lignes de contour sur les coupes demandees et retourne un vecteur colonne d'objets patch.

 L'entree #strong[levels]; peut etre un nombre scalaire de niveaux de contour ou un vecteur de valeurs de contour. Une valeur de coupe egale a #strong[NaN]; selectionne toutes les coupes dans cette direction.

 Lorsque #strong[XI];, #strong[YI]; et #strong[ZI]; sont des matrices, les contours sont traces sur la surface definie par ces matrices.

 L'entree optionnelle #strong[method]; peut valoir #strong['nearest'];, #strong['linear']; ou #strong['cubic'];. La methode par defaut pour les coupes alignees sur les axes est #strong['nearest'];; la methode par defaut pour les coupes de surface est #strong['linear'];.


== Exemples

Afficher des contours dans plusieurs plans de coupe.

``````matlab
[X, Y, Z] = meshgrid(-2:.2:2);
V = X .* exp(-X.^2 - Y.^2 - Z.^2);
xslice = [-1.2, 0.8, 2];
yslice = [];
zslice = [];
contourslice(X, Y, Z, V, xslice, yslice, zslice);
view(3);
grid on;
``````


#align(center)[#image("contourslice_1.svg")]
Specifier les niveaux de contour et ajouter une barre de couleurs.

``````matlab
[X, Y, Z] = meshgrid(-2:.2:2);
V = X .* exp(-X.^2 - Y.^2 - Z.^2);
xslice = [-1.2, 0.8, 2];
levels = -0.2:0.01:0.4;
contourslice(X, Y, Z, V, xslice, [], [], levels);
colorbar;
view(3);
grid on;
``````


#align(center)[#image("contourslice_2.svg")]
Afficher des contours sur une coupe de surface.

``````matlab
[X, Y, Z] = meshgrid(-5:0.2:5);
V = X .* exp(-X.^2 - Y.^2 - Z.^2);
[xsurf, ysurf] = meshgrid(-2:0.2:2);
zsurf = xsurf.^2 - ysurf.^2;
contourslice(X, Y, Z, V, xsurf, ysurf, zsurf, 20);
view(3);
grid on;
``````


#align(center)[#image("contourslice_3.svg")]

== Voir aussi

#nlink(<graphics:1_plots.7_surfaces_volumes_polygons.slice>)[slice];, #nlink(<graphics:1_plots.3_contour_plots.contour>)[contour];.
