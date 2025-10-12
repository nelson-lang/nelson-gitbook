# rotx

Matrice de transformation 3x3 pour rotation autour de l'axe x

## Syntaxe

- rm = rotx(angle)

## Argument d'entrée

- angle - angle en degrés : valeur scalaire.

## Argument de sortie

- rm - matrice de transformation 3x3 : matrice orthogonale à valeurs réelles.

## Description

<p>rotx renvoie la matrice de transformation 3x3 correspondant à une rotation autour de l'axe x.</p>

## Bibliographie

Goldstein, H., C. Poole and J. Safko, Classical Mechanics, 3rd Edition, San Francisco: Addison Wesley, 2002, pp. 142–144.

## Exemple

```matlab
r = rotx(90)
```

## Voir aussi

[roty](../geometry/roty.md), [rotz](../geometry/rotz.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
