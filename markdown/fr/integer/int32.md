# int32

Convertit en entier signé 32 bits.

## Syntaxe

- Y = int32(X)

## Argument d'entrée

- X - une matrice de double, single ou d'entiers.

## Argument de sortie

- Y - une matrice d'entiers 32 bits.

## Description

<p>
            int32 convertit la valeur en type entier 32 bits.</p>

<p>La valeur est arrondie à la valeur int32 la plus proche lors de la conversion. Une valeur supérieure ou inférieure à la plage pour la classe int32 est mappée vers l'une des extrémités de la plage [-2147483648, 2147483647].</p>

## Exemple

```matlab
A = [1 -2147483649 -120 127 2147483647 2147483648]
B = int32(A)
```

## Voir aussi

[intmax](../integer/intmax.md), [intmin](../integer/intmax.md), [numeric types](../interpreter/numeric_types.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
