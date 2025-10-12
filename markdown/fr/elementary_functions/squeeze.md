# squeeze

Remove dimensions of length 1.

## Syntaxe

- B = squeeze(A)

## Argument d'entrée

- A - input array: multidimensional array

## Argument de sortie

- B - output array.

## Description

<p>
            B = squeeze(A) returns an array with the same elements as the input array A, but with dimensions of length 1 removed.</p>

## Exemple

```matlab
 A = zeros(1, 1, 3);
A(:, :, 1:3) = [1 20 3];
R = squeeze(A)
```

## Voir aussi

[reshape](../elementary_functions/reshape.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
