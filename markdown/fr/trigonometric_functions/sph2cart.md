# sph2cart

Transforme des coordonnées sphériques en coordonnées cartésiennes.

## Syntaxe

- [x, y, z] = sph2cart(azimuth, elevation, r)

## Argument d'entrée

- azimuth - une valeur numérique : Angle d'azimut.
- elevation - une valeur numérique : Angle d'élévation.
- r - une valeur numérique : Rayon.

## Argument de sortie

- x - une valeur numérique (double ou simple réel) : Coordonnées cartésiennes
- y - une valeur numérique (double ou simple réel) : Coordonnées cartésiennes
- z - une valeur numérique (double ou simple réel) : Coordonnées cartésiennes

## Description

        sph2cart transforms Cartesian to spherical coordinates.

## Exemple

```matlab
azimut = [0.7854, 0.7854, -0.7854, -0.7854; 2.3562, 2.3562, -2.3562, -2.3562];
elevation = [0.6155, -0.6155, 0.6155, -0.6155; 0.6155, -0.6155, 0.6155, -0.6155];
radius = 1.7321 * ones(2, 4);
[x, y, z] = sph2cart(azimut, elevation, radius)
```

## Voir aussi

[cart2sph](../trigonometric_functions/cart2sph.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
