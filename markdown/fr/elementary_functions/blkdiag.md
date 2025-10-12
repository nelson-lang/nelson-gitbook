# blkdiag

Matrice diagonale par blocs

## Syntaxe

- R = blkdiag(M1, ... , MN)

## Argument d'entrée

- M1, ..., MN - une matrice numérique 2D

## Argument de sortie

- R - une matrice.

## Description

<p>
            R = blkdiag(M1, ... , MN) construit la matrice diagonale par blocs obtenue en alignant les matrices d'entrée M1, ... , MN le long de la diagonale de R.</p>

## Exemple

```matlab
blkdiag(magic(2), magic(3), magic(4))
```

## Voir aussi

[diag](../constructors_functions/diag.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
