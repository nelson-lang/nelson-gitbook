# tan

Calcule la tangente en radians pour chaque élément de x.

## Syntaxe

- res = tan(x)

## Argument d'entrée

- x - une valeur numérique

## Argument de sortie

- res - une valeur numérique

## Description

<p>tan calcule la tangente en radians pour chaque élément de x.</p>

<p>La fonction tangente est définie comme :</p>

$$\tan(x) = \frac{\sin(x)}{\cos(x)} = \frac{e^{ix} - e^{-ix}}{i(e^{ix} + e^{-ix})}$$

<p>Elle a des asymptotes verticales à</p>

$$x = \frac{\pi}{2} + n\pi$$

<p>pour les entiers n.</p>

## Exemple

```matlab
A = eye(3, 3);
res = tan(A)
```

## Voir aussi

[atan](../trigonometric_functions/atan.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
