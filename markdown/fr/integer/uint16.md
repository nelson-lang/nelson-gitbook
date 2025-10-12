# uint16

Convertit en entier non signé 16 bits.

## Syntaxe

- Y = uint16(X)

## Argument d'entrée

- X - une matrice de double, single ou d'entiers.

## Argument de sortie

- Y - une matrice d'entiers non signés 16 bits.

## Description

<p>
            uint16 convertit la valeur en type entier non signé 16 bits.</p>

<p>La valeur est arrondie à la valeur uint16 la plus proche lors de la conversion. Une valeur supérieure ou inférieure à la plage pour la classe uint16 est mappée vers l'une des extrémités de la plage [0, 65535].</p>

## Exemple

```matlab
A = [1 -32769 -120 127 32767 32768]
B = uint16(A)
```

## Voir aussi

[intmax](../integer/intmax.md), [intmin](../integer/intmax.md), [numeric types](../interpreter/numeric_types.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
