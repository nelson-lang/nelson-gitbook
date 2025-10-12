# logm

Calcule le logarithme matriciel d'une matrice carrée.

## Syntaxe

- res = logm(x)

## Argument d'entrée

- x - une valeur numérique : scalaire ou matrice carrée (double ou simple précision)

## Argument de sortie

- res - une valeur numérique : une matrice carrée

## Description

<p>
            logm(x) calcule le logarithme matriciel de x.</p>

<p>Le calcul est effectué en bloc-diagonalant d'abord x puis en appliquant une approximation de Pade sur chaque bloc.</p>

## Exemple

```matlab
A = eye(3, 3);
res = logm(A)
res = logm(A+i)
```

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
