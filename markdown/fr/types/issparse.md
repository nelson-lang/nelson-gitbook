# issparse

Renvoie vrai si la variable var est un tableau creux (sparse).

## Syntaxe

- res = issparse(var)

## Argument d'entrée

- var - une variable

## Argument de sortie

- res - un logique : vrai ou faux

## Description

        issparse renvoie 1 logique (vrai) si l'argument est un tableau creux et 0 logique (faux) sinon.

## Exemples

```matlab
A = 1;
res = issparse(A)
```

```matlab
B = sparse(1);
res = issparse(B)
```

## Voir aussi

[sparse](../sparse/sparse.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
