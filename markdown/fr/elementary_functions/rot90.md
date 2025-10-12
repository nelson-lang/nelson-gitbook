# rot90

Rotate array 90 degrees.

## Syntaxe

- B = rot90(A)
- B = rot90(A, k)

## Argument d'entrée

- A - an array
- k - an positive integer value: Rotation constant.

## Argument de sortie

- B - rotated array.

## Description

<p>
            B = rot90(A, k) rotates array A counter clockwise by k * 90 degrees, with k is an integer value.</p>

<p>Consider flip function to flip arrays in any dimension.</p>

## Exemple

```matlab
x = eye(3, 2);
y = rot90(x, 0)
y = rot90(x, 1)
y = rot90(x, 2)
y = rot90(x, 3)
```

## Voir aussi

[flipud](../elementary_functions/flipud.md), [fliplr](../elementary_functions/fliplr.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
