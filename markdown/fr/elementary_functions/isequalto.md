# isequalto

Return true if all arguments x1, x2, ... , xn are equal (same type, same dimensions, same values or NaNs).

## Syntaxe

- res = isequalto(x1, x2)
- res = isequalto(x1, x2, xn)

## Argument d'entrée

- x1 - a value
- x2 - a value
- xn - a value

## Argument de sortie

- res - a logical value

## Description

        isequalto returns true if x1 and x2 are the same type, same size and same values; otherwise, it returns false.

## Exemple

```matlab
A = eye(3, 3);
res = isequal(A, single(A))
res = isequalto(A, single(A))

```

## Voir aussi

[isequal](../elementary_functions/isequal.md), [isequaln](../elementary_functions/isequaln.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
