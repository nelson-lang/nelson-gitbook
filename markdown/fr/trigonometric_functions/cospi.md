# cospi

Calcule précisément cos(X \* pi).

## Syntaxe

- res = cospi(x)

## Argument d'entrée

- x - une valeur numérique

## Argument de sortie

- res - une valeur numérique

## Description

<p>
            res = cospi(x) calcule cos(x * pi) précisément.</p>

<p>Pour les entiers, cospi(x) vaut +1 ou -1.</p>

<p>Pour les entiers impairs, cospi(x / 2) est exactement zéro.</p>

## Exemple

```matlab
x = [0, 1/2, 1, 3/2, 2];
r = cos(x * pi)
res = cospi(x)
```

## Voir aussi

[cos](../trigonometric_functions/cos.md), [sinpi](../trigonometric_functions/sinpi.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
