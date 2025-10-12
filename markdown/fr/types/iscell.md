# iscell

Renvoie vrai si la variable var est un tableau de cellules.

## Syntaxe

- res = iscell(var)

## Argument d'entrée

- var - une variable

## Argument de sortie

- res - un logique : vrai ou faux

## Description

        iscell renvoie 1 logique (vrai) si l'argument est un tableau de cellules et 0 logique (faux) sinon.

## Exemples

```matlab
A = 3;
res = iscell(A)
```

```matlab
B = {'NelSon', 3, true};
res = iscell(B)
```

## Voir aussi

[class](../types/class.md), [isstruct](../integer/isstruct.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
