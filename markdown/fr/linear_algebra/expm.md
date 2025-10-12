# expm

Calcule l'exponentielle matricielle d'une matrice carrée.

## Syntaxe

- res = expm(x)

## Argument d'entrée

- x - une valeur numérique : scalaire ou matrice carrée (double ou simple précision)

## Argument de sortie

- res - une valeur numérique : une matrice carrée

## Description

<p>
            expm(x) calcule l'exponentielle matricielle de x.</p>

<p>Le calcul est effectué en bloc-diagonalant d'abord x puis en appliquant une approximation de Pade sur chaque bloc.</p>

## Exemple

```matlab
A = eye(3, 3);
res = expm(A)
res = expm(A+i)
```

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
