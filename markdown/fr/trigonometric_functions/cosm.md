# cosm

Calcule le cosinus matriciel d'une matrice carrée.

## Syntaxe

- res = cosm(x)

## Argument d'entrée

- x - une valeur numérique : scalaire ou matrice carrée

## Argument de sortie

- res - une valeur numérique : une matrice carrée

## Description

        cosm(x) calcule le cosinus matriciel de x.

## Exemple

```matlab
A = eye(3, 3);
res = cosm(A)
A = [1, 2; 3, 4];
res = cosm(A)
```

## Voir aussi

[cos](../trigonometric_functions/cos.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
