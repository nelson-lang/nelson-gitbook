# contour3

Tracé de contours 3D d'une matrice

## Syntaxe

- contour3(Z)
- contour3(X, Y, Z)
- contour3(..., levels)
- contour3(..., LineSpec)
- contour3(ax, ...)
- M = contour3(...)
- [M, h] = contour3(...)

## Argument d'entrée

- X - Coordonnées x : vecteur ou matrice.
- Y - Coordonnées y : vecteur ou matrice.
- Z - Coordonnées z : vecteur ou matrice.
- levels - Niveaux de contours : scalaire ou vecteur.
- LineSpec - Style et couleur de ligne
- ax - Un objet graphique scalaire : conteneur parent, spécifié comme axes.

## Argument de sortie

- M - Matrice de contours.
- h - Un objet graphique : type contour.

## Description

<p>
            contour3(Z) génère un tracé de contours 3D illustrant les isolignes de la matrice Z, où Z représente les hauteurs sur le plan x-y.</p>

<p>
            Les coordonnées x et y dans le plan correspondent respectivement aux indices de colonnes et de lignes de Z.</p>

<p>Pour spécifier les coordonnées x et y pour les valeurs de Z, utilisez contour3(X,Y,Z).</p>

## Exemple

```matlab
f = figure();
[X,Y,Z] = sphere(50);
[M, C ]= contour3(X,Y,Z);
C.LineWidth = 3;
```

<img src="contour3_1.svg" align="middle"/>

## Voir aussi

[contour](../graphics/contour.md), [surf](../graphics/surf.md), [mesh](../graphics/mesh.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.3.0   | version initiale |

## Auteur

Allan CORNET
