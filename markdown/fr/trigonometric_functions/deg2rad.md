# deg2rad

Convertit un angle de degrés en radians.

## Syntaxe

- r = deg2rad(d)

## Argument d'entrée

- d - une valeur numérique (double ou simple)

## Argument de sortie

- r - une valeur numérique

## Description

        d = deg2rad(r) convertit les unités d'angle de degrés en radians pour chaque élément de r.

## Exemple

```matlab
D = 64.7;
R = deg2rad(D);
radEarth = 6371;
dist = radEarth * R
```

## Voir aussi

[rad2deg](../trigonometric_functions/rad2deg.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
