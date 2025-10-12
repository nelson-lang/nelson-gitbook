# meshz

Tracé de surface en maillage (mesh) avec rideau.

## Syntaxe

- meshz(X, Y, Z)
- meshz(Z)
- meshz(Z, C)
- meshz(X, Y, Z, C)
- meshz(parent, ...)
- meshz(..., propertyName, propertyValue)
- go = meshz(...)

## Argument d'entrée

- X - Coordonnées x : vecteur ou matrice.
- Y - Coordonnées y : vecteur ou matrice.
- Z - Coordonnées z : vecteur ou matrice.
- C - Tableau de couleurs : tableau m-par-n-par-3 de triplets RGB.
- parent - Un objet graphique scalaire : conteneur parent, spécifié comme axes.
- propertyName - Une chaîne scalaire ou un vecteur ligne de caractères.
- propertyValue - Une valeur.

## Argument de sortie

- go - Un objet graphique : type surface.

## Description

<p>
            meshz crée un tracé de surface 3D avec un maillage (wireframe) au-dessus.
        </p>

<p>La fonction prend les mêmes arguments d'entrée que la fonction mesh.</p>

## Exemple

```matlab
f = figure();
[X,Y] = meshgrid(-5:.5:5);
Z = Y.*sin(X) - X.*cos(Y);
s = meshz(X,Y,Z)
```

<img src="meshz_1.svg" align="middle"/>

## Voir aussi

[mesh](../graphics/mesh.md), [meshgrid](../elementary_functions/meshgrid.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
