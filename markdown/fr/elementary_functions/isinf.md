# isinf

Check for Infinity entries.

## Syntaxe

- tf = isinf(M)

## Argument d'entrée

- M - a variable

## Argument de sortie

- tf - logical: result of 'isinf'.

## Description

<p>
            isnan returns a logical array which is true where elements of M are Infinity values.</p>

## Exemple

```matlab
isnan(pi)
isinf(Inf)
isinf(-Inf)
isinf(int32(3))
X = sparse([1 2 NaN 3 0 Inf 0 4]);
R = isinf(X)
```

## Voir aussi

[isnan](../elementary_functions/isnan.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
