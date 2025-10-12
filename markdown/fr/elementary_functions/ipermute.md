# ipermute

Inverse de permute

## Syntaxe

- R = ipermute(A, order)

## Argument d'entrée

- A - an array.
- order - Dimension order: vecteur de permutation

## Argument de sortie

- R - result array rearranged with new dimension order.

## Description

        ipermute permutes the dimensions of an array (in inverse order of permute).

## Exemple

```matlab
x = [1 2 3; 4 5 6]
y = permute(x,[3 1 2])
x2 = ipermute(y,[3 1 2])
```

## Voir aussi

[permute](../elementary_functions/permute.md), [reshape](../elementary_functions/reshape.md), [transpose](../operators/transpose.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
