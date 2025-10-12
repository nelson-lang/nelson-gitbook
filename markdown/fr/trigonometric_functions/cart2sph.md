# cart2sph

Transforme des coordonnées cartésiennes en coordonnées sphériques.

## Syntaxe

- [azimuth, elevation, r] = cart2sph(x, y, z)

## Argument d'entrée

- x - une valeur numérique (double ou simple réel) : Coordonnées cartésiennes
- y - une valeur numérique (double ou simple réel) : Coordonnées cartésiennes
- z - une valeur numérique (double ou simple réel) : Coordonnées cartésiennes

## Argument de sortie

- azimuth - une valeur numérique : Angle d'azimut.
- elevation - une valeur numérique : Angle d'élévation.
- r - a numeric value: Radius.

## Description

        cart2sph transforms Cartesian to spherical coordinates.

## Exemple

```matlab
x = [1 1 1 1; -1 -1 -1 -1];
y = [1 1 -1 -1; 1 1 -1 -1];
z = [1 -1 1 -1; 1 -1 1 -1];
[az, el, r] = cart2sph(x, y, z)
```

## Voir aussi

[sph2cart](../trigonometric_functions/sph2cart.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
