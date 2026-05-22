# contourf

Trace de contours remplis d'une matrice

## 📝 Syntaxe

- contourf(Z)
- contourf(X, Y, Z)
- contourf(..., levels)
- contourf(..., LineSpec)
- contourf(ax, ...)
- M = contourf(...)
- [M, h] = contourf(...)

## 📥 Argument d'entrée

- X - Coordonnees x : vecteur ou matrice.
- Y - Coordonnees y : vecteur ou matrice.
- Z - Coordonnees z : matrice numerique.
- levels - Niveaux de contours : nombre de niveaux, vecteur de niveaux ou [k k] pour un seul niveau.
- LineSpec - Style et couleur de ligne.
- ax - Axes parent.

## 📤 Argument de sortie

- M - Matrice de contours.
- h - Objet graphique de type contour.

## 📄 Description

<b>contourf</b> trace des bandes de contours remplies pour les valeurs de <b>Z</b>. La matrice retournee correspond a la propriete <b>ContourMatrix</b> de l'objet.

L'objet contour prend en charge les proprietes de ligne, de remplissage, de transparence, d'etiquetage et de niveaux, notamment <b>FaceColor</b>, <b>FaceAlpha</b>, <b>ShowText</b>, <b>LabelColor</b>, <b>LabelSpacing</b>, <b>LabelFormat</b>, <b>TextList</b>, <b>TextStep</b> et <b>ZLocation</b>.

## 💡 Exemples

Tracer des contours remplis.

```matlab
figure();
[X,Y,Z] = peaks(40);
[M,h] = contourf(X,Y,Z,10);
h.FaceAlpha = 0.75;
```

Tracer des contours remplis.

```matlab
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
```

<img src="contourf.svg" align="middle"/>

## 🔗 Voir aussi

[contour](../graphics/contour.md), [contourc](../graphics/contourc.md), [contour3](../graphics/contour3.md), [clabel](../graphics/clabel.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.17.0  | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
