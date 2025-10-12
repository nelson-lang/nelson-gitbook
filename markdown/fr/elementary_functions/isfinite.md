# isfinite

Check for finite entries.

## Syntaxe

- tf = isfinite(M)

## Argument d'entrée

- M - a variable

## Argument de sortie

- tf - logical: result of 'isfinite'.

## Description

<p>
            isfinite returns a logical array which is true where elements of M are finite values.</p>

## Exemple

```matlab
isfinite(pi)
isfinite(Inf)
isfinite(-Inf)
isfinite(int32(3))
X = sparse([1 2 NaN 3 0 Inf 0 4]);
R = isfinite(X)
```

## Voir aussi

[isnan](../elementary_functions/isnan.md), [isinf](../elementary_functions/isinf.md), [allfinite](../elementary_functions/allfinite.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
