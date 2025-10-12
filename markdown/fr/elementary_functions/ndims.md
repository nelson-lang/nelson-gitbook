# ndims

Number of dimensions of an array.

## Syntaxe

- n = ndims(M)

## Argument d'entrée

- M - a variable

## Argument de sortie

- n - a integer value: Number of dimensions of M.

## Description

<p>
            n = ndims(M) return the number of dimension of the array M.</p>

<p>
                M is greater than or equal to 2.</p>

## Exemple

```matlab
ndims(ones(3, 0))
ndims(3)
ndims([1 2 3 4 5])
ndims(ones(3, 4, 5))
```

## Voir aussi

[size](../elementary_functions/size.md), [length](../elementary_functions/length.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
