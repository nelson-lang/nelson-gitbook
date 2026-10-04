# ribbon

Graphique en ruban.

## 📝 Syntaxe

- ribbon(Z)
- ribbon(Y, Z)
- ribbon(Y, Z, width)
- ribbon(ax, ...)
- s = ribbon(...)

## 📥 Argument d'entrée

- Z - Coordonnées z : vecteur ou matrice.
- Y - Coordonnées y : vecteur ou matrice.
- width - Largeur du ruban.
- ax - Valeur scalaire d'objet graphique : conteneur parent, spécifié comme axes.

## 📤 Argument de sortie

- s - Vecteur d'objets surface.

## 📄 Description

<b>ribbon(Z)</b> trace un graphique en ruban 3D basé sur la matrice Z, avec les valeurs de Y définissant l'axe des ordonnées du graphique.

<b>ribbon(Y, Z)</b> trace un graphique en ruban 3D basé sur la matrice Y, avec les valeurs de Z définissant l'axe des z du graphique.

<b>s = ribbon(...)</b> retourne un vecteur d'objets surface.

Remarque : Y et Z doivent avoir la même taille.

## 💡 Exemple

```matlab
f = figure();
Y = peaks(25);
ribbon(Y)

```

<img src="ribbon_1.svg" align="middle"/>

## 🔗 Voir aussi

[surf](../../../graphics/1_plots/7_surfaces_volumes_polygons/surf.md), [meshgrid](../../../elementary_functions/meshgrid.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
