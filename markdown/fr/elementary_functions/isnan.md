# isnan

Check for Not a Number entries.

## Syntaxe

- tf = isnan(M)

## Argument d'entrée

- M - a variable

## Argument de sortie

- tf - logical: result of 'isnan'.

## Description

<p>
            isnan returns a logical array which is true where elements of M are "Not a Number" values.</p>

## Exemple

```matlab
isnan(pi)
isnan(NaN)
isnan(int32(3))
X = sparse([1 2 NaN 3 0 NaN 0 4]);
R = isnan(X)
```

## Voir aussi

[isinf](../elementary_functions/isinf.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
