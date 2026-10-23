# ellipsoid

Crée un ellipsoïde.

## 📝 Syntaxe

- [X, Y, Z] = ellipsoid(xc, yc, zc, xr, yr, zr)
- [X, Y, Z] = ellipsoid(xc, yc, zc, xr, yr, zr, n)
- ellipsoid(...)
- ellipsoid(ax, ...)

## 📥 Argument d'entrée

- xc, yc, zc - le centre de l'ellipsoïde.
- xr, yr, zr - les longueurs des demi-axes selon x, y et z.
- n - un entier positif : la résolution de la grille (par défaut 20). Le résultat est (n+1)-par-(n+1).

## 📤 Argument de sortie

- X, Y, Z - les coordonnées de la surface de l'ellipsoïde.

## 📄 Description


<b>ellipsoid</b> génère les coordonnées d'un ellipsoïde centré en <b>(xc, yc, zc)</b> avec les demi-axes <b>(xr, yr, zr)</b>. Appelée sans argument de sortie, elle trace la surface.

## 💡 Exemple



```matlab
f = figure();
ellipsoid(0, 0, 0, 3, 2, 1);
axis equal
```


## 🔗 Voir aussi

[sphere](../../../graphics/1_plots/7_surfaces_volumes_polygons/sphere.md), [surf](../../../graphics/1_plots/7_surfaces_volumes_polygons/surf.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Version initiale. |

<!--
## 👤 Auteur

Allan CORNET
-->
