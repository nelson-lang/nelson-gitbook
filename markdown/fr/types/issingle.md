# issingle

Renvoie vrai si la variable var est une matrice de type single.

## Syntaxe

- res = issingle(var)

## Argument d'entrée

- var - une variable

## Argument de sortie

- res - un logique : vrai ou faux

## Description

        issingle renvoie 1 logique (vrai) si l'argument est une matrice de type single et 0 logique (faux) sinon.

## Exemples

```matlab
A = 3.6;
res = issingle(A)
```

```matlab
B = single([1 ; 3]);
res = issingle(B)
```

## Voir aussi

[isdouble](../types/isdouble.md), [single](../single/single.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
