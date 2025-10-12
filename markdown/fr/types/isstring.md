# isstring

Renvoie vrai si la variable var est un tableau de chaînes (string).

## Syntaxe

- res = isstring(var)

## Argument d'entrée

- var - une variable

## Argument de sortie

- res - un logique : vrai ou faux

## Description

        isstring renvoie 1 logique (vrai) si l'argument est un tableau de chaînes et 0 logique (faux) sinon.

## Exemples

```matlab
A = 3;
res = isstring(A)
```

```matlab
B = "NelSon";
res = isstring(B)
```

```matlab
C = [1 ; 3];
res = isstring(C)
```

## Voir aussi

[class](../types/class.md), [string](../string/string.md), [ischar](../types/ischar.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
