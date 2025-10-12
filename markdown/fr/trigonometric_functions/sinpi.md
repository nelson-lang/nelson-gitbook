# sinpi

Calcule précisément sin(X \* pi).

## Syntaxe

- res = sinpi(x)

## Argument d'entrée

- x - une valeur numérique

## Argument de sortie

- res - une valeur numérique

## Description

<p>
            res = sinpi(x) calcule sin(x * pi) précisément.</p>

<p>Pour les entiers impairs, sinpi(x / 2) vaut +1 ou -1.</p>

<p>Pour les entiers, sinpi(x) est exactement zéro.</p>

## Exemple

```matlab
x = [0, 1/2, 1, 3/2, 2];
r = sin(x * pi)
res = sinpi(x)
```

## Voir aussi

[sin](../trigonometric_functions/sin.md), [cospi](../trigonometric_functions/cospi.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
