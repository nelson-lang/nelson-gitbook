# cos

Calcule le cosinus en radians pour chaque élément de x.

## Syntaxe

- res = cos(x)

## Argument d'entrée

- x - une valeur numérique

## Argument de sortie

- res - une valeur numérique

## Description

<p>cos calcule le cosinus en radians pour chaque élément de x.</p>

<p>La fonction cosinus est définie comme :</p>

$$\cos(x) = \frac{e^{ix} + e^{-ix}}{2}$$

<p>Pour les arguments réels, elle représente la coordonnée x sur le cercle unité.</p>

## Exemple

```matlab
A = eye(3, 3);
res = cos(A)
```

## Voir aussi

[acos](../trigonometric_functions/acos.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
