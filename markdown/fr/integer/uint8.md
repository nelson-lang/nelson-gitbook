# uint8

Convertit en entier non signé 8 bits.

## Syntaxe

- Y = uint8(X)

## Argument d'entrée

- X - une matrice de double, single ou d'entiers.

## Argument de sortie

- Y - une matrice d'entiers non signés 8 bits.

## Description

<p>
            uint8 convertit la valeur en type entier non signé 8 bits.</p>

<p>La valeur est arrondie à la valeur uint8 la plus proche lors de la conversion. Une valeur supérieure ou inférieure à la plage pour la classe uint8 est mappée vers l'une des extrémités de la plage [0, 255].</p>

## Exemple

```matlab
A = [1 256 -120 127 -1 215]
B = uint8(A)
```

## Voir aussi

[intmax](../integer/intmax.md), [intmin](../integer/intmax.md), [numeric types](../interpreter/numeric_types.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
