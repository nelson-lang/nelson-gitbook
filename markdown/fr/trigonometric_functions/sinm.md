# sinm

Calcule le sinus matriciel d'une matrice carrée.

## Syntaxe

- res = sinm(x)

## Argument d'entrée

- x - une valeur numérique : scalaire ou matrice carrée

## Argument de sortie

- res - une valeur numérique : une matrice carrée

## Description

        sinm(x) calcule le sinus matriciel de x.

## Exemple

```matlab
A = eye(3, 3);
res = sinm(A)
A = [1, 2; 3, 4];
res = sinm(A)
```

## Voir aussi

[sin](../trigonometric_functions/sin.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
