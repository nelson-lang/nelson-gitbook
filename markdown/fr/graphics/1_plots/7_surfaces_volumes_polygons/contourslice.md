# contourslice

Afficher des lignes de contour sur des coupes de volume.

## 📝 Syntaxe

- contourslice(V, xs, ys, zs)
- contourslice(V, XI, YI, ZI)
- contourslice(X, Y, Z, V, xs, ys, zs)
- contourslice(X, Y, Z, V, XI, YI, ZI)
- contourslice(..., levels)
- contourslice(..., method)
- contourslice(parent, ...)
- h = contourslice(...)

## 📄 Description

<b>contourslice</b> calcule des lignes de contour sur les coupes demandees et retourne un vecteur colonne d'objets patch.

L'entree <b>levels</b> peut etre un nombre scalaire de niveaux de contour ou un vecteur de valeurs de contour. Une valeur de coupe egale a <b>NaN</b> selectionne toutes les coupes dans cette direction.

Lorsque <b>XI</b>, <b>YI</b> et <b>ZI</b> sont des matrices, les contours sont traces sur la surface definie par ces matrices.

L'entree optionnelle <b>method</b> peut valoir <b>'nearest'</b>, <b>'linear'</b> ou <b>'cubic'</b>. La methode par defaut pour les coupes alignees sur les axes est <b>'nearest'</b>; la methode par defaut pour les coupes de surface est <b>'linear'</b>.

## 💡 Exemples

Afficher des contours dans plusieurs plans de coupe.

```matlab
[X, Y, Z] = meshgrid(-2:.2:2);
V = X .* exp(-X.^2 - Y.^2 - Z.^2);
xslice = [-1.2, 0.8, 2];
yslice = [];
zslice = [];
contourslice(X, Y, Z, V, xslice, yslice, zslice);
view(3);
grid on;
```

<img src="contourslice_1.svg" align="middle"/>
Specifier les niveaux de contour et ajouter une barre de couleurs.

```matlab
[X, Y, Z] = meshgrid(-2:.2:2);
V = X .* exp(-X.^2 - Y.^2 - Z.^2);
xslice = [-1.2, 0.8, 2];
levels = -0.2:0.01:0.4;
contourslice(X, Y, Z, V, xslice, [], [], levels);
colorbar;
view(3);
grid on;
```

<img src="contourslice_2.svg" align="middle"/>
Afficher des contours sur une coupe de surface.

```matlab
[X, Y, Z] = meshgrid(-5:0.2:5);
V = X .* exp(-X.^2 - Y.^2 - Z.^2);
[xsurf, ysurf] = meshgrid(-2:0.2:2);
zsurf = xsurf.^2 - ysurf.^2;
contourslice(X, Y, Z, V, xsurf, ysurf, zsurf, 20);
view(3);
grid on;
```

<img src="contourslice_3.svg" align="middle"/>

## 🔗 Voir aussi

[slice](../../../graphics/1_plots/7_surfaces_volumes_polygons/slice.md), [contour](../../../graphics/1_plots/3_contour_plots/contour.md).
