# roty

Matrice de transformation 3x3 pour rotation autour de l'axe y

## Syntaxe

- rm = roty(angle)

## Argument d'entrée

- angle - angle en degrés : valeur scalaire.

## Argument de sortie

- rm - matrice de transformation 3x3 : matrice orthogonale à valeurs réelles.

## Description

<p>roty renvoie la matrice de transformation 3x3 correspondant à une rotation autour de l'axe y.</p>

## Bibliographie

Goldstein, H., C. Poole and J. Safko, Classical Mechanics, 3rd Edition, San Francisco: Addison Wesley, 2002, pp. 142–144.

## Exemple

```matlab
r = roty(90)
```

## Voir aussi

[rotx](../geometry/rotx.md), [rotz](../geometry/rotz.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
