# sqrtm

Calcule la racine carrée matricielle d'une matrice carrée.

## Syntaxe

- res = sqrtm(x)

## Argument d'entrée

- x - une valeur numérique : scalaire ou matrice carrée (double ou simple précision)

## Argument de sortie

- res - une valeur numérique : une matrice carrée

## Description

<p>
            sqrtm(x) calcule la racine carrée matricielle de x.</p>

## Exemple

```matlab
A = eye(3, 3);
res = sqrtm(A)
res = sqrtm(A+i)
```

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
