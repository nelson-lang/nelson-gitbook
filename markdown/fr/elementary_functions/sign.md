# sign

Find the sign function of a number.

## Syntaxe

- R = sign(M)

## Argument d'entrée

- M - a variable

## Argument de sortie

- R - result of sign.

## Description

<p>
            sign find the sign function of a number.</p>

<p>-1 if the corresponding element of M is less than 0.</p>

<p>0 if the corresponding element of M equals 0.</p>

<p>1 if the corresponding element of M is greater than 0.</p>

<p>If input argument is a complex number, sign computes M ./ abs(M).</p>

## Exemple

```matlab
V = [-1 0 15 NaN Inf];
sign(V)
```

## Voir aussi

[conj](../elementary_functions/conj.md), [abs](../elementary_functions/abs.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
